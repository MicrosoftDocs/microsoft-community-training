---
title: Configure login identity for the platform
original-url: https://docs.microsoftcommunitytraining.com/docs/configure-login-social-work-school-account
author: nikotha
ms.author: nikotha
description: Microsoft Community Training platform provides three types of login.
ms.prod: learning-azure
zone_pivot_groups: "AD-Deployments-Methods"
---

# Configure login identity for the platform

## Prerequisite

Please follow [**installation article**](../../infrastructure-management/install-your-platform-instance/detailed-step-by-step-installation-guide.md) to Deploy your CT instance. In the step “**Set up your Login type**”, select the suitable identity type.

![Login Identity types](../../media/LoginIdentity1.png)

and follow the below documentation to configure login identity.

## Configure login identity

Microsoft Community Training platform provides two types of login:

1. Social email-based login via your Microsoft, Google or Facebook account
2. Microsoft Work or School account

> [!NOTE]
> Please note this article is in continuation of the [**installation article**](../../infrastructure-management/install-your-platform-instance/detailed-step-by-step-installation-guide.md).

In this article, we will walk you through on how to configure login identity for the platform.

## Work or School Account based authentication

### **Option 1** - Run AAD script to Configure Work or School account for your training portal by following the instructions below

#### Step 1 - Login to Azure portal

Use an existing subscription for login to portal

#### Step 2 - Create Azure AD application

**Pre-requisite:**
The Community Training portal requires Azure Active Directory application creation and registration. To successfully run the AAD creation script, the following permissions are needed:

* Tenant - AAD app creator
* Subscription - Owner

**Further Steps:**

1. Open **Cloud Shell** in your Azure portal

1. Run the following steps in a Cloud Shell instance using the PowerShell environment.
    1. Download the AAD app creation script using following command: `wget -q https://raw.githubusercontent.com/MicrosoftDocs/microsoft-community-training/live/microsoft-community-training/media/aad_app_creation.ps1 -O ./aad_app_creation.ps1`

    1. By default, the file is downloaded to your home directory. Navigate to the home directory with following command: **cd**

    1. Run the AAD script downloaded in step 1: **./aad_app_creation.ps1**

    The script asks for the following two inputs:

      * Training Portal’s Website Name:  Training portal’s website name. For example: If training portal URL is <https://contosolearning.azurefd.net/> , you need to enter “contosolearning”

      * Azure AD’s Tenant Domain Name: Azure AD’s tenant domain name. For example: contoso.onmicrosoft.com

The AAD script takes about two minutes to run and outputs four values on screen: Client ID, Client Secret, Tenant Id, and Tenant name. Make a note of these values as they will be needed in next step. If someone else ran the script, ask them to share this output.
A new app is created. If an app already exists with the same name, the script will delete the existing app and create a new app.

### **Option 2** - Follow the Manual steps to Configure a Work or School account for your training portal by following the instructions below.

#### Step 1 - Setup your Azure AD

You can create a new Azure Active Directory tenant or use an existing one based on your organization requirement.

1. Create a new Azure Active Directory tenant and copy the tenant name required later as **Tenant Name**. If you already have an existing Azure AD, use the same and copy the tenant name required later as **Tenant Name**. For example, if the default domain for your Azure AD tenant is **contoso.onmicrosoft.com**, then enter **contoso**.
2. Go to the **Show diagnostics** section on the right and copy the tenant ID required later as **Tenant ID**.

#### Step 2 - Create an Azure AD application

1. Create a new Azure AD application by following [**this article**](/azure/active-directory/develop/quickstart-register-app). You only need to follow the section titled **Register an application**. Please ensure you set the Redirect URIs as per below:

    **Redirect URIs**

    * Set to type "Web"
    * Add following to Redirect URIs:
        * **`https://name.azurefd.net/signin-azureAD`**,
        * **`https://name.azurewebsites.net/signin-azureAD`** and
        * **`https://name-staging.azurewebsites.net/signin-azureAD`** where **"name"** corresponds to your website name.
        :::image type="content" source="../../media/Redirect URIs.png" alt-text="Manual AAD Setup - Authentication.":::

1. Select **Expose an API** from the left menu of your application.
![Manual AAD Setup - Overview.](../../media/ManualAADSetup2.png)

1. Select "Add a scope". Ensure that the auto-populated value of *Application ID URI* is of the form "api://{ClientID}"
![Manual AAD Setup - Expose an API.](../../media/ManualAADSetup3a.png)

