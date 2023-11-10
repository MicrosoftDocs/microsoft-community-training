---
title: Setup custom domain URL
original-url: https://docs.microsoftcommunitytraining.com/docs/setup-custom-domain-url
author: nikotha
ms.author: nikotha
description: "By default, your training portal is hosted on <name>.azurefd.net   where <name>* is the website name entered by administrator at the time of platform deployment and installation."
ms.prod: learning-azure
---

# Setup custom domain URL

By default, your training portal is hosted on ***\<name>.azurefd.net*** where ***\<name>*** is the website entered by the administrator when the platform is deployed.

## Why configure a Custom Domain?

Some customers may prefer to keep their domain name with an existing provider for branding and security purposes. We give you the option to map your learning portal to a domain of your choice, follow the instructions below to configure these settings.

## Before you begin

1. Make sure you’ve purchased the domain name of your choice from your domain provider (such as Namecheap, GoDaddy).
1. You will need access to the DNS registry for your domain provider. For example, to add DNS entries for *contoso.com* and *`www.contoso.com`*, you must be able to configure the DNS settings for the *contoso.com*  root domain.

## Steps to configure your custom domain URL

1. [**Map the custom DNS name**](/azure/frontdoor/front-door-custom-domain#create-a-cname-dns-record) to point to your Community Training instance, using a CNAME DNS record.

> [!NOTE]
> Add the **Front Door URL** of your Community Training instance wherever specified in the above section. It typically looks like *`https://<InstanceName>.azurefd.net/`*

1. [**Associate the mapped custom domain**](/azure/frontdoor/front-door-custom-domain#associate-the-custom-domain-with-your-front-door), with your Community Training instance's Front Door resource.

1. [**Configure the SSL certificate**](/azure/frontdoor/front-door-custom-domain-https) for your Community Training instance.  
Use an [**AFD managed certificate**](/azure/frontdoor/front-door-custom-domain-https#option-1-default-use-a-certificate-managed-by-front-door) for seamless certificate management, including procurement and renewal.

1. Enable the Web Application Firewall on your new domain (the setting is available just below the Custom Domain HTTPS configuration).
Select the WAF policy instance that is deployed in the same resource group belonging to your Community Training instance.

1. Select the Managed application instance.

   ![Managed application instance.](../../media/image%2890%29.png)

1. Select the **Managed resource group** link.

   ![Managed resource group link.](../../media/image%2889%29.png)

1. Select the resource for your App Service.

1. Select **Configuration** from the left-menu, under Settings.

   ![Configuration settings menu.](../../media/image%2894%29.png)

1. Update the [configuration setting](../../settings/configurations-on-the-training-platform.md#steps-to-set-the-configurations-on-the-platform) **ContentEndpoint** with your custom domain name, followed by the path "/storage", for example - *https://contosolearning.contoso.com/storage*.

    :::image type="content" source="../../media/custom domain endpoint setting.png" alt-text="Custom Domain Storage Endpoint.":::

    > [!IMPORTANT]
    >The above setting must be configured with the **new custom domain** you have created else it might generate issues.

1. Next, based on your chosen identity type, follow the steps below:
    * **For Social Accounts or email based authentication** like Google, Microsoft and Facebook [follow this link](../../infrastructure-management/configure-your-platform-infrastructure/setup-custom-domain-url.md#for-social-accounts-like-google-microsoft-and-facebook).
    * **For Azure Active Directory** (aka Work or School account) [follow this link](../../infrastructure-management/configure-your-platform-infrastructure/setup-custom-domain-url.md#for-azure-active-directory-work-or-school-account).
    * **For phone number authentication**, create a support ticket from the [Community Training HelpDesk](https://go.microsoft.com/fwlink/?linkid=2104630) using the following values and your custom URL will be activated in 2-3 business days.  You will be notified when the change is complete.

        |Field|Description|
        |---|---|
        |Title|Enter "Set up custom domain URL"|
        |Type|Select "Request"|
        |Subject|Under Infrastructure Management, select "Set up custom domain URL"|
        |Description|Provide your existing URL and new custom URL|

> [!IMPORTANT]  
> Before raising the support ticket for an instance **enabled with Phone number authentication**, please make sure your training portal is accessible with the configured custom domain. After opening the website, when you select **SIGN IN**, the login page should return an error.

## For Social Accounts like Google, Microsoft and Facebook

### For Production Slot URL

1. Open the B2C Tenant resource from Resource group.

1. Select **Azure Active Directory B2C Settings**.

1. Select **Applications** under Manage and select the application.

1. Under reply URL, please add your new custom domain URL in the format, *https:// {custom domain} /signin-b2c*, for example, *https://contosolearning.contoso.com/signin-b2c*.

   > [!NOTE]  
   > Please ensure the case for "/signin-b2c" is exactly as mentioned since the URL is case sensitive.  

1. Select **Save**.

### For Staging Slot URL

1. Open B2C Tenant resource from Resource group.

1. Select **Azure Active Directory B2C Settings**.

1. Create a new application (+ Add).

1. Enter the name of the application.

1. Switch on “Web App / Web API”

1. Make sure “Allow implicit flow” is turned off and “Native Client” is turned off.  

1. Set the reply URI for Azure AD B2C as *\<basedomain>/signin-b2c* (e.g.: *https://\<name>-staging.azurewebsites.net/signin-b2c*. This URL will serve as a temporary testing URL on which the website will be deployed before moving to production.
   > [!NOTE]  
   > Please ensure the case for "/signin-b2c" is exactly as mentioned since the URL is case sensitive.  

1. Select **Create**.

## For Azure Active Directory (Work or School account)

### For Production Slot URL

1. In Azure portal, select **Azure Active Directory** then **App registrations**.

1. Select the application from list of registered apps.

1. Select **Authentication**.

1. Now add the redirect URL in the following format, *"https:// {customdomain} /signin-azureAD"*  (e.g.: "https://contosolearning.contoso.com/signin-azureAD").
   > [!NOTE]  
   > Please ensure the case for "/azureAD" is exactly as mentioned since the URL is case sensitive.  

1. Select **Save**.

### For Staging Slot URL

1. In Azure portal, select **Azure Active Directory** then select **App registrations**.

1. Select **+ New application registration**.

1. Enter the name of the application, select Application type as “Web app/API”.

1. Now add the redirect URL in following format, "https:// {websitename}-staging /signin-azureAD" (e.g  "https://contosolearning-staging.azurewebsites.net/signin-azureAD").
   > [!NOTE]  
   > Please ensure the case for "/azureAD" is exactly as mentioned since the URL is case sensitive.  

1. Select **Create**.

## Troubleshoot for Custom Domain URL Setup

If your website is unreachable even after following all of the above mentioned steps try the following troubleshooting steps:

![Troubleshoot for Custom Domain URL Setup error page.](../../media/image%28341%29.png)

Check the DNS entry is propagated by any online tool available, [for example](https://mxtoolbox.com/DNSLookup.aspx).

There can be two cases:  

1. **No entry is present**

    ![No entry is present error.](../../media/image%28342%29.png)

      **Steps to mitigate**

      Update the DNS record in corresponding DNS provider. In the above case, the domain was purchased from Microsoft 365, so you will need to follow this [documentation](/microsoft-365/admin/dns/update-dns-records-to-retain-current-hosting-provider?view=o365-worldwide&preserve-view=true).

      Every DNS provider will have similar documentations. This is an example from [Godaddy](https://in.godaddy.com/help/change-an-a-record-19239).  

1. **DNS entry is wrong**

   ![DNS entry is wrong.](../../media/image%28343%29.png)

    **Steps to mitigate**

    The domain record should point to the correct AzureFD url (***\<name>.azurefd.net*** ), for example,

    ![AzureFD url.](../../media/image%28344%29.png)
