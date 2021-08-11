---
title: Service to Service Authentication
original-url: https://docs.microsoftcommunitytraining.com/docs/service-to-service-authentication
author: nikotha
ms.author: nikotha
description: Microsoft Community Training APIs support Service to Service (S2S) authentication to allow any external service to call the APIs without requiring a user to explicitly login to any MCT instance. 
ms.prod: azure
---

# Service to Service Authentication

Microsoft Community Training APIs support Service to Service (S2S) authentication to allow any external service to call the APIs without requiring a user to explicitly login to any MCT instance.

Please follow the following steps to enable any external service to call Microsoft Community Training APIs:

## Step 1:  Register Service Application

Follow the steps mentioned below to Register the Service app.
Register the service app:

1. Sign in to the Azure portal.
2. If you have access to multiple tenants, use the **Directory + subscription filter** ![Directory, subscription filter](../media/image%28368%29.png) in the top menu to select the tenant in which you want to register an application.

    > [!NOTE]
    > The Service Application to be registered must be created in the same Azure tenant as that of concerned MCT instance.

3. Search for and select Azure Active Directory.
4. Under Manage, select App registrations > New registration.
5. When the Register an application page appears, enter your application's registration information:
    - In the Name section, enter a meaningful application name that will be displayed to users of the app (e.g. MCT service).
    - Leave Supported account types on the default setting of Accounts in this organizational directory only.
6. Select Register to create the application.
7. Select the Expose an API section, and:
    - On Application ID URI, click on Set. Keep the suggested value, **for example api://webapi-clientid**
    - Click Save
![s2s picture 1.png](../media/s2s%20picture%201.png)

8. Select the Manifest section, and:

    - Edit the manifest by locating the “appRoles”. 
    - The role definition is provided in the JSON code snippet below.
    - Enter “allowedMemberTypes” to “Application”.
    - Enter your appRoles “displayName” (e.g. "S2SAppRole" used as displayName for the below code snippet)
    - Each role definition in this manifest must have a different valid Guid for the "id" property.
    - To create a unique Guid run the command “new-guid” from PowerShell.
    - Enter the role “value” as created in “Register Service application” step above. (e.g. "S2SAppRole")
    - Map the respective values properly and save the manifest.

> [!NOTE]
> The content of appRoles should be the following (the id should be unique Guid)
>
>```
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
- **Tenant Name** – Similarly copy the TenantName from overview page.
(e.g. {anyName}.onmicrosoft.com)

The Overview page looks like:

![s2s page overview.png](../media/s2s%20page%20overview.png)

**Application ID URI** – Copy the value from the overview page of registered application after completing **“Expose an API”** step as mentioned above (e.g. `api://<webapi-clientid>`)

The overview page of registered application looks like:

![s2s registered app overview.png](../media/s2s%20registered%20app%20overview.png)

**Value** – (e.g., S2SAppRole) Role that was created while editing the manifest in the above steps.

## Step 2: Register Client Application(s)

For each of the applications which would call the Microsoft Community Training API’s, follow the steps under **Approach 1** or **Approach 2** below based on the type of application which would call the APIs.

### Approach 1:  If the API calling service is hosted in Azure ([List of the services](/azure/active-directory/managed-identities-azure-resources/services-support-managed-identities))

Steps mentioned below are for Azure function, similar steps can be followed for other services.

