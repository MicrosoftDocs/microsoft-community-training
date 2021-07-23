---
title: Backup and recovery of your platform instance
original-url: https://docs.microsoftcommunitytraining.com/docs/backup-and-recovery
author: nikotha
ms.author: nikotha
description: As a Microsoft Community Training customer, we can ensure that in case of unforeseen failures and disasters, your data – which includes all your content, user data and other branding assets - is safe and secure.
ms.prod: azure
---

# Backup and recovery of your platform instance

As a Microsoft Community Training customer, we can ensure that in case of unforeseen failures and disasters, your data – which includes all your content, user data and other branding assets - is safe and secure. By default, Backup and Recovery is built-in. Refer [**this article**](/azure/backup/backup-overview) to learn more.


## Azure Key Vault
By default, Azure Key Vault has multiple layers of redundancy within the region where it is hosted, and it is replicated to another region within the same geopolitical region. All that high availability and resiliency of the service is built-in — as a customer, we don’t have to configure anything.  

## Azure Storage
The data in your Microsoft Azure storage account is always replicated to ensure durability and high availability. Azure Storage replication copies your data so that it is protected from planned and unplanned events ranging from transient hardware failures, network or power outages, massive natural disasters, and so on. You can choose to replicate your data within the same data center, across zonal data centers within the same region, and even across regions. 

Refer [**this article**](/azure/storage/common/storage-redundancy) to learn more about replication and how to enable it for your instance. 

## Azure SQL server
SQL Database automatically creates the database backups that are kept between 7 and 35 days, and uses [**Azure read-access geo-redundant storage \(RA-GRS\)**](/azure/storage/common/storage-redundancy-grs#read-access-geo-redundant-storage) to ensure that they are preserved even if the data center is unavailable. These backups are created automatically.

Refer [**this article**](/azure/sql-database/sql-database-automated-backups) to learn more.