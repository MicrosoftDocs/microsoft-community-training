---
title: Setup Microsoft Teams as learner's endpoint for the platform
original-url: https://docs.microsoftcommunitytraining.com/docs/create-teams-app-for-your-training-portal
author: nikotha
ms.author: nikotha
description: Microsoft Community Training allows organization to enable online learning inside Microsoft Teams across web, mobile and desktop app.
ms.prod: azure
---

# Setup Microsoft Teams as learner's endpoint for the platform

Microsoft Community Training allows organization to enable online learning inside Microsoft Teams across web, mobile and desktop app. For more details on Microsoft Community Training platform integration with Microsoft Teams, [**visit our website**](https://communitytraining.microsoft.com/teams/).

In this article, we will walk you through the steps required to configure your instance with Microsoft Teams.

## Before you begin

This article assumes you have followed the steps outlined in the [**installation article**](../../infrastructure-management/install-your-platform-instance/3_installation-guide-detailed-steps.md) and enabled Microsoft Teams as an endpoint during deployment from the marketplace.

If you haven't, please follow the Installation steps first and then refer this article to configure Microsoft Teams for your instance. Make sure you have the teams app package.

## Steps to enable learning inside Microsoft Teams

### Step 1 - Delegate permissions on your Azure AD application setup for Microsoft Communtiy Training

1. Login to the [Azure Portal](https://portal.azure.com/) with admin credentials

2. Click on the **Directory + Subscription** icon in the portal toolbar and  select the directory that contains your Azure AD tenant or **search for and select Azure Active Directory**.

3. Click on the **App Registration** option from the left panel
![Click App Registration](../../media/image%28194%29.png)

4. On the App registrations page, search for and select the Azure AD application created for the Microsoft Community Training instance during the installation process
![Azure AD application](../../media/image%28195%29.png)

5. On the application details, select the **API permissions** option on the left panel

6. Next, **click on Add Permission** and **select Microsoft Graph option** from the right panel
![select Microsoft Graph option](../../media/image%28196%29.png)

7. Next, in Delegated permissions and Application permissions check the following options:
    * Under Delegated permissions - **Directory.Read.All, Group.Read.All, User.Read.All**
    * Under Application permissions - **Directory.Read.All, Group.Read.All, User.Read.All**
![Delegated and Application permissions](../../media/image%28197%29.png)

8. Next, **click on Grant admin consent**. Confirm Yes.
![Click on Grant admin consent](../../media/image%28198%29.png)

> [!NOTE]
> Please sure all the values marked in red rectangle are correctly set.

### Step 2 - Raise a support ticket to get the Microsoft Teams app for your Microsoft Community Training instance

1. Create a support ticket on [**Microsoft Community Training Helpdesk**](https://go.microsoft.com/fwlink/?linkid=2104630) for a Microsoft Teams app manifest for your training platform instance in the following format,

    | Field | Description |
    | --- | --- |
    | Title | Enter "Request for Teams Manifest File" |
    | Type | Select "Request" |
    | Subject | Select "Microsoft Teams" |
    | Description | Provide the **Azure Websites URL  & Custom domain URL** (if configured) for your instance|

2. Our team will provide your the Teams app manifest within 2-3 business days.

### Step 3 - Install the Microsoft Teams App for your organization

1. Open the Microsoft Teams client application and sign in using your global or teams service admin credentials.

2. Upload the manifest file (.zip file) provided by the customer support team as a custom app for organization in Teams
    ![Upload the manifest](../../media/image%28199%29.png)

> [!NOTE]
> For more details on how to publish apps in the Microsoft Teams Tenant Apps Catalog, [**see this article**](/microsoftteams/tenant-apps-catalog-teams#publish-an-app-in-the-tenant-apps-catalog-from-the-teams-client).

### Step 4 - Setup app policies to pin the training application from the Microsoft Team admin center

1. Visit [**Teams Admin portal**](https://admin.teams.microsoft.com/) and **select Setup policies** option under Teams apps in the left navigation panel
![Select Setup policies](../../media/image%28200%29.png)

2. Next click on the **Add Apps** button and search for the training application uploaded in the previous Step #3

3. Add the training application as a pinned app

4. Now, learners can login to the Microsoft Teams app and consume learning content across web, mobile and desktop

### Step 5 - Allow portal embedding in MS Teams

1. Login to [Azure portal](https://www.portal.azure.com/).

2. Go to App Services from the left-menu.

    ![Select App Service.png](../../media/Select%20App%20Service%281%29.png)

3. Click on the app service belonging to your Microsoft Community Training instance.

4. Select Configuration under settings from the left-menu.
![Select Configurations.png](../../media/Select%20Configurations%281%29.png)

5. Go under Applications Settings tab
![Select Application Settings.png](../../media/Select%20Application%20Settings.png)

6. Select the setting **Features:AllowSiteEmbedding** and update it with value **“true”**. Click on OK.

    ![Features:AllowSiteEmbedding](../../media/image%28436%29.png)

7. Click on save.
![Save Application Settings.png](../../media/Save%20Application%20Settings%281%29.png)
