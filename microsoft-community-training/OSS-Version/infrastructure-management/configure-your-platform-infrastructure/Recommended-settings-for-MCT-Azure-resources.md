---
title: MCT Azure resources settings(recommended)
original-url: https://docs.microsoftcommunitytraining.com/docs/MCT-Azure-resources-settings-recommended
author: v-nmadireddi
ms.author: v-nmadireddi
description: This article helps you configure the recommended azure resource settings for your MCT instance.
ms.prod: learning-azure
---

# Recommended settings for MCT Azure resources

Community training recommends few security settings to it's customers for the best use of azure resources.

## Azure Storage

Public access for blob should be disabled

1. Go to the storage account of your MCT instance by searching for it in the search box present in home page.


:::image type="content" source="../../media/Azure_res1.PNG" alt-text="Kindly open the storage account":::


2. In the storage account page, under settings click on configuration.

3. In configuration, ensure that blob public access is disabled.

:::image type="content" source="../../media/Azure_res2.PNG" alt-text="Please ensure that the blob public access is disabled":::

## Azure Key-vault

Soft delete and purge protection

1. Go to the key-vault of your MCT instance.

2. In the left menu, under settings click on properties.

3. Ensure that soft delete and purge protection is enabled.

:::image type="content" source="../../media/Azure_res3.PNG" alt-text="In properties, please enable soft delete and purge":::

## Azure SQL

1. Enable Microsoft defender for cloud

   a. Navigate to the SQL server page by searching for th SQL server name in the search bar present on home page.

   b. In the left menu, under security click on Microsoft defender for cloud.

   c. Ensure that the enablement status shows as enabled.

:::image type="content" source="../../media/Azure-res4.PNG" alt-text="The Enablement status should be enabled":::

2. Have admin for SQL server AD

   a. Navigate to the SQL server page .

   b. In the left menu, under settings click on Azure active directory.

   c. Ensure that there is an Azure active directory admin.

:::image type="content" source="../../media/Azure_res5.PNG" alt-text="Ensure that there is an Azure active directory admin":::
 

## App service

1. Go to the app service and in the left menu, under settings.

2. Click on configuration

   a. Ensure that FTP is set to FTPS only

   b. Scroll down and set HTTPS only to 'ON'

   c. TLS version should be 1.2

:::image type="content" source="../../media/Azure_res6.PNG" alt-text="Ensure that there is an Azure active directory admin":::


:::image type="content" source="../../media/Azure_res7.PNG" alt-text="Ensure that there is an Azure active directory admin":::
