---
title: Pricing & Subscription
original-url: https://docs.microsoftcommunitytraining.com/docs/pricing-subscription
author: nikotha
ms.author: nikotha
description: Microsoft Community Training is built on top of Azure platform and available only on the Azure Marketplace.
ms.prod: learning-azure
---

# Pricing & Subscription

## Azure Subscription

### My organization is not using Microsoft Azure. Can I still use Microsoft Community Training?

Microsoft Community Training is built on top of the Azure platform and [**available only on the Azure Marketplace**](https://azuremarketplace.microsoft.com/marketplace/apps/project-sangam.microsoft-community-training?tab=Overview). Our platform is accessible in all the countries or regions where Microsoft Azure Marketplace is commercially available. See the [Azure Marketplace documentation](/azure/marketplace/marketplace-geo-availability-currencies) for more details. 

If your organization is not using Microsoft Azure, then you can [**create a Microsoft Azure account**](https://azure.microsoft.com/) on your own or [**reach out to a Microsoft Cloud Solution Partner**](https://partner.microsoft.com/membership/cloud-solution-provider/find-a-provider) to procure Microsoft Azure for your organization.

### Can I use the free Microsoft Azure subscription for deploying the platform?

Currently, Microsoft Community Training uses Azure services which are not available on free or trial subscriptions. If you have a free trial Azure subscription, please upgrade to a Pay-as-you-go Azure subscription.

To learn more about how to create a pay-as-you-go subscription, [**refer to this article**](https://azure.microsoft.com/pricing/purchase-options/pay-as-you-go/) on Azure documentation.

### I'm a non-profit organization. Are there any grants or sponsorships for using the training portal?

If you’re a non-profit and would like to an Azure grant for using Microsoft Community Training platform, you can apply by referring **[this article](../infrastructure-management/install-your-platform-instance/setup-platform-instance-on-azure-subscription-for-nonprofits.md)** and avail the grant subject to eligibility.

### Can nonprofit organizations use their existing Azure Credits towards Microsoft Community Training platform hosting cost?

Nonprofit organization can receive $3500 worth of Azure credit from Microsoft, which can be used towards hosting the Microsoft Community Training platform.

For more details on Microsoft Nonprofit offers, please check  [**this link**](https://nonprofit.microsoft.com/register).

To redeem the Azure grant and deploy the platform on a sponsored subscription for nonprofits, refer to [**this article**](../infrastructure-management/install-your-platform-instance/setup-platform-instance-on-azure-subscription-for-nonprofits.md).  

### For how long is the Microsoft Azure grant for nonprofits valid? Do we get it every year?

Azure credit for nonprofits is an annual grant - every year the organization receives $ 3,500 worth of Azure credit.  

### What are the Azure Services used by Microsoft Community Training platform?

Here is the list of services that are used by the Microsoft Community Training platform:

* Azure App Service
* Azure Blob Storage
* Azure Media Service
* Content Delivery Network
* Azure SQL Database
* Azure Key Vault
* Azure Application Insights

## Pricing & Purchase

### How can customers buy Microsoft Community Training platform?

Microsoft Community Training is now available in Public Preview and organizations can deploy the application on their Azure subscription from  Azure Marketplace. Refer **[this article](../infrastructure-management/install-your-platform-instance/installation-overview.md)**  to learn more.

### How much will I be charged to use Microsoft Community Training? What is the pricing model?

Microsoft Community Training platform doesn't charge any licensing fee, customers only need to pay for the cloud services billed (i.e. Azure consumption) when learners actually use the platform. The Azure consumption cost depends on various factors like # of users, volume of content hosted, and content consumed every month on the platform.

Refer to this [**pricing calculator**](https://communitytraining.microsoft.com/pricing/) for more details.

### What is the difference between basic and standard plans for Microsoft Community Training?

You will get the same set of features irrespective of the configuration and plan you choose. The plan with determine the hardware configuration that will be used to run the platform on the Azure cloud and differences will only be concerning the application performance. Here is our recommendation on when to use each plan:

**Basic plan** is used when you have lower traffic requirements and limited training content on the platform.

**Standard plan** is used when you have higher traffic requirements and want to provide a smooth user experience at scale

> [!WARNING]  
> We recommend customers opt-in for a standard plan for superior user experience and application performance.

### Will I be charged a license fee for Microsoft Community Training in the future?

Microsoft Community Training platform is in public preview right now. Currently, there are no plans to charge any licensing fee for the solution to existing or new customers.

### How will the Azure consumption charges be wary when users download data on the mobile device?

When a user downloads content for offline consumption there are no charges applicable to the organization’s end. However, mobile data charges are applicable for the learners while downloading the content based on their ISP.

Example: Let's assume an organization named Contoso is using  Microsoft Community Training to upskill their employees. Cathy an employee of Contoso uses the mobile app for consuming training content and downloading videos for offline consumption. During this process, Contoso is not charged any video streaming cost when Cathy is viewing video content downloaded on the mobile app.

### Microsoft Community Training charges based on Azure usage which is dependent upon consumption of courses on the platform. Right?

Yes, this is correct. There are two aspects to the Azure consumption cost when an organization uses the platform.  

* **Fixed Cost** : This component consists of Azure SQL Database and Azure Web App services used to run the portal, and store user and course information. The cost for these services is fixed for a given configuration and charged on a monthly basis irrespective of platform usage.
* **Variable Cost** : This component consists of Azure Storage, Media Services, and Content Delivery Cost services used to store actual course content and stream content on the learner's device. The cost for these services is variable and depends upon the actual usage such as the amount of content stored, minutes of video content watched, etc.

For more details on pricing, [**refer here**](https://communitytraining.microsoft.com/pricing/).

### When an organization opts for phone-based login, who pays for the SMS charges?

In the case of phone-based login, the SMS charges with respect to the one-time password sent on the learner's mobile number are borne by Microsoft.  Organizations don't have to pay anything.

Even learners are not charged anything when they receive a one-time password via SMS. However, in case mobile network operators are charging for incoming messages then they will have to bear the cost for the same.

### Are there any charges for course content streamed via external websites such as YouTube?

Microsoft Community Training doesn't charge for bandwidth or streaming costs when the video content is played via external sites such as YouTube, Vimeo, etc.  

### Am I charged for Azure consumption even when learners are consuming content offline i.e. content is downloaded on the mobile application?

No. Once the content is downloaded on the device neither learner is charged for the mobile data when viewing the content nor customers are charged for any Azure consumption.