1. Select **Save and continue**.
1. Enter the value "access_as_user" under Scope name.
1. Select Admins and users under 'Who can consent?'.
1. Populate the remaining values. These values appear on the login screen (unless global consent is granted by admin)
    ![Manual AAD Setup - add Application URI.](../../media/ManualAADSetup3.png)
1. Obtain Client ID and Client Secret:

    * Copy the value of Application ID: this is Client ID
    * Select **Certificates & Secrets** from the left menu.
    * Select on New client secret.
    ![Manual AAD Setup - add client secret.](../../media/ManualAADSetup4.png)
    * Enter the description and expiry time of the secret (recommended to select maximum allowed time for expiry) and click on Save button. A value would be shown. Save this Client secret value.
    :::image type="content" source="../../media/Obtain clientsecret value.PNG" alt-text="Image showing how to obtain Client Secret value.":::

1. Note the values and follow the [**installation article**](../../infrastructure-management/install-your-platform-instance/detailed-step-by-step-installation-guide.md) to complete the deployment using the retained values as below.

    ![Enter clientId, secret,tenantId, and Name values.](../../media/LoginIdentity6.png)

### Multi-Tenant support for Azure Active Directory based Authentication

CT supports login via multiple tenants for AAD authentication. This can be done during AAD set up ([**Configurations on the Training Platform**](../../settings/configurations-on-the-training-platform.md#steps-to-set-the-configurations-on-the-platform)). Follow this documentation to reach App configuration section from your [**Azure portal**](https://www.portal.azure.com/).

#### Steps to enable multi-tenant login for an AAD based instance

1. Log in to your [**Azure portal**](https://www.portal.azure.com/)
1. Navigate to [**Configurations on the Training Platform**](../../settings/configurations-on-the-training-platform.md#steps-to-set-the-configurations-on-the-platform)
1. Search for **idp:AzureADExternalAuthTenantIds**.
    <!--
    *For New Deployments:
        * If you are running AAD script while       [**Configuring login identity for the platform**](#work-or-school-account-based-authentication) to create new deployment then give the Tenant Id as ‘**common**’ at the time of deployment in place of original Tenant ID that you received after running the script.
        *If you are following manual steps while [**Configuring login identity for the platform**](#option-2---follow-the-manual-steps-to-configure-work-or-school-account-for-your-training-portal-by-following-the-instructions-below) to create new deployment then provide the Tenant ID as ‘common’ in the “Set up your login type” window instead of the Tenant ID from your Azure AD.
      * For Existing deployments:
    -->
    * List the tenantIDs to grant access separated by a semicolon.
  
        :::image type="content" source="../../media/multiaadsetup.png" alt-text="Add Tenant IDs.":::

    * If you want to grant access to all AAD tenants, then set the value as ‘’ (blank) replacing the existing tenant id (we suggest you keep a copy of your original Tenant ID value as a reference). Select ‘Ok’.

1. Whilst in the Configurations section, search for **idp:AzureADExternalAuthTenant** and note the Tenant name.
1. Search for **idp:AzureADExternalAuthClientId** and note Client ID.
1. Navigate to your tenant (tenant name from step 4) where your AAD exists, select **App registrations** and search for application which corresponds to client id from step 5.

    :::image type="content" source="../../media/MultitenantAAD2.png" alt-text="Register multiple tenant applications.":::

1. Select the application and navigate to ‘Authentication’ then select ‘Accounts in any organizational directory (Any Azure AD directory - Multitenant)’ under Supported account types and **Save** your changes.

    :::image type="content" source="../../media/MultitenantAAD3.png" alt-text="Support for multi tenant authentication.":::

1. For first time login using multiple tenants, admin of those tenants needs to approve the client ID of the MCT application by using URL, in below url replace the placeholder with clientID from step 5.

    ```URL
    https://login.microsoftonline.com/common/adminconsent?client_id=<client_ID_of_your_application >

    ```

## Social account or email based authentication

You can configure a social account for your training portal by following the instructions below:  

### Step 1 - Setup your Azure AD B2C

You can create a new Azure AD B2C tenant or use an existing one based on your organization requirement.

1. Login to [**Azure portal**](https://portal.azure.com/).

1. Create a new [**Azure Active Directory B2C**](/azure/active-directory-b2c/tutorial-create-tenant)  tenant.

1. Link the Azure Active Directory B2C tenant just created to your Azure subscription.  

### Step 2 - Create Azure AD B2C application

Here are the steps an create on Azure AD B2C tenant and link it to your training portal instance:

1. Create a new Azure AD B2C application by following [**this article**](/azure/active-directory-b2c/tutorial-register-applications). Please ensure application properties are set as following:
    1. Set *Web app / Web API* to "Yes"
    1. Set *Allow implicit flow* to "No"
    1. Add the following to **Reply URL**
        1. "https://*name*.azurefd.net/signin-b2c"
        1. "https://*name*.azurewebsites.net/signin-b2c"
        1. "https://*name*-staging.azurewebsites.net/signin-b2c"
    where "name" corresponds to your website name.

    1. If you are setting up **Password reset flow**, then add following to **Reply URL**
        1. "https://*name*.azurefd.net/signin-b2c-pwd"
        1. "https://*name*.azurewebsites.net/signin-b2c-pwd"
        1. "https://*name*-staging.azurewebsites.net/signin-b2c-pwd"  
    where "name" corresponds to your website name.
1. Copy the Application ID value to use later as the **Client ID**.
    :::image type="content" source="../../media/cliendIDB2C.png" alt-text="WHere to find the client applicaiton ID.":::
1. In your Application, under Manage, go to **Certificates & Secrets** and click on **Generate Key**.
1. Click on **Save** and the app key will appear. Copy the value to be required later for **Client Secret**.
    :::image type="content" source="../../media/cliendsecretB2C.png" alt-text="Where to find the client secret for B2C.":::
1. Go to Azure Active Directory from the left menu of your Azure portal, click on Domain Names and copy the tenant name under Name to be req#uired later for **Tenant Name**. For example, if the default domain for your Azure AD tenant is **contoso.onmicrosoft.com**, then enter **contoso**.
1. Refer to [**this article**](/azure/active-directory-b2c/tutorial-create-user-flows) to create a **signing flow** (a sign-up and sign-in user flow) and a **password reset flow** (for local account).
    * Select Email Addresses, Given Name, Identity Provider and Surname in Application claims.
    * Application claims should be same as following screenshot
    ![Application Claims Login Identity.](../../media/LoginIdentity8.png)
    * Don’t select any Sign-up attributes.
    ![User Attributes.](../../media/LoginIdentity9.png)
    * Copy the user-flow(s) name for use later (These will be required during CT platform installation).

    > [!NOTE]
    > If you are setting up the **Password reset flow** on an existing deployment with Azure AD B2C authentication, refer to [Steps to enable multi-tenant login for an AAD based instance](#steps-to-enable-multi-tenant-login-for-an-aad-based-instance).
    >

#### Setting Password Reset Flow for an Existing Deployment

1. Set Userflow Name as **pwd_reset** (Step #1 in Create Flow using steps in [**this article**](/azure/active-directory-b2c/tutorial-create-user-flows)
1. Add the following URLs in the **Reply URL** section,
    * `https://*name*.azurefd.net/signin-b2c-pwd`
    * `https://*name*.azurewebsites.net/signin-b2c-pwd`
    * `https://*name*-staging.azurewebsites.net/signin-b2c-pwd` where "name" corresponds to your website name.
1. Open **App Service** and add the following configurations with the value as **B2C_1_pwd_reset**:
    * AzureADB2CPasswordResetPolicy
    * idp:AzureADB2CPasswordResetPolicy

![App Services](../../media/image%28355%29.png)

1. Follow the [**installation article**](../../infrastructure-management/install-your-platform-instance/detailed-step-by-step-installation-guide.md) to complete the Deployment by configuring obtained values as per the below screenshot:

    ![Set up Community Training redirection.](../../media/LoginIdentity11.png)

### Step 3 - Configure your Identity provider

Here are the steps to create policies based on the Identity Provider:

1. **Configure the identity provider** – based on your chosen provider such as [**Microsoft**](/azure/active-directory-b2c/active-directory-b2c-setup-msa-app), [**Google**](/azure/active-directory-b2c/active-directory-b2c-setup-goog-app) and [**Facebook**](/azure/active-directory-b2c/active-directory-b2c-setup-fb-app).

1. **Configure your Local Account** - You can configure a local account for your training portal by following the instructions below:

    1. Navigate to the Azure AD B2C tenant.
    1. Under Policies select User Flow and click on the required User Flow from the populated list.
    1. Under Settings, select Identity Providers and check whether the configuration matches exactly as below.

        ![Configure your local account.](../../media/image%28360%29.png)

    1. In the same window, select **Application Claims** and check the configuration matches exactly as below.

        ![Application Claims Local Account.](../../media/4.jpg)

    1. Select **User Attributes** and ensure no options are selected.
    1. Restart the training portal App service. ![Restart the App Service.](../../media/LoginIdentity14.png)

    1. Once the app successfully restarts, verify users can login using a local account.
