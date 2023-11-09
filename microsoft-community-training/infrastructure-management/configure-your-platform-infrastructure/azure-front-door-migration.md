---
title: Azure Front Door Migration
original-url: https://docs.microsoftcommunitytraining.com/docs/azure-front-door-migration
author: nikotha
ms.author: nikotha
description: As your learners continue learning and improving, your training platform also continues to grow and become better.
ms.prod: learning-azure
---

# Azure Front Door Migration

As your learners continue to improve, your training platform also continues to grow and become better.

Starting January, 2021 your Community Training (CT) instance will utilize the power of Azure Front Door (AFD) to deliver non-video content (e.g.: PDF, ePub, Office 365 files etc.). AFD is a global, scalable entry-point that uses the Microsoft global edge network to create fast, secure, and widely scalable web applications.

## Why Azure Front Door (AFD)?

1. Improved page load times for learners on the training instance.
1. Lower bandwidth costs for your learners for data consumption.
1. Improved security against DDoS attacks and other vulnerabilities.
1. Higher load capacity, to service higher concurrent users efficiently.

## What changes for you?

> [!IMPORTANT]  
> If you are a new customer deploying the Community Training platform in January 2021, you can follow the instructions in the [deployment guide](../../infrastructure-management/install-your-platform-instance/installation-guide-detailed-steps.md). Your new instance will be deployed with all the benefits of Azure Front Door.

If you are an existing customer of the Community Training platform, you will see the following changes:  

1. If your learners are accessing azurewebsites URL (ex. Xxxxx.azurewebsites.net) - they will now have to access xxxxx.azurefd.net; if your learners are accessing URL via a custom domain they will see no change.
1. The AFD benefits come at an additional monthly cost of USD 40 which will appear in your Azure billing.

## What do you need to do?

> [!IMPORTANT]  
> If you are deploying the platform post January 2021, **you do NOT need to follow these steps**, your deployment flow would have already guided you in the right direction.

If your Community Training instance was deployed before January 2021, then follow the relevant steps below.

### Case 1: Your learners use a custom domain or a vanity URL to access the training instance

Follow these steps to update mapping in your DNS provider and add the custom domain in AFD resource.  

**Old CT instance**: https://*websitename*.azurewebsites.net/

**New CT instance**: https://*websitename*.azurefd.net/

1. [**Map the custom DNS name**](/azure/frontdoor/front-door-custom-domain#create-a-cname-dns-record) to point to your new MCT instance, using a CNAME DNS record.

1. [**Associate the mapped custom domain**](/azure/frontdoor/front-door-custom-domain#associate-the-custom-domain-with-your-front-door), with your new MCT instance's Front Door resource.

1. [**Configure the SSL certificate**](/azure/frontdoor/front-door-custom-domain-https) for your Microsoft Community Training instance.

   Use an [**AFD managed certificate**](/azure/frontdoor/front-door-custom-domain-https#option-1-default-use-a-certificate-managed-by-front-door) for seamless certificate management, including procurement and renewal.

1. Enable Web Application Firewall on your new domain, (the setting is available just below the Custom Domain HTTPS configuration) and select the WAF policy instance that is deployed in the same resource group.

1. Click on the resource group belonging to your Microsoft Community Training instance.

1. Click on the Managed application instance.

   ![Managed application instance](../../media/image%2890%29.png)

1. Click on **Managed resource group** link.

   ![Managed resource group](../../media/image%2889%29.png)

1. Select the resource for your App Service.

1. Select **Configuration** under **Settings** on the left-menu.

   ![Configuration under Settings](../../media/image%2894%29.png)

1. Update the setting **ContentEndpoint** with your custom domain name, followed by the path "/storage". *For example - `https://contosolearning.contoso.com/storage`*.

### Case 2: Your learners use AzureWebsites URL to access the training instance

#### For Azure AD authentication

1. Sign in to the [Azure portal](https://portal.azure.com/).
1. Select the **Directory + Subscription** icon in the portal toolbar, and then select the directory that contains your Azure AD B2C tenant.
1. In the Azure portal, search for and select **Azure Active Directory**.
1. Click on **App registrations** > **All Applications** and select your Azure AD tenant.
1. Select **Authentication** from the left panel.
1. Under *Web > Redirect URI*, add the following **Redirect URI** - *https://websitename.azurefd.net/signin-b2c*.

#### For Azure AD B2C authentication

1. Sign in to the [Azure portal](https://portal.azure.com/).
1. Select the **Directory + Subscription** icon in the portal toolbar, and then select the directory that contains your Azure AD B2C tenant.
1. In the Azure portal, search for and select **Azure AD B2C**.
1. Select **App registrations** > **All Applications** and select your Azure AD B2C tenant.
1. Select **Authentication** from the left panel.
1. Under *Web > Redirect URI*, add the following **Redirect URI** - *https://websitename.azurefd.net/signin-b2c*.

#### For Phone based authentication

No action item required, your instance will be auto-migrated.

> [!IMPORTANT]  
> Once, these steps are done, you can start consuming the benefits of Azure Front Door via allowing learners to access MCT instance via https://*websitename*.azurefd.net URL or a custom domain.

> [!NOTE]  
> For any questions or concerns please reach out to us at *sangam-pm@microsoft.com*.
