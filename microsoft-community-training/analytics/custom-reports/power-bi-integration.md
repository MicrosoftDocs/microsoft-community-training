---
title: How to integrate with Power BI to build analytics reports
description: Provides the process for making suggestions or contributions to internal Content & Learning content guidance.
original-url: https://docs.microsoftcommunitytraining.com/docs/power-bi-integration
author: nikotha
ms.author: nikotha
ms.service: power-bi-embedded
ms.date: 07/21/2021
ms.topic: conceptual
ms.custom: internal-contributor-guide
#<Customer intent: As a customer of Microsoft Community Training platform, I need to know how to use the different capabilities available on the platform for a learner and an administrator.
---

# Power BI Integration

Community Training stores all customer data in the Azure SQL database which is part of your Azure Subscription. You can access the database to build custom reports (using analytics tools such as Power BI) and run SQL queries for specific operations.

In this article, you will learn more about connecting Power BI with Azure SQL Database to build custom reports for your organization.

## Connect to Power BI

### Prerequisites  

1. An Administrator who can access the Azure Portal where Community Training is hosted.
2. Azure SQL server User ID & Password. To view/retrieve your SQL Servers User ID & Password, refer to [this document](database-schema.md).  
3. Store Client IP to Firewall (if you are using a dynamic IP, make sure to add the same one on the firewall whenever it changes).
4. Access to the Power BI Application in your organization.

### Step 1 - Obtaining Server Name

1. Go to your Community Training SQL Database, and select **connection strings**.

2. On the top bar select the **PHP** option.

    :::image type="content" source="../../media/image%28361%29.png" alt-text="A screenshot showing how to select PHP on the nav bar.":::

3. You will be able to view your SQL Databases server name and username.

### Step 2 – Connecting Power BI with CT SQL Database

1. Open Power BI, select the **Get data** icon thenn select **More**.

    :::image type="content" source="../../media/image%28362%29.png" alt-text="A screenshot showing how to open Power BI, click on the get data icon and select more.":::

2. Search and select **Azure SQL database** then select **Connect** .

    :::image type="content" source="../../media/image%28363%29.png" alt-text="A screenshot showing how to search and select Azure SQL database and click on the connect button.":::

3. Enter your SQL DB server details and select **OK**.

    :::image type="content" source="../../media/image%28364%29.png" alt-text="A screenshot showing how to enter your SQL DB server details and click on ok button.":::

4. Enter your database user name, and password then select **Connect**.

    :::image type="content" source="../../media/image%28365%29.png" alt-text="A screenshot showing how to enter your database user name, and password and click on the connect button.":::

5. Select the tables that you want to be imported and select **Load**. You may refer to the [Database schema](database-schema.md) for the entity relationship.

    :::image type="content" source="../../media/image%28366%29.png" alt-text="Select the tables to import and click on load button":::

6. All your selected tables will be imported into Power BI, and become available under fields:

    :::image type="content" source="../../media/image%28367%29.png" alt-text="A screenshot showing how to loaded tables imported to Power BI.":::

7. Use the database schema from [this document](database-schema.md) to build relations required for your custom reporting requirements.

## Sample Power BI Reports

To help you get started on creating your own Power BI reports here are some samples. These sample reports with their interactive visualizations can be used to create further customized reports for your specific requirements.

The pbix files for the sample reports can be downloaded from here:

>[**CT Power BI custom Dashboard.zip**](https://github.com/MicrosoftDocs/microsoft-community-training/files/7013084/MCT_Sample.Reports.Power BI.zip)

To be able to start using this dashboard you will need to replace the existing data source and connect the .pbix file with your own [**Database**](database-schema.md).

### Steps to replace data source in the Power BI dashboard

If you already have your credentials for connecting to DB then proceed to step 3.

1. Using [**connection strings**](#step-1---obtaining-server-name) get your server name, database username, and database name.

2. Obtain your password by [**Accessing Key Vault**](database-schema.md#accessing-key-vault).

3. Once you have credentials, server name, and database name, you can go ahead and replace the data source in the dashboard provided. To do this you need to have [**Power BI**](/power-bi/fundamentals/desktop-getting-started) installed.

4. Open the .pbix file from the [**MCT Power BI custom Dashboard.zip**](https://github.com/MicrosoftDocs/microsoft-community-training/files/7013084/MCT_Sample.Reports.Power BI.zip) that you downloaded and open it from your Power BI Desktop and select **File** from menu bar.

    :::image type="content" source="../../media/BI_file.jpg" alt-text="A screenshot showing the file.":::

5. Select **Options and Settings > Data Source Settings**.

    :::image type="content" source="../../media/BI_settings.jpg" alt-text="A screenshot showing settings.":::

6. Select the data source that you want to replace, and select **Change Source**.

    :::image type="content" source="../../media/BI_source.jpg" alt-text="A screenshot showing data source.":::

7. Fill in your server name and database name.

    :::image type="content" source="../../media/BI_server.jpg" alt-text="A screenshot showing a server.":::

8. Provide your login credentials that you collected from Azure Key vault, and make sure you have your server name selected from the **Select which level to apply these settings to** dropdown :

    :::image type="content" source="../../media/BI_credentials.jpg" alt-text="A screenshot showing credentials.":::

9. Once connected, you need to apply pending changes and select refresh for the dashboard to reflect the newly connected data source.

    :::image type="content" source="../../media/BI_Refresh.jpg" alt-text="A screenshot showing the refresh option.":::

>[!Note]
>If you receive a firewall error while replacing a data source, you may need to add your IP address to the firewall.
>
>![A screenshot showing firewall selection.](../../media/firewal%20select.png)
>
>To add client IP, click on add client IP and select the save icon.
>
>![A screenshot showing how to save.](../../media/FIREWAL.png)
