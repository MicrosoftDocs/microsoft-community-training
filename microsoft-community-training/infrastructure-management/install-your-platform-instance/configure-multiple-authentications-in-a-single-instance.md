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

To be able to configure multiple authentications to your instance you need to first create [**AD B2C**](/azure/active-directory-b2c/overview) tenant and register an application. If your instance is already setup to use [**social login**](configure-login-social-work-school-account.md#social-account-or-email-based-authentication) via ADB2C then you can proceed configuring your tenant to add [**phone login**](#add-phone-based-login-to-existing-social-account-login-instance) and [**work email login**](#add-work-email-based-authentication-to-existing-social-account-login-instance) support to your instance.

> [!NOTE]
>We strongly recommend that an MFA (Multi Factor Authentication), or a 2FA (2 Factor Authentication) be implemented, if your instance is using ADB2C based authentication, especially for the Admin accounts.

## Add Phone-based login to existing Social Account login Instance

If your instance is already setup to accept [**social login**](configure-login-social-work-school-account.md#social-account-or-email-based-authentication) via AD B2C, below are the steps to configure your AD B2C tenant to be able to support CT platform's Phone authentication along side your social account login.

### Prerequisites

Create a [**support ticket**](https://sangamhelpdesk.microsoftcrmportals.com) requesting for creation of new ClientID and ClientSecret in your [**Key-Vault**](../../analytics/custom-reports/database-schema.md#accessing-key-vault) to be used while configuring New OpenID connect provider.

* Also mention your [**AD B2C Tenant name**](/azure/active-directory-b2c/tenant-management#get-your-tenant-name) in description while creating support ticket.

* After receiving confirmation (typical wait time is around two business days) from our support team you can proceed to next steps adding phone based login.

## Add Work email based Authentication to existing Social Account login instance

If your instance is already setup to accept [**social login**](configure-login-social-work-school-account.md#social-account-or-email-based-authentication) via AD B2C, below are the steps to add Azure Active Directory/Work email based authentication along side social account login by configuring your existing Azure ADB2C tenant.

1. Login to your [**Azure portal**](https://portal.azure.com/)
1. Note down your [**AD B2C tenant’s name**](/azure/active-directory-b2c/tenant-management#get-your-tenant-name), for example, if the default domain for your Azure AD B2C tenant is contoso.onmicrosoft.com, then contoso is your tenant’s name.
1. Create an Azure Active Directory App (can be from different tenant) [**configure login identity for the platform by creating Azure AD application**](configure-login-social-work-school-account.md#step-2---create-azure-ad-application), copy your Client ID, Client Secret and [**Tenant ID**](/azure/active-directory/fundamentals/active-directory-how-to-find-tenant).
1. While in your AAD app, select **Authentication** to add your Reply URL `https://<adb2c_tenant_name>.b2clogin.com/<adb2c_tenant_name>.onmicrosoft.com/oauth2/authresp` replace <adb2c_tenant_name> with your AD B2C tenant name from Step 2.

    :::image type="content" source="../../media/AddingredirectURLinAAD_app.png" alt-text="add redirect url":::

1. Now switch to your AD B2C tenant and locate **Identity Providers** under the **Manage** section. Select *‘New Open ID Connect Provider’* and provide the following values in *Configure custom IDP* then select **Save**.

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

1. Navigate back to your ADB2C resource and select **User Flows** from under **Policies**, then select your instance's User flow name.

    :::image type="content" source="../../media/UserFlow.png" alt-text="user flow in custom idp aad":::

1. In the User flow name select **Application Claims** and ensure you have ‘Display Name’, ‘Email Address’, ‘User’s Object ID’ selected and saved.

    :::image type="content" source="../../media/MultiAuth_AppClaims.PNG" alt-text="multi auth app claims aad":::

1. While in your User flow, navigate to **Identity providers**’ and select the newly configured **OpenID Connect** under **Custom identity providers** and select **Save**.

    :::image type="content" source="../../media/FinalIDP.png" alt-text="IDP final image aad":::

1. You should see an option in the login page of your instance that enables users to login through their work email (Azure AD email) alongside the Social Account login.

> [!NOTE]
> Learners should use only one mode of authentication (social email, work email) for registering. If a learner uses multiple modes of authentication for registration, the accounts will be treated as different users.
