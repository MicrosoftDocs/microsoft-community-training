---
original-url: https://docs.microsoftcommunitytraining.com/docs/power-bi-integration
author: nikotha
ms.author: nikotha
---

# Power BI Integration

Microsoft Community Training platform stores all customer data in the Azure SQL database which is part of customer's Azure Subscription. Customers can access the database to build custom reports (using analytics tools such as PowerBI) and run SQL queries for specific operations.

In this article, you will learn more about connecting Power BI with the Azure SQl Database to build custom reports for your organization.

## Prerequisites  

1. Administrator access to the Azure Portal where the Microsoft Community Training platform is hosted.
2. Azure SQL server User ID & Password. To view / retrieve your SQL Servers User ID & Password refer to [this document](./3_database-schema).  
3. Storing Client IP to Firewall (If you are using a dynamic IP, make sure to add the same on the fire wall every time when it changes).
4. Access to Power BI Application in your organization.

## Step 1 - Obtaining Server Name

1. From your MCT’s SQL Database click on connection strings.

2. On the top bar select the option PHP.

    ![image.png](../../media/image%28361%29.png)

3. You will be able to view your SQL Databases server name and username (As highlighted in the below screen shoot)

## Step 2 – Connecting Power BI with MCT SQL Database

1. Open Power BI → click on the get data icon and select more.

    ![image.png](../../media/image%28362%29.png)

2. Search and select Azure SQL database and click on the connect button.

    ![image.png](../../media/image%28363%29.png)

3. Enter your SQL DB server details and click on ok button.

    ![image.png](../../media/image%28364%29.png)

4. Enter your database user name, password and click on the connect button 

    ![image.png](../../media/image%28365%29.png)

5. Select the tables that you wanted to be imported and click on the load button. You may refer to our [Database schema](./3_database-schema) for the entity relationship.

    ![image.png](../../media/image%28366%29.png)

6. Once you hit on load all your selected tables will be imported into Power Bi right pane and available under fields.
    ![image.png](../../media/image%28367%29.png)

7. Use the database schema from [this document](./3_database-schema) to build relations required for your custom reporting requirements
