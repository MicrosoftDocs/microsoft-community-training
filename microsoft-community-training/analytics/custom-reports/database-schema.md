---
title: Database Schema
original-url: https://docs.microsoftcommunitytraining.com/docs/database-schema
author: nikotha
ms.author: nikotha
description: Community Training  stores all customer data in the Azure SQL database which is part of customer's Azure Subscription.
ms.prod: learning-azure
---

# Database Schema

Community Training stores all customer data in the Azure SQL database which is part of your Azure Subscription. You can access the database to build custom reports (using analytics tools such as PowerBI) and run SQL queries for specific operations.

In this article, you will learn more about the platform's database schema and its components and usage.

## Database Schema Overview

[**Community Training - DB Schema Overview.pdf**](https://github.com/MicrosoftDocs/microsoft-community-training/files/12378831/Microsoft.Community.Training_DB.Schema_Aug.2023.pdf)


### Previous Versions

* [**Community Training - DB Schema Overview_Aug_2023.pdf**](https://github.com/MicrosoftDocs/microsoft-community-training/files/12378831/Microsoft.Community.Training_DB.Schema_Aug.2023.pdf)

* [**Community Training - DB Schema Overview_Mar_2023.pdf**](https://github.com/MicrosoftDocs/microsoft-community-training/files/10917137/MCT_DB.Schema_Mar.2023.pdf)


* [**Community Training - DB Schema Overview_Aug_2022.pdf**](https://github.com/MicrosoftDocs/microsoft-community-training/files/9754128/MCT_DB.Schema_Aug2022.pdf)

* [**Community Training - DB Schema Overview_May_2022.pdf**](https://github.com/MicrosoftDocs/microsoft-community-training/files/8511863/MCT_DB_Schema_Apr2022.pdf)

* [**Community Training - DB Schema Overview_Jan_2022.pdf**](https://github.com/MicrosoftDocs/microsoft-community-training/files/7889844/MCT_DB_Schema_Jan2022.pdf)

* [**Community Training - DB Schema Overview_Oct_2021.pdf**](https://github.com/MicrosoftDocs/microsoft-community-training/files/7581669/MCT_DB_Schema_Oct2021.pdf)

## Accessing Database

The following are the two ways to access the CT Database:

### Method 1: Using Connection string

Go to the CT portal's SQL database from the Managed resource group (Find the dapclp-db-xxxxxxxxx SQL database).
Select **Setting > Connection strings** to get the connection strings for the SQL database:

   ![A screenshot of Settings.](../../media/image%28346%29.png)

### Method 2: Use Username and Password (Online Azure query editor)

Go to the CT portal's SQL database from the managed resource group (Find the dapclp-db-xxxxxxxxx SQL database).

1. Select **Query Editor**.

    ![A screenshot of the Query Editor.](../../media/image%28347%29.png)

2. This query editor will ask for a username and password that can be retrieved from the key vault. Go to the resource group and select your key vault.

    ![A screenshot of key vault.](../../media/image%28348%29.png)

## Accessing Key Vault

> [!IMPORTANT]  
> If you are facing a key vault issue when trying to get the password of the Admin user for the CT Database in Azure, and you get the error - "The operation “List” is not enabled in this key vault’s access policy"- then perform the following steps:

Go to the key vault (sign in to your [Azure portal](https://ms.portal.azure.com/), search and select **Key vaults**, and select the key vault corresponding to your application's resource group). By default, the user does not have access permission to view the keys, secrets, and certificate information stored in the key vault. To gain access, do the following:

1. Select **Access Policies** from the Key Vault resource pane:

    ![A screenshot of Access Policies.](../../media/image%28349%29.png)

2. Select **+ Add Access Policy** at the top of the pane:

    ![A screenshot of access policy.](../../media/access%20policy%201.png)

3. Select **Secret Management** in Configure from the template (optional) pane:

    ![A screenshot of access policy secret.](../../media/access%20policy%20secret.png)

4. Choose **Select Principal** to select the email address you used to sign in.

5. Save changes.

6. Go to Secrets.

7. Find the username and password.

    ![A screenshot of how to find the username and password.](../../media/image%28350%29.png)

8. Select the password as shown in the above screenshot.

9. Select the current version, and select **Show Secret Value** in the right pane. You can then see the Password for the selected item:

    **Note**: You may need to add your IP address in Firewall.

    ![A screenshot of firewall selection.](../../media/firewal%20select.png)

10. To a add client IP, select **Add client IP** and select **Save**:

    ![A screenshot shoiwng how to safe.](../../media/FIREWAL.png)

## Executing SQL Queries

1. To run a SQL query, go to your Azure portal and select  **Query editor**:

    ![A screenshot of the Query Editor.](../../media/image%28353%29.png)

2. The admin login to the above portal can be obtained from the **Key vault**. See [A screenshot showing how to access Key vault.](./database-schema.md#accessing-key-vault) section for more details.

    ![A screenshot showing how to access Key vault.](../../media/image%28354%29.png)
