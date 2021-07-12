---
title: Scale up your platform instance configuration
original-url: https://docs.microsoftcommunitytraining.com/docs/scale-up-instance-configuration
---
In this article, we'll walk you through upscaling your platform resources to meet your scale requirements.

@(Info)(Note)(Any changes in configuration and plans may impact your [**azure consumption costs**](https://docs.microsoftcommunitytraining.com/docs/monitor-your-infrastructure).)

## Azure App Service
### Introduction
Get more CPU, memory, disk space, and extra features like dedicated virtual machines (VMs), custom domains and certificates, staging slots, autoscaling, and more. You scale up by changing the pricing tier of the [**App Service plan**](https://docs.microsoft.com/en-us/azure/app-service/overview-hosting-plans) that your app belongs to. The scale settings take only seconds to apply and affect all apps in your App Service plan. They don't require you to change your code or redeploy your application.

### Steps to upgrade your Azure App Service
1. Login to your [**Azure portal**](portal.azure.com), go to Resource Groups from the left-menu.
![image.png](../../media/image%28118%29.png)


2. Click on the resource group belonging to your Microsoft Community Training instance.

3. Click on the Managed application instance.
![image.png](../../media/image%28107%29.png)

4. Click on Managed resource group link.
![image.png](../../media/image%28108%29.png)

5. Select the resource for your App Service (has -asp- in its name).
![image.png](../../media/image%28109%29.png)

6. Click **Scale up** from the left-menu.
![image.png](../../media/image%28110%29.png)

7. Select new tier of your choice and click on **Apply**.

## Azure SQL Database 
### Introduction
Mitigate performance issues by dynamically add more resources to your database with minimal downtime; however, there will be a switch over period where connectivity is lost to the database for a short amount of time, which can be mitigated using retry logic. Learn more [here](https://docs.microsoft.com/en-us/azure/sql-database/sql-database-scale-resources).

### Steps to upgrade your Azure SQL Database plan
1. Login to your [**Azure portal**](portal.azure.com), go to Resource Groups from the left-menu.
![image.png](../../media/image%28118%29.png)

2. Click on the resource group belonging to your Microsoft Community Training instance.

3. Click on the Managed application instance.
![image.png](../../media/image%28107%29.png)

4. Click on Managed resource group link.
![image.png](../../media/image%28108%29.png)

5. Select the resource for your App database (has -db- in its name)
![image.png](../../media/image%28111%29.png)

6. Click **Configure** from the left-menu.
![image.png](../../media/image%28112%29.png)

7. Use the DTUs slider to change tier and click on **Apply**.
