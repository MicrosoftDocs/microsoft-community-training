---
title: Customize the name and icon of the training tab in MS Teams
original-url: https://docs.microsoftcommunitytraining.com/docs/customize-the-name-and-icon-of-the-training-tab-in-ms-teams
author: nikotha
ms.author: nikotha
description: This article assumes you have followed the steps outlined in the MS Teams installation (upto Step 2) and received the Team Manifest file from the Customer Support Team.
ms.prod: learning-azure
---

# Customize the name and icon of the training tab in MS Teams

## **Before you begin**

This article assumes you have completed the steps outlined in the [MS Teams installation](/azure/industry/training-services/microsoft-community-training/infrastructure-management/install-your-platform-instance/installation-guide-detailed-steps) (up to Step 2) and received the Team Manifest file from the Customer Support Team.

## **Customize the name and icon of the training tab inside Microsoft Teams**

### Step 1 – Upload your customized icon that represents training tab in Microsoft Teams

1. Unzip the manifest file (.zip file) provided by the customer support team earlier for this instance. There should be following three files once you unzip

   ![3 files](../../media/image%28358%29.png)

1. Replace the files color.png and outline.png with your customized icon.

   1. Icon for color.png should have dimensions (in pixels): 192x192  
   1. Icon for  outline.png should have dimensions (in pixels): 34x32

### Step 2 – Customized the name of the icon that represents training tab in Microsoft Teams

1. Open *manifest.json* in any editor (here NotePad ++) and edit the highlighted details in to represent your AzureFD (***\<name>.azurefd.net***) instance and the required name of the Tab.

   ![Represent your AzureFD](../../media/image%28359%29.png)

2. Save your changes in the manifest.json file.

### Step 3 – Create the new Teams Manifest File and upload it

1. Zip the three files (Color.png, outline.png and manifest.json) to create a new manifest zip file.
2. Follow the instructions in the [Steps to enable learning inside Microsoft Teams document](/azure/industry/training-services/microsoft-community-training/infrastructure-management/install-your-platform-instance/create-teams-app-for-your-training-portal), from Step 3 to upload the updated file.


Please reach out to us [**via HelpDesk**](https://aka.ms/cthelpdesk) if you have any further queries.