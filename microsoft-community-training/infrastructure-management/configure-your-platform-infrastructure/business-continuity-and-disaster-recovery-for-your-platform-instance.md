---
title: Business Continuity and Disaster Recovery for your Platform Instance
original-url: https://docs.microsoftcommunitytraining.com/docs/business-continuity-and-disaster-recovery-for-your-platform-instance
author: nikotha
ms.author: nikotha
description: Business Continuity and Disaster Recovery covers the aspect of service resiliency in case of an unfortunate event like Azure region going down.
ms.prod: learning-azure
---

# Business Continuity and Disaster Recovery for your Platform Instance

Business Continuity and Disaster Recovery covers service resiliency in case of an unfortunate event like Azure region going down. If this happens you can initiate failover and recover data stored in your Community Training (CT) deployment and the service can continue.

By default, CT does not configure data recovery or availability of a service if the underlying Azure services or region in which CT is deployed goes down however, customers can store data in an Azure paired region and use an Active-Passive approach to enable disaster recovery for the CT service.

To set up Business Continuity and Disaster Recovery, follow these steps:

1. Create a replica deployment in a [paired region](/azure/best-practices-availability-paired-regions), for example “US EAST” and “US EAST2”
   Active - US EAST [https://demoenv-eus.azurewebsites.net/](https://demoenv-eus.azurewebsites.net/)
   Passive - US EAST2 [https://demoenv-eus2.azurewebsites.net/](https://demoenv-eus2.azurewebsites.net/). This will create duplicate azure resource and both instances will be up and running.

1. Enable Geo replication for Azure SQL primary, and create the replica database for the secondary SQL server.

   ![Enable Geo replication.](../../media/image%28291%29.png)

   ![secondary SQL server.](../../media/image%28292%29.png)
  
1. Update the connection string (in secondary) to point to the new database.

   ![Update the connection string.](../../media/image%28293%29.png)

   ![New database](../../media/image%28294%29.png)
  
   Once these steps are complete, you should be able to see the same data in the primary (Active) and the secondary (Passive) portal.
  
   | Active | Passive |
   | ---------------- | --- |
   | ![image of Active Portal](../../media/image%28295%29.png) |  ![Image of Passive Portal](../../media/image%28297%29.png) |
   | ![Active](../../media/image%28298%29.png)   | ![Passive](../../media/image%28299%29.png)   |
  
1. Enable Geo replication for the storage account. Here, the secondary region is predetermined and cannot be changed.

   ![Adding Secondary region.](../../media/image%28300%29.png)

1. Store the storage connection string inside the secondary KeyVault and then set it to app settings (secondary).

   ![Mix storage.](../../media/image%28301%29.png)

   ![App setting.](../../media/image%28302%29.png)

1. Set the secondary URL as an allowed origin in CORS setting.

   ![Image of CORS settings.](../../media/image%28303%29.png)

1. Now the learners and admins can consume the blob data.

   ![Example of content held in the blob data.](../../media/image%28304%29.png)

1. Azure media service doesn't support reading from Geo Redundant Storage, so the media assets from the primary storage account must be copied to the new secondary storage account as described in this [document](/azure/media-services/previous/media-services-implement-failover) and the same origin locator ID must be set for every asset.

   For Example,

   **New**: `https://demoenveus2amsbkaqcmuvy3-use2.streaming.media.azure.net/b81f3e36-2347-4e4e-a08a-e5ece1c0b372/Nature Beautiful short video 720.ism/manifest`

   **Old**: `https://demoenveusamsaichrqukbby-usea.streaming.media.azure.net/b81f3e36-2347-4e4e-a08a-e5ece1c0b372/Nature Beautiful short video 720.ism/manifest`

   | Active | Passive |
   | --- | --- |
   | ![Active portal](../../media/image%28306%29.png) | ![Passive portal](../../media/image%28305%29.png) |
