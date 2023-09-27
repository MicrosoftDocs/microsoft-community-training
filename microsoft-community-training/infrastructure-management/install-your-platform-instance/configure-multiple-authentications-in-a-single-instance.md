---
title: Configure multiple authentications in a single instance
original-url: https://docs.microsoftcommunitytraining.com/docs/configure-multi-mode-authentication-for-same-deployment
author: sambati
ms.author: sambati
description: Setup multiple authentication modes in a single instance of Microsoft Community Training platform.
ms.prod: learning-azure
---

# Configure multiple authentications in a single instance

Many organizations might want to support multiple authentication options to be available for their learners. Microsoft Community Training now supports adding more than one authentication option for a single platform instance.

To be able to configure multiple authentications to your instance you need to first create [**AD B2C**](https://learn.microsoft.com/azure/active-directory-b2c/overview) tenant and register an application. If your instance is already setup to use [**social login**](configure-login-social-work-school-account.md#social-account-or-email-based-authentication) via ADB2C then you can proceed configuring your tenant to add [**phone login**](#add-phone-based-login-to-existing-social-account-login-instance) and [**work email login**](#add-work-email-based-authentication-to-existing-social-account-login-instance) support to your instance.

## Add Phone-based login to existing Social Account login Instance

If your instance is already setup to accept [**social login**](configure-login-social-work-school-account.md#social-account-or-email-based-authentication) via AD B2C, below are the steps to configure your AD B2C tenant to be able to support MCT platform's Phone authentication along side your social account login.

### Prerequisites

Create a [**MCT support ticket**](https://sangamhelpdesk.microsoftcrmportals.com) requesting for creation of new ClientID and ClientSecret in your [**Key-Vault**](../../analytics/custom-reports/database-schema.md#accessing-key-vault) to be used while configuring New OpenID connect provider.

* Also mention your [**AD B2C Tenant name**](https://learn.microsoft.com/en-us/azure/active-directory-b2c/tenant-management-read-tenant-name#get-your-tenant-name) in description while creating support ticket.

* After receiving confirmation (typical wait time is around 2 business days) from our support team you can proceed to next steps adding phone based login.

### Steps to support Phone Auth along side your social account Login

1. Login to your [**Azure portal**](https://portal.azure.com/)
2. Switch to the directory which contains your ADB2C Tenant.
3. In search bar type ‘Azure ADB2C’ and Navigate to your application from ‘App Registration’.

    :::image type="content" source="../../media/ADB2C_appsearch.png" alt-text="appsearchphoneauth":::

4. Inside your application, navigate to ‘Authentication’ and make sure you have “Access tokens (used for implicit flows)” checked under Implicit grant and hybrid flows.

    :::image type="content" source="../../media/ADB2C_AuthTokens.PNG" alt-text="adb2cauthtokens":::

5. Navigate back to your ADB2C resource, under Manage section, in ‘Identity Providers’ click on ‘New Open ID Connect Provider’ and provide following values in Configure custom IDP window and click save.

    |Value |Description |
    | --- | --- |
    | Name | This name will appear in login page, provide user friendly name, example: Phone Auth |
    | Metadata URL | `https://phoneverification.azurefd.net/.well-known/openid-configuration` |
    | Client ID | Copy ‘PhoneExternalAuthClientID’ value from [**Key-Vault**](../../analytics/custom-reports/database-schema.md#accessing-key-vault) and paste it here. |
    | Client Secret | Copy ‘PhoneExternalAuthClientSecret’ value from [**Key-Vault**](../../analytics/custom-reports/database-schema.md#accessing-key-vault) and paste it here |
    | Scope | Enter `openid offline_access` |
    | Response Type | From dropdown select `code` |
    | Response mode | From dropdown select `form_post` |
    | Domain hint | Optional, leave blank |
    | User ID | Enter `sub` |
    | Display Name | Enter `sub` |
    | Given Name | Enter `given_name` |
    | Surname | Enter `family_name` |
    | Email | Enter `email` |

    :::image type="content" source="../../media/Config customIDP.PNG" alt-text="custom IDP config":::

6. Navigate back to your ADB2C resource, under Policies, click on User Flows and click on your instance's “Sign up and Sign in” User flow.

    :::image type="content" source="../../media/UserFlow.png" alt-text="user flow in custom idp":::

7. Inside your instance’s Sign-up and Sign-in user flow, click on ‘Application Claims’ and ensure you have ‘Display Name’, ‘Email Address’, ‘User’s Object ID’ selected and saved.

    :::image type="content" source="../../media/MultiAuth_AppClaims.PNG" alt-text="multi auth app claims":::

8. While in your Sign-up Sign-in user flow, navigate to ‘Identity Providers’ and select on newly configured OpenID Connect under Custom Identity Providers and click save.

    :::image type="content" source="../../media/FinalIDP.png" alt-text="IDP final image":::

9. Now in the login page of your instance, you should see an option that enables users to login through their Phone number alongside option to login via social account. Users can now choose any one of the login methods for registering.

## Add Work email based Authentication to existing Social Account login instance

If your instance is already setup to accept [**social login**](configure-login-social-work-school-account.md#social-account-or-email-based-authentication) via AD B2C, below are the steps to add Azure Active Directory/Work email based authentication along side social account login by configuring your existing Azure ADB2C tenant.

1. Login to your [**Azure portal**](https://portal.azure.com/)
2. Note down your [**AD B2C tenant’s name**](https://learn.microsoft.com/en-us/azure/active-directory-b2c/tenant-management-read-tenant-name#get-your-tenant-name) i.e., for example, if the default domain for your Azure AD B2C tenant is contoso.onmicrosoft.com, then contoso is your tenant’s name.
3. Create an Azure Active Directory App (can be from different tenant) [**configure login identity for the platform by creating Azure AD application**](configure-login-social-work-school-account.md#step-2---create-azure-ad-application), copy your Client ID, Client Secret and [**Tenant ID**](https://learn.microsoft.com/azure/active-directory/fundamentals/active-directory-how-to-find-tenant).
4. While in your AAD app, Click on ‘Authentication’ to add your Reply URL `https://<adb2c_tenant_name>.b2clogin.com/<adb2c_tenant_name>.onmicrosoft.com/oauth2/authresp` replace <adb2c_tenant_name> with your AD B2C tenant name from Step 2.

    :::image type="content" source="../../media/AddingredirectURLinAAD_app.png" alt-text="add redirect url":::

5. Now switch to your AD B2C tenant, under Manage section, in ‘Identity Providers’ click on ‘New Open ID Connect Provider’ and provide following values in Configure custom IDP window and click save.

    |Value|Description|
    | --- | --- |
    | Name | This name will appear in UI on login page, provide user friendly name example: Active Directory Login |
    | Metadata URL | `https://login.microsoftonline.com/<tenant_id>/v2.0/.well-known/openid-configuration` Replace <tenant_id> with Tenant ID of AAD from Step3 (for AAD application) |
    | Client ID | Paste the ClientId that you copied from Step3 (for AAD application) |
    | Client Secret | Paste the ClientSecret that you copied from Step3 (for AAD application) |
    | Scope | Enter `email openid profile User.Read` |
    | Response Type | From dropdown select `code` |
    | Response mode | From dropdown select `form_post` |
    | Domain hint | Optional, leave blank. |
    | User ID | Enter `sub`  |
    | Display Name | Enter `name` |
    | Given Name | Enter `given_name` |
    | Surname | Enter `family_name` |
    | Email | Enter `email` |

    :::image type="content" source="../../media/AADidpedit.png" alt-text="AAD Identity provider edit":::

6. Navigate back to your ADB2C resource, under Policies, click on User Flows and click on your instance's “Sign up and Sign in” User flow.

    :::image type="content" source="../../media/UserFlow.png" alt-text="user flow in custom idp aad":::

7. Inside your instance’s Sign-up and Sign-in user flow, click on ‘Application Claims’ and ensure you have ‘Display Name’, ‘Email Address’, ‘User’s Object ID’ selected and saved.

    :::image type="content" source="../../media/MultiAuth_AppClaims.PNG" alt-text="multi auth app claims aad":::

8. While in your Sign-up Sign-in user flow, navigate to ‘Identity Providers’ and select on newly configured OpenID Connect under Custom Identity Providers and click save.

    :::image type="content" source="../../media/FinalIDP.png" alt-text="IDP final image aad":::

9. Now in the login page of your instance, you should see an option that enables users to login through their work email (Azure AD email) alongside Social Account login.

## Add Work/Social Account login to Phone-based login instance

As multiple modes of authentication in MCT can only be achieved via AD B2C, you need to first [**create an Azure AD B2C tenant**](configure-login-social-work-school-account.md#social-account-or-email-based-authentication) to support social login and then configure your B2C tenant to support MCT's phone authentication and work email login. Below are the detailed steps

1. [**Configure login identity for the platform by creating an Azure AD B2C tenant**](configure-login-social-work-school-account.md#social-account-or-email-based-authentication). In the document skip point 7 in Step2 as you are not deploying new instance, proceed to Step3 if you need to add local account login support to your instance.

2. Copy and note ClientID, ClientSecret, TenantName, sign-up and sign-in user flow name while configuring ADB2C tenant.

3. Navigate to your Application’s [**Key-Vault**](../../analytics/custom-reports/database-schema.md#accessing-key-vault):

    * Click on “AzureADB2CExternalAuthClientSecret” in Secrets under settings
        :::image type="content" source="../../media/Multiauth_adb2csecret.png" alt-text="adb2c secret1":::
    * Create a new secret version
        :::image type="content" source="../../media/Multiauth_adb2csecret2.png" alt-text="adb2c secret":::
    * Paste the ADB2C application ClientSecret that you previously copied as Value and click save.
        :::image type="content" source="../../media/Multiauth_adb2csecret3.png" alt-text="adb2c secret3":::
    * Now, with in AzureADB2CExternalAuthClientSecret, click on newly created secret version and copy Secret Identifier
        :::image type="content" source="../../media/Multiauth_adb2csecret4.png" alt-text="secret adb2c":::

        :::image type="content" source="../../media/Multiauth_adb2csecret5.png" alt-text="secret adb2c final":::

4. Navigate to [**configurations on the Training Platform**](../../settings/configurations-on-the-training-platform.md#steps-to-set-the-configurations-on-the-platform), search and update the following app settings (create new application settings if not already present)

    |Application Setting|Value |
    |---|---|
    | idp:AzureADB2CExternalAuthClientId | Paste the ClientID of ADB2C application |
    | idp:AzureADB2CExternalAuthClientSecret | Paste the Secret Identifier from Key vault |
    | idp:AzureADB2CExternalAuthTenant | ADB2C Tenant Name |
    | idp:AzureADB2CExternalAuthPolicy | Sign-up ans Sign-in User flow name |
    | idpSelection | 1 |

5. [**Add Phone-based login to existing Social Account login Instance**](#add-phone-based-login-to-existing-social-account-login-instance)

6. [**Add Work email based Authentication to existing Social Account login instance**](#add-work-email-based-authentication-to-existing-social-account-login-instance)

## Add Phone-based login to Azure AD (work email) based authentication instance

To be able to support multi mode authentication you should create AD B2C tenant to support social login and later configure the AD B2C application to add Phone and work email based login.

1. [**Configure login identity for the platform by creating an Azure AD B2C Tenant**](configure-login-social-work-school-account.md#social-account-or-email-based-authentication). In the document skip point 7 in Step2 as you are not deploying new instance, proceed to Step3 if you need to add local account login support to your instance.

2. [**Add Phone-based login to existing Social Account login Instance**](#add-phone-based-login-to-existing-social-account-login-instance)

3. [**Add Work email based Authentication to existing Social Account login instance**](#add-work-email-based-authentication-to-existing-social-account-login-instance)

>[!Note]
> * Please note that learner should use only one mode of authentication (phone, social email, work email) for registering. If a learner uses multiple modes of authentication for registration, the accounts will be treated as different users.
> * If you have an existing mobile application and you made changes to login type on your instance, to have them reflected in your mobile app, you need to update your existing mobile application. 
