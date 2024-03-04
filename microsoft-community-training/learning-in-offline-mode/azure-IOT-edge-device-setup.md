---
title: Azure IOT Edge Device Setup
original-url: https://docs.microsoftcommunitytraining.com/docs/learning-in-offline-mode
author: cbrahmandam
ms.author: cbrahmandam
description: This article explains how to setup IoT edge Device to enable offline learning
ms.service: azure
---

# Azure IOT Edge Device Setup

Edge devices using Offline Learning with Community Training will act as hub devices for learners. These devices must be Linux machines running Ubuntu 18.04 version. Once set up, they can be used for training administration in Offline mode.

Ensure that you have followed the steps in the [**Azure IOT Hub Initial Setup**](azure-IOT-hub-initial-setup.md) before completing the following steps. The configuration files updated in there will be used when setting up the edge devices.

## Step 1: Register a New Device in IoT Hub

Follow [**the steps in this document**](/azure/iot-edge/how-to-register-device?view=iotedge-2018-06&tabs=azure-portal) to register a new device in the Azure IoT Hub.

## Step 2: Install Azure IoT

Perform [**the steps to install Azure IoT on a Linux device**](/azure/iot-edge/how-to-install-iot-edge?view=iotedge-2018-06).

## Step 3: Generate Certificate

This step is required for generating SSL certificates for successful HTTPS connections:

1. The corresponding certificate files need to be named as certificate.cert and certificate.key.
2. A third file named password.txt also needs to be present which contains the password for the certificate.
3. These 3 files need to be stored in the path: /home/< username >/certificates/server/, where < username > is the machine username provided when configuring the deployment template JSON file.
4. Make changes to the /etc/hosts file such that the new domain points to 127.0.0.1.
5. Replace all occurrences of 127.0.0.1 in the deployment template file with the new domain configured for this deployment.

>[!Note]  
> For testing purposes, a self-signed certificate for 127.0.0.1 can also be used. [**Follow the steps**](/dotnet/core/additional-tools/self-signed-certificates-guide) in this document to generate a self-signed certificate in Linux using OpenSSL.
>
>If there is no certificate password, the password.txt file can be left blank.
>
>In this case, do not change the 127.0.0.1 values in the deployment template file.

## Step 4: Deploy to device using Azure IoT

Perform the steps to [**Deploy Azure IoT Edge modules with Azure CLI**](/azure/iot-edge/how-to-deploy-modules-cli?view=iotedge-2018-06) to deploy the mctdeployment.json file configured in the Step 3 of the [**Azure IoT Hub Initial Setup documentation**](/azure/industry/training-services/microsoft-community-training/learning-in-offline-mode/azure-iot-hub-initial-setup#step-3-configuring-deployment-file) to the Linux edge device.

>[!IMPORTANT]  
>This step should be done in the device where the [**Azure IoT Hub Initial setup**](azure-IOT-hub-initial-setup.md) was done.

## Step 5: Ensure Successful Deployment

Wait until the deployment is successful. The device status for the deployment can be checked using Azure IoT Hub in the Azure portal. All seven modules should be visible under the device created above. Some devices might not be in the running state initially. After a couple of minutes, all seven modules should be running to ensure successful deployment.

:::image type="content" source="../media/image(449).png" alt-text="Dep1":::

Browse to the URL configured (or `https://127.0.0.1`) on the Linux device. A screen like this should be visible:

:::image type="content" source="../media/image(453).png" alt-text="dep2":::
