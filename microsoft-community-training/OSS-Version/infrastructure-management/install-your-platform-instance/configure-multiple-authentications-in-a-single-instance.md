---
title: Configure multiple authentications in a single instance
original-url: https://docs.microsoftcommunitytraining.com/docs/configure-multi-mode-authentication-for-same-deployment
author: sambati
ms.author: sambati
description: Setup multiple authentication modes in a single instance of Microsoft Community Training platform.
ms.prod: learning-azure
---

# Configure multiple authentications in a single instance

Many organizations might want to support multiple authentication options to be available for their learners. Community Training now supports adding more than one authentication option for a single platform instance.

To be able to configure multiple authentications to your instance you need to first create [**AD B2C**](https://learn.microsoft.com/azure/active-directory-b2c/overview) tenant and register an application. If your instance is already setup to use [**social login**](configure-login-social-work-school-account.md#social-account-or-email-based-authentication) via ADB2C then you can proceed configuring your tenant to add [**work email login**](#add-work-email-based-authentication-to-existing-social-account-login-instance) support to your instance.

>[!Note]
>We would strongly recommend that an MFA (Multi Factor Authentication) or a 2FA (2 Factor Authentication) be implemented, if your instance is using ADB2C based authentication, especially for the Admin accounts. 

## Add Work email based Authentication to existing Social Account login instance

If your instance is already setup to accept [**social login**](configure-login-social-work-school-account.md#social-account-or-email-based-authentication) via AD B2C, below are the steps to add Azure Active Directory/Work email based authentication along side social account login by configuring your existing Azure ADB2C tenant.

1. Login to your [**Azure portal**](https://portal.azure.com/)
2. Note down your [**AD B2C tenant’s name**](https://learn.microsoft.com/azure/active-directory-b2c/tenant-management#get-your-tenant-name) i.e., for example, if the default domain for your Azure AD B2C tenant is contoso.onmicrosoft.com, then contoso is your tenant’s name.
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


>[!Note]
> * Please note that learner should use only one mode of authentication (social email or work email) for registering. If a learner uses multiple modes of authentication for registration, the accounts will be treated as different users.
> * If you have an existing mobile application and you made changes to login type on your instance, to have them reflected in your mobile app, you need to update your existing mobile application. 
