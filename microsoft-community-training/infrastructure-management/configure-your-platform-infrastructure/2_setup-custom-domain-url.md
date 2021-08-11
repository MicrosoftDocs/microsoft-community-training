---
title: Setup custom domain URL
original-url: https://docs.microsoftcommunitytraining.com/docs/setup-custom-domain-url
author: nikotha
ms.author: nikotha
description: "By default, your training portal is hosted on <name>.azurefd.net   where <name>* is the website name entered by administrator at the time of platform deployment and installation."
ms.prod: azure
---

# Setup custom domain URL

By default, your training portal is hosted on ***\<name>.azurefd.net***   where ***\<name>**** is the website name entered by administrator at the time of platform deployment and installation.

## Why configure a Custom Domain?

Some customers may prefer to keep their domain name at different providers for branding and trust purposes. We give you the option to “map” your learning portal to a domain of your choice.

If you’re looking to host your Microsoft Community Training instance on a custom domain of your choice, follow the instructions below.

## Before you begin

1. Make sure you’ve purchased a domain name of your choice from your domain provider (such as Namecheap, GoDaddy).
2. Make sure you have access to the DNS registry for your domain provider. For example, to add DNS entries for *contoso.com* and *`www.contoso.com`*, you must be able to configure the DNS settings for the *contoso.com*  root domain.

## Steps to configure your custom domain URL

1. [**Map the custom DNS name**](/azure/frontdoor/front-door-custom-domain#create-a-cname-dns-record) to point to your Microsoft Community Training instance, using a CNAME DNS record.

2. [**Associate the mapped custom domain**](/azure/frontdoor/front-door-custom-domain#associate-the-custom-domain-with-your-front-door), with your Microsoft Community Training instance's Front Door resource.

3. [**Configure the SSL certificate**](/azure/frontdoor/front-door-custom-domain-https) for your Microsoft Community Training instance.  
Use an [**AFD managed certificate**](/azure/frontdoor/front-door-custom-domain-https#option-1-default-use-a-certificate-managed-by-front-door) for seamless certificate management, including procurement and renewal.

4. Enable Web Application Firewall on your new domain.  
(the setting is available just below the Custom Domain HTTPS configuration)  
Select the WAF policy instance that is deployed in the same resource group.

5. Click on the resource group belonging to your Microsoft Community Training instance.

6. Click on the Managed application instance.

   ![Managed application](../../media/image%2890%29.png)

7. Click on **Managed resource group** link.

   ![Managed resource group](../../media/image%2889%29.png)

8. Select the resource for your App Service.

9. From the left-menu, under Settings, click on **Configuration**.

   ![Configuration](../../media/image%2894%29.png)

10. Update the setting **ContentEndpoint** with your custom domain name, followed by the path "/storage". *For example - `https://contosolearning.contoso.com/storage`*.

11. Next based on your chosen identity type, follow the steps below:
    * **For Social Accounts or email based authentication** like Google, Microsoft and Facebook [follow these steps](../../infrastructure-management/configure-your-platform-infrastructure/2_setup-custom-domain-url.md#for-social-accounts-like-google-microsoft-and-facebook)
    * **For Azure Active Directory** (aka Work or School account) [follow these steps](../../infrastructure-management/configure-your-platform-infrastructure/2_setup-custom-domain-url.md#for-azure-active-directory-work-or-school-account)
    * **For phone number authentication**, create a support ticket from [Microsoft Community Training Helpdesk](https://go.microsoft.com/fwlink/?linkid=2104630) using the following values. Our support team will activate your custom URL in 2-3 business days and notify you of the change.

        |Field|Description|
        |---|---|
        |Title|Enter "Set up custom domain URL"|
        |Type|Select "Request"|
        |Subject|Under Infrastructure Management, select "Set up custom domain URL"|
        |Description|Provide your existing URL and new custom URL|

> [!IMPORTANT]  
> Before raising the support ticket for an instance **enabled with Phone number authentication**, please make sure your training portal is accessible with the configured custom domain. After opening the website, when you click on the **SIGN IN** the login page should return an error.

## For Social Accounts like Google, Microsoft and Facebook

### For Production Slot URL

1. Open B2C Tenant resource from Resource group.

2. Select Azure Active Directory B2C Settings

3. Select Applications under Manage and select the application

4. Under reply URL, please add your new custom domain URL in the format, "https:// {custom domain} /signin-b2c". For example, "https://contosolearning.contoso.com/signin-b2c".

   > [!NOTE]  
   > Please ensure the case for "/signin-b2c" is exactly as mentioned since the URL is case sensitive.  

5. Click on Save.

### For Staging Slot URL

1. Open B2C Tenant resource from Resource group.

2. Select Azure Active Directory B2C Settings

3. Create a new application. (+ Add)

4. Enter the name of the application.

5. Switch on “Web App / Web API”

6. Make sure “Allow implicit flow” is turned off and “Native Client” is turned off.  

7. Set the reply URI for Azure AD B2C as \<basedomain>/signin-b2c (e.g.: 'https://\<name>-staging.azurewebsites.net/signin-b2c'. This URL will serve as a temporary testing URL on which the website will be deployed before moving to production.
   > [!NOTE]  
   > Please ensure the case for "/signin-b2c" is exactly as mentioned since the URL is case sensitive.  

8. Click on Create

## For Azure Active Directory (Work or School account)

### For Production Slot URL

1. In Azure portal, select Azure Active Directory.

2. Then select App registrations.

3. Select the application from list of registered apps.

4. Select Authentication.

5. Now add the redirect URL in following format,"https:// {customdomain} /signin-azureAD"  (e.g.: "https://contosolearning.contoso.com/signin-azureAD")
   > [!NOTE]  
   > Please ensure the case for "/azureAD" is exactly as mentioned since the URL is case sensitive.  

6. Click on Save.

### For Staging Slot URL

1. In Azure portal, select Azure Active Directory.

2. Then select App registrations.

3. Click + New application registration.

4. Enter Name of the application, select Application type “Web app/API”

5. Now add the redirect URL in following format, "https:// {websitename}-staging /signin-azureAD" (e.g  "https://contosolearning-staging.azurewebsites.net/signin-azureAD")
   > [!NOTE]  
   > Please ensure the case for "/azureAD" is exactly as mentioned since the URL is case sensitive.  

6. Click on Create

## Troubleshoot for Custom Domain URL Setup

Following are some troubleshooting steps for the scenario when your website is not reachable even after following all of the above mentioned steps,

![Troubleshoot for Custom Domain URL Setup](../../media/image%28341%29.png)

Check the DNS entry is propagated by any online tool available. [Example](https://mxtoolbox.com/DNSLookup.aspx).

There can be 2 cases:  

1. **No entry is present**

    ![No entry is present](../../media/image%28342%29.png)

      **Steps to mitigate**

      Update dns record in corresponding DNS provider. In the above case, the domain was purchased from Microsoft 365, so you will need to follow this [documentation](/microsoft-365/admin/dns/update-dns-records-to-retain-current-hosting-provider?view=o365-worldwide&preserve-view=true).

      Every dns provider will have similar documentations. This is one more example from [Godaddy](https://in.godaddy.com/help/change-an-a-record-19239)  

2. **DNS entry is wrong**

   ![DNS entry is wrong](../../media/image%28343%29.png)

    **Steps to mitigate**

    The domain record should point to the correct AzureFD url (***\<name>.azurefd.net*** ). For example,

    ![AzureFD url](../../media/image%28344%29.png)
