---
title: Service-to-service Authentication
original-url: https://docs.microsoftcommunitytraining.com/docs/service-to-service-authentication
author: nikotha
ms.author: nikotha
description: Community Training APIs support Service to Service (S2S) authentication to allow any external service to call the APIs without requiring a user to explicitly login to any MCT instance. 
ms.prod: learning-azure
---

# Service-to-service Authentication

Community Training APIs support service-to-service (S2S) authentication to allow any external service to call the APIs without requiring a user to explicitly sign in to any CT instance.

Perform the following steps to enable any external service to call Community Training APIs:

## Step 1:  Register Service Application

Follow the steps mentioned below to register the service app:

1. Sign in to the Azure portal.
2. If you have access to multiple tenants, use the **Directory + subscription filter** ![Directory, subscription filter](../media/image%28368%29.png) in the top menu, to select the tenant in which you want to register an application.

    > [!NOTE]
    > The service application to be registered must be created in the same Azure tenant as that of the CT instance.

3. Search for, and select, **Azure Active Directory**.
4. Under Manage, select **App registrations > New registration**.
5. When the Register an application page appears, enter your application's registration information:
    - In the **Name** section, enter a meaningful application name that will be displayed to users of the app (for example, **CT service**).
    - Leave **Supported account types** on the default setting of **Accounts** in this organizational directory only.
6. Select **Register** to create the application.
7. Select **Expose an API**, and:
    - On **Application ID URI**, select **Set**. Keep the suggested value, for example **api://webapi-clientid**
    - Select **Save**.
![s2s picture 1.png](../media/s2s%20picture%201.png)

8. Select Manifest, and:

    - Edit the manifest by locating **appRoles**.
    - The role definition is provided in the JSON code snippet below.
    - Set **allowedMemberTypes** to **Application**.
    - Enter your appRoles **displayName** (as an example, **S2SAppRole** is used as the displayName for the below code snippet).
    - Ensure that each role definition in this manifest has a different valid GUID for the **id** property.
    - To create a unique GUID run the command **new-guid** from PowerShell.
    - Enter the **role value** as set in the **Register Service application** step above. (e.g. **S2SAppRole**)
    - Map the respective values properly and save the manifest.

> [!NOTE]
> The contents of appRoles should be the following (the id should be unique GUID)
>
>```HTTP
>{…
>    "appRoles": [
>       {
>            "allowedMemberTypes": [
>                "Application"
>            ],
>            "description": "Apps in this role can consume the web api.",
>            "displayName": "S2SAppRole",
>            "id": "Your guid created above",
>            "isEnabled": true,
>            "lang": null,
>            "origin": "Application",
>            "value": "S2SAppRole"
>        }
>    ],
> ...}
>```

Save the following values to be used later:

- **Tenant ID** – Copy the TenantID from the ActiveDirectory overview page.
- **Tenant Name** – Similarly copy the TenantName from overview page (e.g. {anyName}.onmicrosoft.com).

Let's take a look at the Overview page:

![s2s page overview.png](../media/s2s%20page%20overview.png)

**Application ID URI** – Copy the value from the overview page of the registered application after completing the **Expose an API** step as mentioned above (e.g. `api://<webapi-clientid>`)

Let's take a look at the overview page of the registered application:

![s2s registered app overview.png](../media/s2s%20registered%20app%20overview.png)

**Value** –  Role that was created while editing the manifest in the above steps. For example, S2SAppRole.

## Step 2: Register Client Application(s)

For each of the applications that would call the Community Training API’s, follow the steps under **Method 1** or **Method 2** below, based on the type of application that will call the APIs.

### Method 1:  If the API calling service is hosted in Azure 

Refer to [List of the services](/azure/active-directory/managed-identities-azure-resources/services-support-managed-identities) that are supported.

The steps mentioned below are for Azure functions. Similar steps can be followed for other services.

