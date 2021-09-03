---
title: Add multiple Azure AD(single tenant) to B2C as social account
original-url: https://docs.microsoftcommunitytraining.com/docs/
author: v-samarth
ms.author: v-samarth
description: enable sign-in for users from a multiple Azure AD organization using a user flow in Azure AD B2C
ms.prod: azure
---

# Add multiple Azure AD(single tenant) to B2C as social account

This article shows you how to enable sign-in for users from a specific Azure AD organization using a user flow in Azure AD B2C.

## Step:1 Register an Azure AD app

To enable sign-in for users with an Azure AD account from a specific Azure AD organization, in Azure Active Directory B2C (Azure AD B2C), you need to create an application in Azure portal. For more information, see Register an application with the Microsoft identity platform.

1. Sign in to the [**Azure portal**](https://portal.azure.com/).
2. Make sure you're using the directory that contains your organizational Azure AD tenant (for example, contoso.com). Select the **Directory + subscription filter** in the top menu, and then choose the directory that contains your Azure AD tenant.
3. Choose **All services** in the top-left corner of the Azure portal, and then search for and select **App registrations**.
4. Select **New registration**.
5. Enter a **Name** for your application. For example, Azure AD B2C App.
6. Accept the default selection of **Accounts in this organizational directory only** for this application.
7. For the **Redirect URI**, accept the value of **Web**, and enter the following URL in all lowercase letters, where ***your-B2C-tenant-name*** is replaced with the name of your Azure AD B2C tenant.

    `https://your-B2C-tenant-name.b2clogin.com/your-B2C-tenant-name.onmicrosoft.com/oauth2/authresp`

     If you use a [custom domain](setup-custom-domain-url.md), enter <https://your-domain-name/your-tenant-name.onmicrosoft.com/oauth2/authresp>. Replace ***your-domain-name*** with your custom domain, and ***your-tenant-name*** with the name of your tenant.
8. Select **Register**. Record the **Application (client) ID** for use in a later step.
9. Select **Certificates & secrets**, and then select **New client secret**.
10. Enter a **Description** for the secret, select an expiration, and then select **Add**. Record the **Value** of the secret for use in a later step.

## Step 2: Configure Azure AD as an identity provider

1. Make sure you're using the directory that contains Azure AD B2C tenant. Select the **Directory + subscription** filter in the top menu and choose the directory that contains your Azure AD B2C tenant.
2. Choose **All services** in the top-left corner of the Azure portal, and then search for and select **Azure AD B2C**.
3. Select **Identity providers**, and then select **New OpenID Connect provider**.
4. Enter a **Name**. For example, enter *firstAD*.
5. For **Metadata url**, enter the following URL replacing {tenant} with the domain name of your Azure AD tenant:
    <https://login.microsoftonline.com/{tenant}/v2.0/.well-known/openid-configuration>

    **For example:**
    - <https://login.microsoftonline.com/contoso.onmicrosoft.com/v2.0/.well-known/openid-configuration.>
    - <https://login.microsoftonline.com/contoso.com/v2.0/.well-known/openid-configuration.>

6. For **Client ID**, enter the application ID that you previously recorded.
7. For **Client secret**, enter the client secret that you previously recorded.
8. For **Scope**, enter *openid profile*.
9. Leave the default values for **Response type**, and **Response mode**.
10. (Optional) For the **Domain hint**, enter contoso.com. For more information, see [Set up direct sign-in using Azure Active Directory B2C](https://docs.microsoft.com/azure/active-directory-b2c/direct-signin?pivots=b2c-user-flow#redirect-sign-in-to-a-social-provider).
11. Under **Identity provider claims mapping**, select the following claims(refer the below screenshot):
    - **User ID**: *sub*
    - **Display name**: *name*
    - **Given name**: *given_name*
    - **Surname**: *family_name*
    - **Email**: *preferred_username*
    <img width="218" alt="MultipleAAD1" src="https://user-images.githubusercontent.com/87796184/131975786-9f7b16e6-bfca-4124-807f-3f98af5dba3f.png">
12. Select **Save**.

## Step 3: Add Azure AD identity provider to a user flow

At this point, the Azure AD identity provider has been set up, but it's not yet available in any of the sign-in pages. To add the Azure AD identity provider to a user flow:

1. In your Azure AD B2C tenant, select **User flows**.
2. Click the user flow that you want to add the Azure AD identity provider.
3. Under the **Social identity providers**, for example select **firstAD**, refer the below screenshot.
    <img width="389" alt="MultipleAAD2" src="https://user-images.githubusercontent.com/87796184/131975913-59b4e403-a501-40d0-bcdc-d7c277d8615b.png">

4. Select **Save**.
5. To test your policy, select **Run user flow**.
6. For **Application**, select a web application that you previously registered. 
7. Select the **Run user flow** button.
8. From the sign-up or sign-in page, select Contoso Azure AD to sign in with Azure AD Contoso account.

If the sign-in process is successful, your browser is redirected to <https://jwt.ms>, which displays the contents of the token returned by Azure AD B2C.

## Step 4: Restart the web application and try to sign in

Similarly, you can add one or more Azure AD(single tenant) to B2C to use those as social account. Once the configuration is successful, you will be able to find the AzureAD tenant as option of signing in to your MCT application.

>[!NOTE]
>When you are adding more than one tenant, follow the “[**add custom homepage**](set-up-custom-homepage-for-your-mct-instance.md)” document to add a custom homage and avoid any confusion while selecting the tenant.
