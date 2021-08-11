---
title: How to integrate with Power BI to build analytics reports
description: Provides the process for making suggestions or contributions to internal Content & Learning content guidance.
original-url: https://docs.microsoftcommunitytraining.com/docs/power-bi-integration
author: nikotha
ms.author: nikotha
ms.service: azure
ms.date: 07/21/2021
ms.topic: microsoft-community-training-guide
ms.custom: internal-contributor-guide
#<Customer intent: As a customer of Microsoft Community Training platform, I need to know how to use the different capabilities available on the platform for a learner and an administrator.
---

# Power BI Integration

Microsoft Community Training platform stores all customer data in the Azure SQL database which is part of customer's Azure Subscription. Customers can access the database to build custom reports (using analytics tools such as PowerBI) and run SQL queries for specific operations.

In this article, you will learn more about connecting Power BI with the Azure SQl Database to build custom reports for your organization.

## Prerequisites  

1. Administrator access to the Azure Portal where the Microsoft Community Training platform is hosted.
2. Azure SQL server User ID & Password. To view / retrieve your SQL Servers User ID & Password refer to [this document](database-schema.md).  
3. Storing Client IP to Firewall (If you are using a dynamic IP, make sure to add the same on the fire wall every time when it changes).
4. Access to Power BI Application in your organization.

## Step 1 - Obtaining Server Name

1. From your MCT’s SQL Database click on connection strings.

2. On the top bar select the option PHP.

    :::image type="content" source="../../media/image%28361%29.png" alt-text="select PHP on the nav bar":::

3. You will be able to view your SQL Databases server name and username (As highlighted in the below screen shoot)

## Step 2 – Connecting Power BI with MCT SQL Database

1. Open Power BI → click on the get data icon and select more.

    :::image type="content" source="../../media/image%28362%29.png" alt-text="Open Power BI, click on the get data icon and select more":::

2. Search and select Azure SQL database and click on the connect button.

    :::image type="content" source="../../media/image%28363%29.png" alt-text="Search and select Azure SQL database and click on the connect button":::

3. Enter your SQL DB server details and click on ok button.

    :::image type="content" source="../../media/image%28364%29.png" alt-text="Enter your SQL DB server details and click on ok button":::

4. Enter your database user name, password and click on the connect button

    :::image type="content" source="../../media/image%28365%29.png" alt-text="Enter your database user name, password and click on the connect button":::

5. Select the tables that you wanted to be imported and click on the load button. You may refer to our [Database schema](database-schema.md) for the entity relationship.

    :::image type="content" source="../../media/image%28366%29.png" alt-text="Select the tables to import and click on load button":::

6. Once you hit on load all your selected tables will be imported into Power Bi right pane and available under fields.

    :::image type="content" source="../../media/image%28367%29.png" alt-text="Loaded tables will be imported to PowerBI":::

7. Use the database schema from [this document](database-schema.md) to build relations required for your custom reporting requirements

> [!Tip]
> To get started, MCT provides customers with custom visualizations through Power BI Dashboard to effectively track learner’s progress across courses.
> [MCT PowerBI custom Dashboard.zip](https://github.com/MicrosoftDocs/microsoft-community-training/files/6966837/MCT.PowerBI.custom.Dashboard.zip) this folder has custom PowerBI dashboard and a step by step procedure to replace the data source to connect it with your database to get into out of the box insights from vizualizations. 


