---
title: Pricing & Subscription
original-url: https://docs.microsoftcommunitytraining.com/docs/pricing-subscription
author: cbms03
ms.author: cbrahmandam
description: Community Training is built on top of Azure platform and available only on the Azure portal.
ms.prod: learning-azure
---

# Pricing & Subscription

## Azure Subscription

### My organization is not using Microsoft Azure. Can I still use Community Training?

Community Training is built on top of the Azure portal.
If your organization is not using Microsoft Azure, then you can [**create a Microsoft Azure account**](https://azure.microsoft.com/) on your own or [**reach out to a Microsoft Cloud Solution Partner**](https://partner.microsoft.com/membership/cloud-solution-provider/find-a-provider) to procure Microsoft Azure for your organization.

### Can I use the free Microsoft Azure subscription for deploying the platform?

Currently, Community Training uses Azure services which are not available on free or trial subscriptions. If you have a free trial Azure subscription, please upgrade to a Pay-as-you-go Azure subscription.

To learn more about how to create a pay-as-you-go subscription, [**refer to this article**](https://azure.microsoft.com/pricing/purchase-options/pay-as-you-go/) on Azure documentation.

### I'm a non-profit organization. Are there any grants or sponsorships for using the training portal?

If you’re a non-profit and would like an Azure grant for using Community Training, you can apply by referring **[this link](https://www.microsoft.com/nonprofits/eligibility?activetab=pivot1:primaryr4**) and avail the grant subject to eligibility.

### Can nonprofit organizations use their existing Azure Credits towards Community Training hosting costs?

Nonprofit organizations can use the Azure credits towards hosting the Community Training.

For more details on Microsoft Nonprofit offers, please check  [**this link**](https://nonprofit.microsoft.com/register).
  

### For how long is the Microsoft Azure grant for nonprofits valid? Do we get it every year?

Azure credit for nonprofits is an annual grant.


## Pricing & Purchase

### How can customers buy Community Training?

Community Training is now attained general availability and organizations can deploy the application on their Azure subscription from  Azure portal. Refer to **[this article](../infrastructure-management/install-your-platform-instance/installation-overview.md)**  to learn more.

### How much will I be charged to use Community Training? What is the pricing model?

Community Training offers two SKUs with license fees in addition to an Azure infrastructure fee for cloud services consumers.
* Non-profit SKU - Eligible nonprofit organizations can get Community Training at the nonprofit discount of $400 USD per instance, per month.

* Commercial SKU- For Commercial organization, license fees will be  $800 USD per instance, per month.
For azure infra cost details refer to this [**pricing calculator**](https://communitytraining.microsoft.com/pricing/)

### What is the difference between Standard and premium plans for Community Training?

You will get the same set of features on the platform irrespective of the configuration and plan you choose. The plan will determine the hardware configuration that will be used to run the platform on the Azure cloud.  

Here is our recommendation on when to use each plan:

* Standard plan is used when you have lower traffic requirements and limited training content on the platform. 

* Premium plan is used when you have higher traffic requirements and want to provide a smooth user experience at scale. 

Please reach out to us if you have additional questions on the hardware configuration selected for each of the plans.[**Microsoft Community Training Helpdesk**](https://aka.ms/cthelpdesk).

<!--
Note  : HIDING THIS AS THE QUESTION IS ANSWERED IN THE QUESTION ABOVE

### Will I be charged a license fee for Community Training in the future?

Community Training is in public preview right now. Currently, there are no plans to charge any licensing fee for the solution to existing or new customers.
-->
### How will the Azure consumption charges be wary when users download data on the mobile device?

When a user downloads content for offline consumption there are no charges applicable to the organization’s end. However, mobile data charges are applicable for learners while downloading the content based on their ISP.

Example: Let's assume an organization named Contoso is using  Community Training to upskill their employees. Cathy an employee of Contoso uses the mobile app for consuming training content and downloading videos for offline consumption. During this process, Contoso is not charged any video streaming cost when Cathy is viewing video content downloaded on the mobile app.

### What are the fixed and variable costs on the Community Training


* **Fixed Cost** :  The monthly licensing fee for the platform. 

* **Variable Cost** : This component consists of Azure Storage, Media Services, and Content Delivery Cost services used to store actual course content and stream content on the learner's device. The cost for these services is variable and depends upon the actual usage such as the amount of content stored, minutes of video content watched, etc.

For more details on pricing, [**go here**](https://communitytraining.microsoft.com/pricing/).

### When an organization opts for a phone-based login, who pays for the SMS charges?

The configuration of the phone based login is done via **ADB2C** tenant and the associated costs can be checked [**here**](https://azure.microsoft.com/pricing/details/active-directory-external-identities/#resources).  There could be carrier charges associated with the incoming SMS messaged.

### Are there any charges for course content streamed via external websites such as YouTube?

Community Training doesn't charge for bandwidth or streaming costs when the video content is played via external sites such as YouTube, Vimeo, etc.  

### Am I charged for Azure consumption even when learners are consuming content offline i.e. content is downloaded on the mobile application?

No. Once the content is downloaded on the device neither learner is charged for the mobile data when viewing the content nor customers are charged for any Azure consumption.


Please reach out to us [**via HelpDesk**](https://aka.ms/cthelpdesk) if you have any further queries.