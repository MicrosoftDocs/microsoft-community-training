---
title: MCT Azure resources settings(recommended)
original-url: https://docs.microsoftcommunitytraining.com/docs/MCT-Azure-resources-settings-recommended
author: v-nmadireddi
ms.author: v-nmadireddi
description: This article helps you configure the recommended azure resource settings of your MCT instance.
ms.prod: learning-azure
---

# Recommended settings for MCT Azure resources

Microsoft community training recommends few security settings to it's customers for the best use of azure resources.

## Azure Storage

Public access for blob should be disabled

1. Go to the storage account of your MCT instance by searching for it in the search box present in home page.

![Kindly open the storage account](https://file%2B.vscode-resource.vscode-cdn.net/c%3A/Users/v-nmadireddi/OneDrive%20-%20Microsoft/microsoft-community-training/microsoft-community-training/media/Azure_res1.png?version%3D1677422954730)

2. In the storage account page, under settings click on configuration.

3. In configuration, ensure that blob public access is disabled.

 ![Please ensure that the blob public access is disabled](https://file%2B.vscode-resource.vscode-cdn.net/c%3A/Users/v-nmadireddi/OneDrive%20-%20Microsoft/microsoft-community-training/microsoft-community-training/media/Azure_res2.png?version%3D1677423248853)

## Azure Key-vault

Soft delete and purge protection

1. Go to the key-vault of your MCT instance.

2. In the left menu, under settings click on properties.

3. Ensure that soft delete and purge protection is enabled.

![In properties, please enable soft delete and purge](https://file%2B.vscode-resource.vscode-cdn.net/c%3A/Users/v-nmadireddi/OneDrive%20-%20Microsoft/microsoft-community-training/microsoft-community-training/media/Azure_res3.png?version%3D1677423576096)

## Azure SQL

1. Enable Microsoft defender for cloud

   a. Navigate to the SQL server page by searching for th SQL server name in the search bar present on home page.

   b. In the left menu, under security click on Microsoft defender for cloud.

   c. Ensure that the enablement status shows as enabled.

![The Enablement status should be enabled](https://file%2B.vscode-resource.vscode-cdn.net/c%3A/Users/v-nmadireddi/OneDrive%20-%20Microsoft/microsoft-community-training/microsoft-community-training/media/Azure-res4.png?version%3D1677424210022)

2. Have admin for SQL server AD

   a. Navigate to the SQL server page .

   b. In the left menu, under settings click on Azure active directory.

   c. Ensure that there is an Azure active directory admin.

 ![Ensure that there is an Azure active directory admin](https://file%2B.vscode-resource.vscode-cdn.net/c%3A/Users/v-nmadireddi/OneDrive%20-%20Microsoft/microsoft-community-training/microsoft-community-training/media/Azure_res5.png?version%3D1677424462072)

## App service

1. Go to the app service and in the left menu, under settings.

2. Click on configuration

   a. Ensure that FTP is set to FTPS only

   b. Scroll down and set HTTPS only to 'ON'

   c. TLS version should be 1.2

![Alt text](https://file%2B.vscode-resource.vscode-cdn.net/c%3A/Users/v-nmadireddi/OneDrive%20-%20Microsoft/microsoft-community-training/microsoft-community-training/media/Azure_res6.png?version%3D1677425891030)

![Alt text](https://file%2B.vscode-resource.vscode-cdn.net/c%3A/Users/v-nmadireddi/OneDrive%20-%20Microsoft/microsoft-community-training/microsoft-community-training/media/Azure_res7.png?version%3D1677425914954)