1. Follow the steps mentioned to [Create a new Azure Function App](/azure/azure-functions/functions-create-function-app-portal). 
2. Go to the function app created above and select the **Identity** section on the left navigation pane. Then do the following:  
    - Switch the status to **On**. 
    - Select **Save**.
    - Copy the value of **Object ID** shown on the screen that follows. You'll need it later.

        ![Object ID](../media/image%28329%29.png)

    - Follow the steps mentioned in [this article](/azure/app-service/overview-managed-identity?tabs=dotnet#obtain-tokens-for-azure-resources) to generate a token to call the APIs. A resource parameter is required to generate the token. For this parameter, provide the value of the **Application ID URI** as set in the **Register Service application** step (for example, **api://{*Id*}**)

> [!NOTE]
> Any coding language can be used based on the runtime stack selected while creating the Function App.

### Method 2: Create a client using [Client Credentials Flow](/azure/active-directory/develop/v2-oauth2-client-creds-grant-flow)

Follow the steps mentioned below to register the client app.

1. Sign in to the Azure portal.
2. If you have access to multiple tenants, use the **Directory + subscription filter**  ![Directory & subscription filter](../media/image%28368%29.png) in the top menu to select the tenant in which you want to register an application.
3. Search for, and select, **Azure Active Directory.**
4. Under **Manage**, select **App registrations > New registration.**
    - In the **Name** section, enter a meaningful application name that will be displayed to users of the app, for example, **S2S-client**.
    - In the **Supported account types** section, select **Accounts in this organizational directory only ({tenant name}).**
    - Select **Register** to create the application.
5. On the app **Overview** page, find the **Application (client) ID** value and record it for later use.
6. From the Certificates & secrets page, in **Client secrets**, select **New client secret:**
    - Enter a **Key description** (such as **instance app secret**).
    - Select a **Key duration** of either **1 year, 2 years**, or **Never Expires.**
    - When you select **Add**. the key value will be displayd. Copy and save the value in a safe location.
    - You'll need this key later to configure the project in Visual Studio. This key value will not be displayed again, and won't be retrievable again, so record it as soon as it is visible from the Azure portal.
7. In the list of pages for the app, select **API permissions.**:
    - Select **Add a permission**.
    - Ensure that the **My APIs** tab is selected.
    - Select the API created in the previous step (For instance, the CT service created in the **Register Service application** step).
    - In the Application permissions section, ensure that the right permissions are checked (for example, the S2SAppRole created in the **Register Service application** step).
    - Select **Add permissions**.
8. At this stage, permissions are assigned correctly but the client app doesn't allow interaction. Select the **Grant/revoke admin consent for {tenant}** button, and then select **Yes** when you are asked if you want to grant consent for the requested permissions to all accounts in the tenant. You need to be an Azure AD tenant admin to do this.

> [!NOTE]
>
> - Refer to this [**article**](/azure/active-directory/develop/v2-oauth2-client-creds-grant-flow) to generate tokens for calling APIs.
>
> ```HTTP
>POST /{tenant}/oauth2/v2.0/token HTTP/1.1     //Line breaks for clarity
>Host: login.microsoftonline.com
>Content-Type: application/x-www-form-urlencoded
>client_id=<The application ID that's assigned to your app>
>&scope=https://graph.microsoft.com/.default
>&client_secret=sampleCredentials
>&grant_type=client_credentials
>```
>
> - The value passed for the **scope** parameter in this request should be the resource identifier (application ID URI) of the resource you want, affixed with the `.default` suffix `api://webapi-clientid/.default`. For the Microsoft Graph example, the value is `https://graph.microsoft.com/.default`.

## Step 3: Configure the Azure App Service

1. Go to the resource group created as part of the Community Training deployment.
2. Under the list of resources, go to the App Service resource.
    > [!WARNING]
    > The name of this resource would be the same name that was provided as the website name at the time of deployment.  
    > There is another App Service resource that is created for the function app. The name of this resource would usually have “-fa-” in the name. This should *not* be selected.
3. After going to the App Service resource, select the **Configuration** section on the left.
4. Select **New application setting**.
5. For **Name**, add **ServiceAuthEnabled**, and for **Value**, add **true**. Select **OK**.
    ![ServiceAuthEnabled](../media/image%28330%29.png)
6. Similarly add the following values for Configuration. Select **Save** after adding all these values and restart the App Service:
   1. **ServiceAuthAudience**: Application ID URI created in **Register Service application** step.
   2. **ServiceAuthTenantName**: Tenant name retrieved in **Register Service application** step.
   3. **ServiceAuthTenantId**: Tenant ID retrieved in the **Register Service application** step.
   4. **ServiceObjectIds**: This is required only if the Client type is the type set in **Method 1** above. Enter the Object ID retrieved above. If multiple clients are created of this type, enter all of them here, separated by a semi-colon. (ObjectId_1;ObjectId_2…). This is client objectId from Step 2 under Method 1.
   5. **ServiceApplicationIds**: This is required only if the Client type is of type **Method 2** above. Enter the Application ID retrieved above. If multiple clients are created of this type, enter all of them here, separated by a semi-colon. (ApplicationId_1;ApplicationId_2…). This is the client application ID from Method 2 under Step 2.
   6. **ServiceAuthRole**: This is required only if the Client type is of type 2. Enter the role value as created in the manifest in the **Register Service application** step above (the **S2SAppRole**).

    > [!WARNING]
    > While making service authentications calls, add a new header with **key: ClientType and value: Service**.

The client(s) created above should now be able to call the Community Training APIs. Add the token(s) generated above to the [**Rest APIs**](../rest-api-management/api-documentation.md) exposed by the platform.
