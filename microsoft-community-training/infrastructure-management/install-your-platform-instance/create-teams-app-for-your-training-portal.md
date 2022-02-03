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

This article assumes you have followed the steps outlined in the [**installation article**](../../infrastructure-management/install-your-platform-instance/installation-guide-detailed-steps.md) and enabled Microsoft Teams as an endpoint during deployment from the marketplace.

If you haven't, please follow the Installation steps first and then refer this article to configure Microsoft Teams for your instance. Make sure you have the teams app package.

## Steps to enable learning inside Microsoft Teams

### Step 1 - Delegate permissions on your Azure AD application setup for Microsoft Community Training

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
    * Under Delegated permissions - **Directory.Read.All, Group.Read.All, User.Read.All, Member.Read.Hidden**
    * Under Application permissions - **Directory.Read.All, Group.Read.All, User.Read.All, Member.Read.Hidden**

    ![Delegated and Application permissions](../../media/image%28197%29.png)

8. Next, **click on Grant admin consent**. Confirm Yes.

    :::image type="content" source="../../media/teamsapipermissions.png" alt-text="teamspermissions":::

> [!NOTE]
> Please sure all the values marked in red rectangle are correctly set.

### Step 2 - Generate a Teams Manifest File (Microsoft Teams App) for your Microsoft Community Training instance

