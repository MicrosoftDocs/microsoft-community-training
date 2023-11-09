---
title: MCT Azure resources settings(recommended)
original-url: https://docs.microsoftcommunitytraining.com/docs/MCT-Azure-resources-settings-recommended
author: v-nmadireddi
ms.author: v-nmadireddi
description: This article helps you configure the recommended azure resource settings for your CT instance.
ms.prod: learning-azure
---

# Recommended settings for MCT Azure resources

Community Training (CT) recommends few security settings to it's customers for the best use of azure resources.

## Azure Storage

Public access for blob should be disabled.

1. Go to the storage account of your CT instance by searching for it in the search box present in home page.

    :::image type="content" source="../../media/Azure_res1.PNG" alt-text="Kindly open the storage account":::

1. In the storage account page, under settings select configuration.

1. In configuration, ensure that blob public access is disabled.

    :::image type="content" source="../../media/Azure_res2.PNG" alt-text="Please ensure that the blob public access is disabled":::

## Azure Key-vault

Soft delete and purge protection

1. Go to the key-vault of your CT instance.

1. In the left menu, under settings select properties.

1. Ensure that soft delete and purge protection is enabled.

    :::image type="content" source="../../media/Azure_res3.PNG" alt-text="In properties, please enable soft delete and purge":::

## Azure SQL

1. Enable Microsoft defender for cloud

   1. Navigate to the SQL server page by searching for th SQL server name in the search bar present on home page.

   1. In the left menu, under security select Microsoft defender for cloud.

   1. Ensure that the enablement status shows as enabled.

    :::image type="content" source="../../media/Azure-res4.PNG" alt-text="The Enablement status should be enabled":::

1. Have admin for SQL server AD

   1. Navigate to the SQL server page .

   1. In the left menu, under settings click on Azure active directory.

   1. Ensure that there is an Azure active directory admin.

    :::image type="content" source="../../media/Azure_res5.PNG" alt-text="Ensure that there is an Azure active directory admin":::

## App service

1. Go to the app service and in the left menu, under settings.

1. Click on configuration

   1. Ensure that FTP is set to FTPS only

   1. Scroll down and set HTTPS only to 'ON'

   1. TLS version should be 1.2

    :::image type="content" source="../../media/Azure_res6.PNG" alt-text="Ensure that there is an Azure active directory admin":::

    :::image type="content" source="../../media/Azure_res7.PNG" alt-text="Ensure that there is an Azure active directory admin":::