1. Follow the steps mentioned in [this document](/azure/azure-functions/functions-create-function-app-portal) to Create a new Azure Function App.  
2. Go the function app created above and click on the “Identity” section on the left.  
    1. Switch the status to “on”. Click on “Save”
    2. Copy the value of “Object Id” shown on the screen thereafter. It will be required later.

        ![Object Id](../media/image%28329%29.png)

    3. Follow the steps mentioned in [this document](/azure/app-service/overview-managed-identity?tabs=dotnet#obtain-tokens-for-azure-resources) to generate a token to call the APIs. A resource parameter is required to generate the token. For this parameter, provide the value of the Application ID URI as created in “Register Service application” step. (e.g. api://{*Id*})

> [!NOTE]
> Any coding language can be used based on the runtime stack selected while creating the Function App.

### Approach 2: Alternatively, creating a client by using [Client Credentials Flow](/azure/active-directory/develop/v2-oauth2-client-creds-grant-flow)

Follow the steps mentioned below to Register the Client app.

1. Sign in to the Azure portal.
2. If you have access to multiple tenants, use the **Directory + subscription filter**  ![Directory & subscription filter](../media/image%28368%29.png) in the top menu to select the tenant in which you want to register an application.
3. Search for and select **Azure Active Directory.**
4. Under **Manage**, select **App registrations > New registration.**
    - In the **Name** section, enter a meaningful application name that will be displayed to users of the app, for example S2S-client.
    - In the **Supported account types** section, select **Accounts in this organizational directory only ({tenant name}).**
    - Select **Register** to create the application.
5. On the app **Overview** page, find the **Application (client) ID** value and record it for later.
6. From the Certificates & secrets page, in the Client secrets section, choose **New client secret:**
    - Type a key description (of instance app secret),
    - Select a key duration of either In **1 year, In 2 years**, or **Never Expires.**
    - When you press the **Add** button, the key value will be displayed, copy, and save the value in a safe location.
    - You'll need this key later to configure the project in Visual Studio. This key value will not be displayed again, nor retrievable by any other means, so record it as soon as it is visible from the Azure portal.
7. In the list of pages for the app, select **API permissions.**
    - Click the **Add a permission** button and then,
    - Ensure that the **My APIs** tab is selected.
    - Select the API created in the previous step (e.g. MCT service created in the “Register Service application” step).
    - In the Application permissions section, ensure that the right permissions are checked (e.g.  S2SAppRole created in “**Register Service application**” step)
    - Select the **Add permissions** button.
8. At this stage permissions are assigned correctly but the client app does not allow interaction. Therefore, no consent can be presented via a UI and accepted to use the service app. Click the **Grant/revoke admin consent for {tenant}** button, and then select **Yes** when you are asked if you want to grant consent for the requested permissions for all account in the tenant. You need to be an Azure AD tenant admin to do this.

> [!NOTE]
>
> - [This link](/azure/active-directory/develop/v2-oauth2-client-creds-grant-flow#get-a-token) can be referred for generating tokens to call APIs.
> - The value passed for the “scope” parameter in the request should be the resource identifier (application ID URI) of the resource you want, affixed with the “/.default” suffix. e.g. api://webapi-clientid/.default.

## Step 3: Configure the Azure App Service

1. Go the resource group created as part of the Microsoft Community Training deployment
2. Under the list of resources, go the “App Service” resource
    > [!WARNING]
    > The name of this resource would be the same name which was provided as the Website name at the time of deployment creation.  
    > There is another App Service resource which is created for the function app. (The name of this resource would usually have “-fa-” in the name). This should NOT be selected.
3. After going to the App Service resource, Click on the “Configuration” section on the left.
4. Click on “New application setting”
5. Under “Name”, add **ServiceAuthEnabled**, and under “Value”, add **true**. Click “OK”.
    ![ServiceAuthEnabled](../media/image%28330%29.png)
6. Similarly add the following values in the Configuration. Click on “Save” after adding all these values and restart the App Service.
   1. **ServiceAuthAudience**: Application ID URI created in “Register Service application” step
   2. **ServiceAuthTenantName**: Tenant name retrieved in “Register Service application” step
   3. **ServiceAuthTenantId**: Tenant Id retrieved in “Register Service application” step
   4. **ServiceObjectIds**: This is required only if the Client type is of type **Approach 1** above. Enter the Object Id retrieved above. If multiple clients are created of this type, enter all of them here, separated by a semi-colon. (ObjectId_1;ObjectId_2…)
   5. **ServiceApplicationIds**: This is required only if the Client type is of type **Approach 2** above. Enter the Application Id retrieved above. If multiple clients are created of this type, enter all of them here, separated by a semi-colon. (ApplicationId_1;ApplicationId_2…)
   6. **ServiceAuthRole**: This is required only if the Client type is of type 2.
 b) Enter the role value as created in the manifest in the “**Register Service application**” step above. (e.g. "S2SAppRole").

> [!WARNING]
> While making Service auth calls, add a new header with key: ClientType and value: Service.

The client(s) created above should now be able to call the Microsoft Community Training APIs. Add the token(s) generated above to the [**Rest APIs**](../rest-api-management/2_api-documentation.md) exposed by the platform.
