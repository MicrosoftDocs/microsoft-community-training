---
original-url: https://docs.microsoftcommunitytraining.com/docs/database-schema
author: nikotha
ms.author: nikotha
---

# Database Schema

Microsoft Community Training platform stores all customer data in the Azure SQL database which is part of customer's Azure Subscription. Customers can access the database to build custom reports (using analytics tools such as PowerBI) and run SQL queries for specific operations.

In this article, you will learn more about the platform's database schema and its components and usage.

## Accessing Database

Following are the two ways to access the MCT Database,

### Method 1: Using Connection string

Go to the MCT portal's SQL database from the Managed resource group (Find the dapclp-db-xxxxxxxxx SQL database).
Click on Setting -> Connection strings to get the connection strings for the SQL database, as in the below image,
    ![image.png](../../media/image%28346%29.png)

### Method 2: Use Username and Password (Online Azure query editor)

Go to the MCT portal's SQL database from the Managed resource group (Find the dapclp-db-xxxxxxxxx SQL database).

1. Select Query Editor

    ![image.png](../../media/image%28347%29.png)

2. This query editor will ask for username and password that can be retrieved from key-vault. (Go to resource group and select key vault).

    ![image.png](../../media/image%28348%29.png)

## Accessing Key Vault

> [!IMPORTANT] If you are facing a “Key Vault” issue when trying to get password of Admin user for MCT Database in Azure with the error - "The operation “List” is not enabled in this key vault’s access policy" also please follow the following steps.

Go the key vault. By default, user does not have access permission to view the keys, secrets and Certificate information stored in Key Vault. To gain access, follow below steps,

1. Select Access Policies from the Key Vault resource blade (See below screenshot, In setting Tab there is Access policies)

    ![image.png](../../media/image%28349%29.png)

2. Click the [+ Add Access Policy] button at the top of the blade

    ![access policy 1](../../media/access%20policy%201.png)

3. Select Secret Management” in Configure from template (Optional)

    ![access policy secret](../../media/access%20policy%20secret.png)

4. Click Select Principal to select Email address you signed in.

5. Save changes

6. Go to the Secrets

7. Find username and password

    ![image.png](../../media/image%28350%29.png)

8. Select the password as shown in above screenshot.

9. Then click on the current version, click on "Show Secret Value" button in the right pane, you can see the Password for the selected item

**Note**: You may need to add your IP address in Firewall.

![firewal select](../../media/firewal%20select.png)

To add client IP, click on add client IP and select the save icon

![FIREWAL](../../media/FIREWAL.png)

## Executing SQL Queries

1. To run a SQL query go to your Azure portal and click on **Query editor**

    ![image.png](../../media/image%28353%29.png)

2. The admin to login to the above portal can be obtained from **Key vault**. See [accessing Key vaults](./3_database-schema#accessing-key-vault) section for more details.

    ![image.png](../../media/image%28354%29.png)
