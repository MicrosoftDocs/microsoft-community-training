---
title: Migration FAQs
original-url: https://docs.microsoftcommunitytraining.com/docs/microsoft-community-training-overview
author: Cbrahmandam
ms.author: cbrahmandam
description: Community Training is an Azure-powered online learning platform to enable organizations of all sizes and types to run large scale training programs for their internal and external communities.
ms.service: azure
---

This document answers the fewquently asked questions about the Migration to the GA Version of the Community Training. You can always reach out to our [helpdesk](https://aka.ms/cthelpdesk) if you have any additional questions or concerns. 

### 1. When will Public Preview version of Community Training end?
  Effective June 30, 2024, Community Training’s Public Preview service will no longer be supported by Microsoft and will have limited functionality.  
  
### 2.	What are the limited functionalities associated with the end of the Public Preview version?  

Limited functionality means any active deployments on Community Training’s Public Preview service will not receive general updates, including stability updates. Your organization will not have access to streaming media content loaded to your instance(s) via Azure Media Services and technical support will not be offered to those organizations continuing to utilize the Public Preview version.
 
### 3.	Why should I migrate versions - is there a difference between the Public Preview and Generally Available (GA) versions of Community Training?

We encourage you to migrate to the now Generally Available version of [Community Training](https://communitytraining.microsoft.com/). This version is a first-party Azure Service that has enhanced security, stability and reliability, access to subscription information, and is all available through Azure Portal. Additionally, the Generally Available version will receive general updates and technical support.

### 4.	Will I lose access to content on the Public Preview version of Community Training?

If you choose not to migrate and continue to use the Public Preview version you will not lose content loaded to your instance. It’s important to note that you will not have technical support, updates, or be able to access video or media content previously loaded to your organization’s instance(s).

### 5. Will migration to the GA version of Community Training affect our content, content language, or other assets on my instance(s) of Community Training?  

If you choose to migrate to the GA version of Community Training, all your content, including assets, media, user training progress, and data will be transitioned to the new version. Your organization will not lose any functionality, nor will the look and feel of your content change. Everything remains the same – we simply move your content to the new service version.

### 6.	What is the price for the Community Training service?     

To utilize Community Training, your organization must pay a monthly licensing fee. This fee is $800 for commercial organizations and $400 for approved nonprofit organizations. In addition to this monthly fee, your organization must pay Azure consumption cost for usage and hosting of your service. You can review the [pricing structure](https://communitytraining.microsoft.com/pricing/) and simulate potential cost with the licensing fee and Azure consumption cost.

### 7.	Are there Community Training licensing discounts for education or government organizations?   

If you are an educational or governmental organization providing philanthropic services, ensure that you have been verified as a nonprofit on our [Getting Started page](https://nonprofit.microsoft.com/en-us/getting-started). Once approved you can access Community Training nonprofit license pricing and other discounts and grants based on your organization’s need. 

### 8.	Are there other costs associated with Community Training migration?  

There are no additional costs associated with migrating your organization’s Community Training instance(s) and associated content. This service is provided free of cost and is part of our support to ensure customers are able to continue using Community Training in its Generally Available form.

### 9. When will migration occur for my organization’s content?  

Migration to the GA version of Community Training is based on each organization’s desired timeline. Please recall support for the Public Preview version ends June 30, 2024 – please plan accordingly. Our team is here to support your migration needs – should you have questions, please contact us as needed.

### 10.	How long does migration take to complete?  

Typically, the migration process that the Community Training team will take 2-3 hours. However, this can vary with the amount of data that has been generated on the existing Community Training platform.
Assuming total user count of up to 2 million and total media (including video and audio) lessons up to 250, the migration will be completed in 2-3 hours. In case the thresholds are exceeded for your Community Training platform, additional time may be required for your new Community Training platform to be completely usable.
During the migration process, it is recommended not to use the Community Training existing platform
 
  
### 11.	Will there be support offered during migration?

Our team will be available to support your migration needs and will provide a migration guide to help easily initiate your migration.

### 12.	What will happen to my APIs within Community Training?  

We will share with you steps to use same APIs with GA version as part of migration process

### 13.	Why will media content stop working after June 30th?  

Community training uses [Azure Media Service (AMS)](https://azure.microsoft.com/en-us/products/media-services/) to support media content. AMS is retiring on 30th June’24 s per [Azure Media Services retirement guide | Microsoft Learn](https://learn.microsoft.com/en-us/azure/media-services/latest/azure-media-services-retirement). While GA version will remove dependency on AMS to support media content, however preview version continues to use AMS. Hence post AMS retirement media content work with preview version

### 14. Why am I not able to create a new Community Training resource with the existing platform name (for e.g. existing name fabrikamlearning, new name fabrikamlearning)?  

This is because Azure reserves the name as a DNS record. Since DNS records must be unique, you cannot create the new Community Training resource with the existing platform name.