1. Unzip the file [Manifest file setup.zip](https://github.com/MicrosoftDocs/microsoft-community-training/files/7755254/Manifest.file.setup.zip)

2. Open the word document "**Steps to create a MS Teams file.docx**".

3. Follow the steps mentioned in the word file and make the necessary changes (as suggested in document) with reference to your MCT instance.

> [!NOTE]
> The ***color.png*** and ***outline.png*** file to be attached while following the word documentation can be obtained from the same zip file **Manifest file setup.zip**.

### Step 3 - Install the Microsoft Teams App for your organization

1. Open the Microsoft Teams client application and sign in using your global or teams service admin credentials.

2. Upload the manifest file (.zip file) created in the **Step 2** above as a custom app for organization in Teams

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

## Multi-Tenant support for Azure Active Directory based Authentication in Teams

Microsoft Community Training platform supports login via multiple tenants in Teams for AAD based authentication instances.

In this article, you will learn about how to setup Teams SSO login supporting multiple tenants.

### Steps to enable multi-tenant login in Teams for an AAD based instance

1. Login to [**Azure portal**](https://ms.portal.azure.com/#home)
2. Go to App Services from the left-menu
    :::image type="content" source="../../media/Teams SSO MultiTenant 1.png" alt-text="Teams SSO MultiTenant1":::
3. Click on the app service belonging to your Microsoft Community Training instance.
4. Select Configuration under settings from the left-menu
    :::image type="content" source="../../media/Teams SSO MultiTenant 2.png" alt-text="Teams SSO 2":::
5. Go under Applications Settings tab
    :::image type="content" source="../../media/Teams SSO MultiTenant 3.png" alt-text="Teams SSO 3":::
6. Search for `Features:IsMultiOrgDeployment`, add this if it does not exist, set the **value** as `true`, then click ‘Ok’
7. Next, search for `idp:AzureADExternalAuthTenantId`, add this application setting if it does not exist using **New application setting** option
8. Set the **value** as `common` replacing the existing tenant id (we suggest you keep a copy of your original Tenant ID value as a reference), then click ‘Ok’
    :::image type="content" source="../../media/Teams SSO MultiTenant 4.png" alt-text="Teams SSO4":::
9. Now while in Configurations section, search for `idp:AzureADExternalAuthTenant` and note the Tenant name
10. Also, search for `idp:AzureADExternalAuthClientId` and note Client ID
11. Navigate to your tenant (tenant name that you noted from Step 9) where your AAD exists, click on App registrations and search for application which corresponds to Client ID (Client ID that was noted from Step 10)
    :::image type="content" source="../../media/Teams SSO MultiTenant 5.png" alt-text="Teams SSO 5":::
12. Click on the application and navigate to ‘Authentication’ and select ‘Accounts in any organizational directory (Any Azure AD directory - Multitenant)’ under Supported account types and click ‘Save’
    :::image type="content" source="../../media/Teams SSO MultiTenant 6.png" alt-text="Teams SSO 6":::
13. For each tenant follow steps mentioned as below

      * [Install the Microsoft Teams App for your organization](#step-3---install-the-microsoft-teams-app-for-your-organization).
      * [Setup app policies to pin the training application from the Microsoft Team admin center](#step-4---setup-app-policies-to-pin-the-training-application-from-the-microsoft-team-admin-center).

14. Setup app policies to pin the training application from the Microsoft Team admin center
15. Once the above steps are done, for first time login using multiple tenants, admin of those tenants needs to approve the client ID of the MCT application by using the below URL

    ```http
    https://login.microsoftonline.com/common/adminconsent?client_id=<client_ID_of_your_application>
    ```

16. The users belonging to multiple tenants will now be able to access MCT application through their Teams application.
:::image type="content" source="../../media/Teams SSO MultiTenant 7.png" alt-text="Teams SSO 7":::

## Schedule an MS Teams meeting for your learners

Microsoft Community Training platform allows the Administrators to set-up and schedule meetings over MS Teams from within the platform itself. These meetings can be for the learners enrolled to a specific course/ learning path/ or a user group to enhance their learning curve.

In this article, you will learn about how to setup your MCT instance to allow Administrators to create/ set-up a Microsoft Teams meeting for a Course/ Learning Path/ User Group.

### Steps to configure Microsoft Teams Meeting Scheduling in MCT

Depending upon the login identity used on your instance, you need to follow the steps below:

1. Microsoft Work or School account
2. Phone Authentication or Social email-based login via your Microsoft, Google or Facebook account

>[!Note]
>You need to have a separate MS Teams license in order to integrate MS Teams with Microsoft Community Training portal. If you do not have a MS Teams license, you may refer to [this documentation](https://www.microsoft.com/microsoft-teams/online-meetings) to get it.

#### Microsoft Work or School account

**Prerequisite:**

* For your MCT instance, [setup the Work or School Account based authentication](configure-login-social-work-school-account.md#work-or-school-account-based-authentication).

**Next steps:**

Once you are done with the AD App registration for MCT, follow the below steps:

1. Configure `https://<instanceurl>/meeting` as a **single-page application** reply URL. Please note that you need to add both .azurefd.net and .azurewebsites.net URL. E.g.
    * If custom domain is not set: `<instancename>.azurewebsites.net/meeting` and `<instancename>.azurefd.net/meeting`
    * If custom domain is set: `<TeamsMeetingInstanceCustomURL>/meeting`
2. Configure **supported account types** as accounts in any organizational directory (Any Azure AD – Multitenant)
3. Go to the MCT app settings using the steps from here and add the following configurations:
    * **Name**: `Features:Meetings:EnableMeetings` with **Value**: `True`
    * **Name**: `Features:Meetings:ClientId` with **Value** of the ClientId of the AD tenant app that has registered the instance.

#### Phone Authentication or Social email-based login

##### Step 1

MCT app must be registered in the same Azure Active Directory which has MS Teams enabled in it. The steps for the app registration are outlined in [this documentation](configure-login-social-work-school-account.md#work-or-school-account-based-authentication).

##### Step 2

Follow only **Step 1** on [this link](#step-1---delegate-permissions-on-your-azure-ad-application-setup-for-microsoft-community-training) for setting up Teams for MCT.

##### Step 3

1. Login to the Azure Portal with admin credentials for the tenant which has the Teams license.
2. Click on the Directory + Subscription icon in the portal toolbar and select the directory that contains your Azure AD tenant or search for and select Azure Active Directory.
3. Click on the App Registration option from the left panel

    :::image type="content" source="../../media/Blended Learning 1.png" alt-text="Select App registrations":::

4. On the App registrations page, search for and select the Azure AD application created for the Microsoft Community Training Instance during the installation process.
    :::image type="content" source="../../media/Blended Learning 2.png" alt-text="Select the app registered for the MCT instance":::

5. Click on the **Authentication** option from the left panel
    :::image type="content" source="../../media/Blended Learning 3.png" alt-text="Select Authentication":::

6. On the Authentication page, search for and select **Add a platform**

    :::image type="content" source="../../media/Blended Learning 4.png" alt-text="Select add a platform":::

7. A configure platforms panel will open. Click on the **Single-page application** option.

    :::image type="content" source="../../media/Blended Learning 5.png" alt-text="Select single-page application":::

8. On the configure single page application page, enter `https://<yourinstanceurl>/meeting`. Please note that you need to add both **.azurefd.net** and **.azurewebsites.net** URL.
E.g.
    * If custom domain is not set: `<instancename>.azurewebsites.net/meeting` and `<instancename>.azurefd.net/meeting`
    * If custom domain is set: `<TeamsMeetingInstanceCustomURL>/meeting`

    Click on **Configure** after typing the URL.

    :::image type="content" source="../../media/Blended Learning 6.png" alt-text="Type URL and click configure":::

9. On the Authentication page from point 5 of the list, scroll down to **Supported account types**. Select the option **‘Accounts in any organizational directory (Any Azure AD directory – Multitenant)**

    :::image type="content" source="../../media/Blended Learning 7.png" alt-text="Select accounts in any organizational directory":::

10. Click on Save to save the configuration

    :::image type="content" source="../../media/Blended Learning 8.png" alt-text="Select save":::

##### Step 4

Setup configurations from the MCT app settings:

1. Go to the MCT app settings using the steps from here and add the configurations:
    * **Name**: *Features:Meetings:EnableMeetings*
    * **Value**: *True*
2. Add another configuration with below details:
    * **Name**: *Features:Meetings:ClientId*
    * **Value** of the ClientId of the AD tenant app that has registered the instance.

### Steps to Schedule an MS Teams meeting

Once you have configured Microsoft Teams Meeting Scheduling in MCT, the admin needs to follow the below steps to schedule a meeting.

>[!Warning]
>The number of users is limited to 500 and any course/ learning path/group creating a meeting more than that number will not be supported.

1. On the Microsoft Community Training portal, after login switch to administrator view
2. Go to respective Course/ Learning Path/ or the User Group for which you want to schedule a meeting.
3. Select the MS Teams option:
    * For **Course/ Learning Path**, click or tap the MS Teams icon on top-right of the details page.
    :::image type="content" source="../../media/Blended Learning 9.png" alt-text="Course/ Learning path icon":::
    * For **User Groups**, click on “Create a meeting” icon as shown below.
    :::image type="content" source="../../media/Blended Learning 10.png" alt-text="groups icon":::

4. This will open a pop-up window. Click or Tap on **Create meeting link**
    :::image type="content" source="../../media/Blended Learning 11.png" alt-text="Create Meeting link":::

5. A “**New Meeting**” page will pop up. Here, enter the details required for the meeting:
    * Meeting Title
    * The attendees data will be auto-filled from the data you had selected in MCT portal.
    * Select a range of time in the calendar i.e. Date & Time of Start and End of the meeting.
    * Enter the details for this meeting like agenda etc.

    :::image type="content" source="../../media/Blended Learning 12.png" alt-text="New Meeting Details":::

6. Click or Tap on **Create**.

7. A new pop-up window will open sharing the meeting details along with the meeting link that can be shared with the users.

    :::image type="content" source="../../media/Blended Learning 13.png" alt-text="Meeting Created":::

>[!Note]
>
>* For **Work or School based instance** and **Social email-based login**, the learner will get an email as well as the meeting notification in his calendar.
>:::image type="content" source="../../media/Blended Learning 19.PNG" alt-text="Learner experience":::
>* For **Phone authentication based instance**, the learner will not receive any notification and the admin needs to inform the learners explicitly.

### Edit MS teams meeting scheduled in MCT

You may edit the details of the meeting organized in the MCT platform from:

#### From the MCT platform

1. Once the meeting is created click on the pencil icon on the pop-up window (as shown below).

    :::image type="content" source="../../media/Blended Learning 18.png" alt-text="Edit Meeting":::

2. In the Edit meeting pop-up you can modify the title of the meeting
    >[!Note]
    >You will not be able to modify the invitee list and the meeting details

    :::image type="content" source="../../media/Blended Learning 14.png" alt-text="Edit meeting":::

3. Click on **Update**.

#### From Microsoft Teams

1. Once the meeting is created, it would reflect in the Microsoft Teams calendar.
2. Go to your Microsoft Teams, click on **Calendar**.
3. Tap once on the meeting appointment and click on **Edit**

    :::image type="content" source="../../media/Blended Learning 15.png" alt-text="Edit meeting from MS Teams":::

4. Click on **Show meeting info**.

    :::image type="content" source="../../media/Blended Learning 16.png" alt-text="Meeting Info":::
5. Edit the details from the page and Click on **Send update**
    :::image type="content" source="../../media/Blended Learning 17.png" alt-text="Send Update":::
