---
title: Add multiple Azure AD(single tenant) to B2C as social account
original-url: https://docs.microsoftcommunitytraining.com/docs/
author: nikotha
ms.author: nikotha
description: Enable sign-in for users from a multiple Azure AD organization using a user flow in Azure AD B2C.
ms.prod: learning-azure
---

# Add multiple Azure AD(single tenant) to B2C as social account

This article shows you how to enable sign-in for users from a specific Azure AD organization using a user flow in Azure AD B2C.

## Step:1 Register an Azure AD app

To enable sign-in for users with an Azure AD account from a specific Azure AD organization,  you need to create an application in [**Azure portal**](https://portal.azure.com/) from your Azure Active Directory B2C account (Azure AD B2C). For more information, see [Register an application with the Microsoft identity platform](/azure/active-directory/develop/quickstart-register-app).

1. Sign in to the [**Azure portal**](https://portal.azure.com/).
1. Make sure you're using the directory that contains your organizational Azure AD tenant (for example, contoso.com). Select the **Directory + subscription filter** in the top menu, and then choose the directory that contains your Azure AD tenant.
1. Choose **All services** in the top-left corner of the Azure portal, and then search for and select **App registrations**.
1. Select **New registration**.
1. Enter a **Name** for your application. For example, Azure AD B2C App.
1. Accept the default selection of **Accounts in this organizational directory only** for this application.
1. For the **Redirect URI**, accept the value of **Web**, and enter the following URL in all lowercase letters, where ***your-B2C-tenant-name*** is replaced with the name of your Azure AD B2C tenant.

    `https://your-B2C-tenant-name.b2clogin.com/your-B2C-tenant-name.onmicrosoft.com/oauth2/authresp`

     If you use a [custom domain](setup-custom-domain-url.md), enter `https://your-domain-name/your-tenant-name.onmicrosoft.com/oauth2/authresp`. Replace ***your-domain-name*** with your custom domain, and ***your-tenant-name*** with the name of your tenant.
1. Select **Register** and record the **Application (client) ID** for use in a later step.
1. Select **Certificates & secrets**, then **New client secret**.
1. Enter a **Description** for the secret, select an expiration, then select **Add** and record the **Value** of the secret for use in a later step.

## Step 2: Configure Azure AD as an identity provider

1. Make sure you're using the directory that contains Azure AD B2C tenant. Select the **Directory + subscription** filter in the top menu and choose the directory that contains your Azure AD B2C tenant.
1. Choose **All services** in the top-left corner of the Azure portal, and then search for and select **Azure AD B2C**.
1. Select **Identity providers**, and then select **New OpenID Connect provider**.
1. Enter a **Name**, for example enter *firstAD*.
1. For **Metadata url**, enter the following URL replacing {tenant} with the domain name of your Azure AD tenant:
    `https://login.microsoftonline.com/{tenant}/v2.0/.well-known/openid-configuration`

    **For example:**
    - `https://login.microsoftonline.com/contoso.onmicrosoft.com/v2.0/.well-known/openid-configuration`
    - `https://login.microsoftonline.com/contoso.com/v2.0/.well-known/openid-configuration`

1. For **Client ID**, enter the application ID that you previously recorded.
1. For **Client secret**, enter the client secret that you previously recorded.
1. For **Scope**, enter the *openid* profile.
1. Leave the default values for **Response type**, and **Response mode**.
1. For the **Domain hint**, which is optional, enter contoso.com. For more information, see [Set up direct sign-in using Azure Active Directory B2C](/azure/active-directory-b2c/direct-signin?pivots=b2c-user-flow#redirect-sign-in-to-a-social-provider).
1. Under **Identity provider claims mapping**, select the following claims(refer the below screenshot):
    - **User ID**: *sub*
    - **Display name**: *name*
    - **Given name**: *given_name*
    - **Surname**: *family_name*
    - **Email**: *preferred_username*

    ![Configure custom IDP](../../media/MultipleAAD1.png)
1. Select **Save**.

## Step 3: Add Azure AD identity provider to a user flow

At this point, the Azure AD identity provider has been set up but is not available in any of the sign-in pages. To add the Azure AD identity provider to a user flow:

1. In your Azure AD B2C tenant, select **User flows**.
1. Select the user flow that you want to add to the Azure AD identity provider.
1. Under **Identity providers**, select the Social and Custom Identity Providers required. Refer to the below screenshot.
    ![Social Identity Providers](../../media/MultipleAAD2.png)
1. Select **Save**.
1. To test your policy, select **Run user flow**.
1. For **Application**, select the web application that you previously registered.
1. Select the **Run user flow** button.
1. From the sign-up or sign-in page, select Contoso Azure AD to sign in with Azure AD Contoso account.

If the sign-in process is successful, your browser is redirected to <https://jwt.ms>, which displays the contents of the token returned by Azure AD B2C.

## Step 4: Restart the web application and try to sign in

Similarly, you can add one or more Azure AD (single tenant) to B2C to use those as social account. Once the configuration is successful, you will be able to find the AzureAD tenant as option of signing in to your MCT application.

> [!Note]    
>When you are adding more than one tenant, follow the “[**add custom homepage**](set-up-custom-homepage-for-your-mct-instance.md)” document to add a custom homage and avoid any confusion while selecting the tenant.

Please reach out to us [**via HelpDesk**](https://aka.ms/cthelpdesk) if you have any further queries.
