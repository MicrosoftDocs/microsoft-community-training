---
title: Azure IOT Hub Initial Setup
original-url: https://docs.microsoftcommunitytraining.com/docs/learning-in-offline-mode
author: cbrahmandam
ms.author: cbrahmandam
description: This article explains how learners can access the training content in offline mode and initial setup of Azure IOT hub
ms.service: azure
---
> [!IMPORTANT]  
> Community Training will reach end of support on Tuesday, April 7, 2026. No new deployments are available at this time. Existing Community Training customers will continue to receive security updates and technical support through Tuesday, April 7, 2026 at 11:59 pm. For more information or support, please reach out to our team here: https://aka.ms/cthelpdesk
# Azure IOT Hub Initial Setup

Offline Learning in  Community Training uses Azure IoT Hub to create a network of edge devices that can act as individual hubs that learners can connect to, and experience online learning in an environment with no internet connection.

This document details the steps to set up Azure IoT hub in your Azure subscription. The IoT Hub will be deployed as a new resource in a new resource group. These steps need to be followed on the device that will be used to configure Linux-based edge devices which will work in Offline mode. You can run these steps on a device with the Windows operating system.

## Pre-requisite for Hub Setup

Download the setup files from [**this link**](https://sangamapps2.blob.core.windows.net/mctoffline/Setup_Files_v2.zip). The size of the zip file is around 470MB. You will need to later transfer some of these files to the edge devices.

## Step 1: Container Registry Setup

1. [**Install docker on a machine**](https://docs.docker.com/desktop/#download-and-install). This machine could be running on any operating system such as Windows, or Linux. You will not need to repeat this step when setting up edge devices going forward.

2. Open command prompt and browse to the folder path: ` /windows-server/administration/windows-commands/cd)` containing these images. For example: `cd C:\ctimages` on Windows.

3. Perform the steps to [**Create a container registry in Azure**](/azure/container-registry/container-registry-get-started-portal) and upload the above 3 images onto the container registry.

4. The following is a sample of the above steps required to load and push an image. These need to be done for each of the three images.

    :::image type="content" source="../media/image(445).png" alt-text="container":::

    >[!Note]  
    > The steps need to be followed for all three images:
    >
    >```info
    > 1. <ContainerRegistryName>.azurecr.io/mctwebsite:1.0
    > 2. <ContainerRegistryName>.azurecr.io/loginserver:1.0
    > 3. < ContainerRegistryName >.azurecr.io/server:1.0

5. After the images are loaded into the Azure Container Registry,  the Azure Container Registry will look as follows:

    :::image type="content" source="../media/image(446).png" alt-text="Azurecontainerregistry":::

## Step 2: Azure IoT Hub Setup

Follow the steps to [**Create an Azure IoT Hub**](/azure/iot-hub/iot-hub-create-through-portal) . Note that you only need to follow the steps under the Create an IoT Hub sub-heading from this link.

## Step 3: Configure  Deployment File

The zip file downloaded in the pre-requisites section of this document contains a file named `mctdeployment.json`. The steps in this section are to configure this file for setup. The configured file will be used to set up the edge devices in Azure IoT Hub.

>[!Note]  
>The deployment file requires configuring some passwords. For the initial version, we can assume that all the devices would use the same set of passwords for data sources like SQL, or Storage, and use the same password for certificates. Therefore, the same `mctdeployment.json` file could be used to deploy on all devices. We will restrict the security of these resources in subsequent releases.

### Step 3.1:  Configure Azure container registry credentials

Perform the steps in [**this article**](/azure/container-registry/container-registry-authentication) to retrieve the username and password for Azure Container Registry created in Step 2 and edit the following values in the deployment file.

 :::image type="content" source="../media/image(447).png" alt-text="Configure Azure":::

### Step 3.2: Configure Azure SQL Edge

Create a password of your choice and update its value against <SQL_PASSWORD> in the deployment file. Ensure that the password is greater than eight characters and meets [**these requirements**](/sql/relational-databases/security/password-policy?view=sql-server-ver15&preserve-view=true).

### Step 3.3: Configure Azure Blob Storage on IoT Edge (BlobEdge)

Generate a 64-byte base64 key and update its value against <STORAGE_ACCOUNT_KEY> in the deployment file. You can generate a key with tools like [GeneratePlus](https://generate.plus/en/base64). You'll use these credentials to access the blob storage from other modules.

### Step 3.4 Configure loginserver Section

Update the following values in the loginserver section of the deployment file.

1. <REGISTRY_NAME> : Name of the Azure container registry as configured above.

2. <LOGINSERVER_SQL_CONNECTION_STRING> : Replace this value with the following string, replacing the value of <SQL_PASSWORD> as configured in Step 3.2: Configure Azure SQL Edge.

    ```Connection String
    Server=sqledge;Initial Catalog=loginserver;Persist Security Info=False;User ID=sa;Password=<SQL_PASSWORD>;MultipleActiveResultSets=False;Encrypt=False;TrustServerCertificate=True;Connection Timeout=30;
    ```

### Step 3.5 Configure mctwebsite Section

Update the following values in the mctwebsite section of the deployment file.

1. <REGISTRY_NAME>: Name of the Azure Container Registry as configured above.

2. <MCTWEBSITE_SQL_CONNECTION_STRING> : Replace this value with the following string, replacing the value of <SQL_PASSWORD> as configured in Step 3.2: Configure Azure SQL Edge.

    ```Connection String
    metadata=res://*/Mlx.csdl|res://*/Mlx.ssdl|res://*/Mlx.msl;provider=System.Data.SqlClient;provider connection string='Data Source=tcp:sqledge;Initial Catalog=mctwebsitedb;Persist Security Info=False;User Id=sa;Password=<SQL_PASSWORD>;MultipleActiveResultSets=True;Encrypt=False;TrustServerCertificate=True;Connection Timeout=30;App=EntityFramework'
    ```

3. <STORAGE_CONNECTION_STRING>:  Replace this value with the following string, replacing the value of <STORAGE_ACCOUNT_KEY> as configured in Step 3.3: Configure Azure Blob Storage on IoT Edge (BlobEdge).

    ```Connection String
    DefaultEndpointsProtocol=http;BlobEndpoint=http://blobedge:11002/mctstorage;AccountName=mctstorage;AccountKey=<STORAGE_ACCOUNT_KEY>
    ```

4. <ADMIN_DETAILS>: Replace this value with the admin details which will be assigned as the deployment administrator. The value will be a pair of id-password. For example:  "1111111111-000000" where 1111111111 is the username which needs to be entered on the first screen, and 000000 is the password which needs to be entered on the second screen while signing in.

5. <SQL_USERNAME>: Username configured in sqledge

6. <SQL_PASSWORD>: Same as <SQL_PASSWORD> configured in sqledge

### Step 3.6: Configure server Section

Update the following values in the server section of the deployment file.

1. <REGISTRY_NAME> : Name of the Azure Container Registry as configured above.

2. < USERNAME > : Replace this value with the computer name when deploying on the device.
