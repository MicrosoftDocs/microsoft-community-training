---
title: Migrating from Public Preview to GA Version
original-url: https://docs.microsoftcommunitytraining.com/docs/microsoft-community-training-overview
author: Cbrahmandam
ms.author: cbms03
description: Community Training is an Azure-powered online learning platform to enable organizations of all sizes and types to run large scale training programs for their internal and external communities.
ms.service: azure
---
> [!IMPORTANT]  
> Community Training will reach end of support on Tuesday, April 7, 2026. No new deployments are available at this time. Existing Community Training customers will continue to receive security updates and technical support through Tuesday, April 7, 2026 at 11:59 pm. For more information or support, please reach out to our team here: https://aka.ms/cthelpdesk
# Migrating Community Training from Public Preview to General Availability
This document describes the process of migrating customer from CT public preview to CT version which is now generally available

> [!Note]  
> Please confirm the readiness of your instance for migration with the Community Training team before commencing the below steps. 

## Migration Process:

### Step 1: Create a new CT instance
Create a new Community Training resource via Azure Portal in your preferred subscription and any resource group of your choice. 

### Step 2: Contact CT team 
Contact CT support by raising a support request via the [helpdesk](https://aka.ms/cthelpdesk)
 and share the following information:

1.	New(GA) and existing(public preview) platform URL (typically of the form https://<your-platform-name>.azurefd.net).

2.	Consent to the Community Training team to access the existing Azure SQL database

3.	Specify if the existing Community Training platform is associated with a custom domain and provide the custom domain details if applicable

Post above steps, CT support team will notify you when migration is completed. 

>[!Note]  
> As part of migration, all persistent data generated on the existing Community Training platform will be moved to the new respective instances created in step 1. In short, all your assets (users, content, user progress etc.) will be moved to the newly created platform.



**You will need to perform additional steps depending on the scenarios below.**

## Scenario 1:  Custom domain associated with existing Community Training platform.
##### CT Team Action: 
CT team will update the necessary Azure infrastructure with the custom domain provided.

##### Customer Action: 
Update DNS mapping from the existing CT platform URL (typically of the form <your-platform-name>.azurefd.net) to the new one. This must be done as specified by the Domain Name provider.  
>

## Scenario 2:  Using Community Training REST APIs using Service-to-Service authentication
##### Customer Action: 
Please Refer to the steps listed in [this document](Enable-API-using-S2S-for-GA.md).
##### CT Team Action: 
CT will do the necessary step based on support ticket raised as part of above steps.  

>
## Scenario 3 : Using Community Training SQL data for Power BI/Analytics

##### Customer Action:    
Please refer to the steps listed in [this document](Enabling-Data-Export.md)


##### CT Team Action:  
 CT will do the necessary step based on support ticket raised as part of above steps.  
>
## Scenario 4: Using Community Training events
##### Customer Action: 
Please refer to the steps listed in [this document](Learner-Events.md).  
##### CT Team Action: 

CT will do the necessary step based on support ticket raised as part of above steps.    

>
## FAQs
#### If you have additional questions, please refer to the [FAQs section for Migration](Migration-FAQs.md). 
You are always welcome to reach out to the CT Team via the [Helpdesk](https://aka.ms/cthelpdesk).

