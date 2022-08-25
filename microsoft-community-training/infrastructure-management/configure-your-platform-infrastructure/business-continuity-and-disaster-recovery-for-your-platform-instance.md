---
title: Business Continuity and Disaster Recovery for your Platform Instance
original-url: https://docs.microsoftcommunitytraining.com/docs/business-continuity-and-disaster-recovery-for-your-platform-instance
author: nikotha
ms.author: nikotha
description: Business Continuity and Disaster Recovery covers the aspect of service resiliency in case of an unfortunate event like Azure region going down.
ms.prod: learning-azure
---

# Business Continuity and Disaster Recovery for your Platform Instance

Business Continuity and Disaster Recovery covers the aspect of service resiliency in case of an unfortunate event like Azure region going down. In such event you can initiate failover and recover data stored in your Microsoft Community Training (MCT) deployment and the service can continue.

By default, MCT does not configure for data recovery or availability of a service if underlying Azure services or region in which MCT is deployed goes down. However, customers can follow certain steps to store data in an Azure paired region and use Active-Passive approach to enable disaster recovery for MCT service.

To set up for Business Continuity and Disaster Recovery, following are the step -

1. Create a replica deployment in a [paired region](/azure/best-practices-availability-paired-regions), for example “US EAST” and “US EAST2”
   Active - US EAST [https://demoenv-eus.azurewebsites.net/](https://demoenv-eus.azurewebsites.net/)
   Passive - US EAST2 [https://demoenv-eus2.azurewebsites.net/](https://demoenv-eus2.azurewebsites.net/)  
   It will create exact same set of azure resources and both the instances will be up and running

2. Enable Geo replication for Azure SQL primary, and create the replica database for the secondary SQL server

   ![Enable Geo replication](../../media/image%28291%29.png)

   ![secondary SQL server](../../media/image%28292%29.png)
  
3. Update the connection string (in secondary) to point to the new database

   ![Update the connection](../../media/image%28293%29.png)

   ![New database](../../media/image%28294%29.png)
  
   Once these steps are completed, you should be able to see the same data in the primary (Active) and the secondary (Passive) portal.
  
   | Active | Passive |
   | ---------------- | --- |
   | ![image_295](../../media/image%28295%29.png) |  ![image_297](../../media/image%28297%29.png) |
   | ![image_298](../../media/image%28298%29.png)   | ![image_299](../../media/image%28299%29.png)   |
  
4. Enable Geo replication for storage account. Here, the secondary region is predetermined and cannot be changed.

   ![secondary region](../../media/image%28300%29.png)

5. Store the storage connection string inside secondary’s KeyVault and then set it to app settings (secondary)

   ![Mix storage](../../media/image%28301%29.png)

   ![app setting](../../media/image%28302%29.png)

6. Allow secondary’s URL as allowed origin in CORS setting

   ![CORS setting](../../media/image%28303%29.png)

7. Now the learners and admins can consume the blob data

   ![consume the blob data](../../media/image%28304%29.png)

8. Azure media service does not support reading from Geo Redundant Storage, so the media assets from primary storage account must be copied to the new secondary storage account as per this [document](/azure/media-services/previous/media-services-implement-failover). And then same origin locator ID must be set for every asset.

   For Example,

   **New**: `https://demoenveus2amsbkaqcmuvy3-use2.streaming.media.azure.net/b81f3e36-2347-4e4e-a08a-e5ece1c0b372/Nature Beautiful short video 720.ism/manifest`

   **Old**: `https://demoenveusamsaichrqukbby-usea.streaming.media.azure.net/b81f3e36-2347-4e4e-a08a-e5ece1c0b372/Nature Beautiful short video 720.ism/manifest`

   | Active | Passive |
   | --- | --- |
   | ![image_306](../../media/image%28306%29.png) | ![image_305](../../media/image%28305%29.png) |
