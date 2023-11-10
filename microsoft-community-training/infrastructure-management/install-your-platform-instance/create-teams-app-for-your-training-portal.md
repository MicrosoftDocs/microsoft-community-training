---
title: Setup Microsoft Teams as learner's endpoint for the platform
original-url: https://docs.microsoftcommunitytraining.com/docs/create-teams-app-for-your-training-portal
author: nikotha
ms.author: nikotha
description: Community Training allows organization to enable online learning inside Microsoft Teams across web, mobile and desktop app.
ms.prod: learning-azure
---

# Setup Microsoft Teams as learner's endpoint for the platform

 Community Training allows organizations to enable online learning inside Microsoft Teams across web, mobile and desktop applications. For more details on the Community Training platform integration with Microsoft Teams, [**visit our website**](https://communitytraining.microsoft.com/teams/).

In this article, we will describe the steps required to configure your instance with Microsoft Teams.

## Before you begin

This article assumes you have followed the steps outlined in the [**installation article**](../../infrastructure-management/install-your-platform-instance/installation-guide-detailed-steps.md) and enabled Microsoft Teams as an endpoint during deployment from the marketplace.

If you haven't, please follow the Installation steps first and then refer this article to configure Microsoft Teams for your instance. Make sure you have the teams app package.

## Steps to enable learning inside Microsoft Teams

### Step 1 - Delegate permissions on your Azure AD application setup for Community Training

1. Login to the [Azure Portal](https://portal.azure.com/) with admin credentials

1. Select **Directory + Subscription** in the portal toolbar then the directory that contains your Azure AD tenant or **search for and select Azure Active Directory**.

1. Select the **App Registration** option from the left panel.

    ![Click App Registration](../../media/image%28194%29.png)

1. On the App registrations page, search for and select the Azure AD application created for the Community Training instance during the installation process.

    ![Azure AD application](../../media/image%28195%29.png)

1. On the application details, select the **API permissions** option on the left panel.

1. Select **Add Permission** and select **Microsoft Graph** from the right panel.

    ![select Microsoft Graph option](../../media/image%28196%29.png)

1. Next, in Delegated permissions and Application permissions check the following options:
    * Under Delegated permissions - **Directory.Read.All, Group.Read.All, User.Read.All, Member.Read.Hidden**
    * Under Application permissions - **Directory.Read.All, Group.Read.All, User.Read.All, Member.Read.Hidden**

    ![Delegated and Application permissions](../../media/image%28197%29.png)

1. Select **Grant admin consent** then **Yes** to confirm.

    :::image type="content" source="../../media/teamsapipermissions.png" alt-text="teamspermissions":::

> [!NOTE]
> Please ensure all the values marked with a red rectangle are correctly set.

### Step 2 - Generate a Teams Manifest File (Microsoft Teams App) for your Community Training instance

1. Unzip the file [**steps_to_create_manifest_file.zip**](https://github.com/MicrosoftDocs/microsoft-community-training/files/10336214/steps_to_create_manifest_file.zip).

<!---
1. Unzip the file [Manifest file setup.zip](https://github.com/MicrosoftDocs/microsoft-community-training/files/7755254/Manifest.file.setup.zip)
-->

2. Open the PDF document "**Steps to create a MS Teams file.pdf**".

1. Follow the steps in the word file and make the necessary changes (as suggested in document) with reference to your CT instance.

> [!NOTE]
> The ***color.png*** and ***outline.png*** file to be attached while following the word documentation can be obtained from the same zip file **Manifest file setup.zip**.

### Step 3 - Install the Microsoft Teams App for your organization

> [!NOTE]
> If you published the app already in Step 2, you can skip to Step 4.

1. Open the Microsoft Teams client application and sign in using your global or teams service admin credentials.

1. Upload the manifest file (.zip file) created in the **Step 2** above as a custom app for organization in Teams.

    ![Upload the manifest](../../media/image%28199%29.png)

> [!NOTE]
> For more details on how to publish apps in the Microsoft Teams Tenant Apps Catalog, [**see this article**](/microsoftteams/tenant-apps-catalog-teams#publish-an-app-in-the-tenant-apps-catalog-from-the-teams-client).

### Step 4 - Setup app policies to pin the training application from the Microsoft Team admin center

1. Visit [**Teams Admin portal**](https://admin.teams.microsoft.com/) and **select Setup policies** option under Teams apps in the left navigation panel.

    ![Select Setup policies](../../media/image%28200%29.png)

1. Next select the **Add Apps** button and search for the training application uploaded in the previous Step 3.

1. Add the training application as a pinned application.

1. Now your learners can login to Microsoft Teams and access learning content across web, mobile and desktop applications.

### Step 5 - Allow portal embedding in MS Teams

1. Login to [Azure portal](https://www.portal.azure.com/).

1. Go to **App Services** on the left-menu.

    ![Select App Service.png](../../media/Select%20App%20Service%281%29.png)

1. Select the app service belonging to your Community Training instance.

1. Select **Configuration** under settings from the left-menu.

    ![Select Configurations.png](../../media/Select%20Configurations%281%29.png)

1. Go to the **Applications Settings** tab.

    ![Select Application Settings.png](../../media/Select%20Application%20Settings.png)

1. Select the setting **Features:AllowSiteEmbedding** and update it with value **“true”**, select **OK** to confirm.

    ![Features:AllowSiteEmbedding](../../media/image%28436%29.png)

1. Select **Save**.

    ![Save Application Settings.png](../../media/Save%20Application%20Settings%281%29.png)

## Multi-Tenant support for Azure Active Directory based Authentication in Teams

The Community Training platform supports login via multiple tenants in Teams for AAD based authentication instances.

In this article, you will learn about how to setup Teams SSO to support multiple tenants.

### Steps to enable multi-tenant login in Teams for an AAD based instance

1. Login to [**Azure portal**](https://ms.portal.azure.com/#home).

1. Go to **App Services** from the left-menu and select the app service belonging to your Community Training instance.

    :::image type="content" source="../../media/Teams SSO MultiTenant 1.png" alt-text="Teams SSO MultiTenant1":::

1. Select **Configuration** under settings from the left-menu.

    :::image type="content" source="../../media/Teams SSO MultiTenant 2.png" alt-text="Teams SSO 2":::

1. Go to the **Applications Settings** tab

    :::image type="content" source="../../media/Teams SSO MultiTenant 3.png" alt-text="Teams SSO 3":::

1. Search for `Features:IsMultiOrgDeployment`, add this if it does not exist, set the **value** to *True*, then select **Ok** to confirm.
1. Next, search for `idp:AzureADExternalAuthTenantId`, add this application setting if it does not exist using **New application setting** option.
1. Set the **value** to *common* replacing the existing Tenant ID keeping a copy of your original Tenant ID value as a reference, then select **Ok**.

    :::image type="content" source="../../media/Teams SSO MultiTenant 4.png" alt-text="Teams SSO4":::

1. Whilst in the Configurations section, search for `idp:AzureADExternalAuthTenant` and note the Tenant name then search for `idp:AzureADExternalAuthClientId` and note the Client ID.
1. Navigate to your tenant (tenant name that you noted from Step 9) where your AAD exists, select **App registrations** then search for the application which corresponds to your Client ID noted from Step 10.

    :::image type="content" source="../../media/Teams SSO MultiTenant 5.png" alt-text="Teams SSO 5":::

1. Select the application, navigate to ‘Authentication’ then select *Accounts in any organizational directory (Any Azure AD directory - Multitenant)* under **Supported account types** and select **Save**.

    :::image type="content" source="../../media/Teams SSO MultiTenant 6.png" alt-text="Teams SSO 6":::

1. For each tenant follow these steps:

      * [Install the Microsoft Teams App for your organization](#step-3---install-the-microsoft-teams-app-for-your-organization).
      * [Setup app policies to pin the training application from the Microsoft Team admin center](#step-4---setup-app-policies-to-pin-the-training-application-from-the-microsoft-team-admin-center).

1. Setup app policies to pin the training application from the Microsoft Team admin center.
1. Once the above steps are complete, for first time login using multiple tenants, administrators of those tenants needs to approve the client ID of the CT application by using the below URL

    ```http
    https://login.microsoftonline.com/common/adminconsent?client_id=<client_ID_of_your_application>
    ```

1. The users belonging to multiple tenants will now be able to access Community Training through Teams.

    :::image type="content" source="../../media/Teams SSO MultiTenant 7.png" alt-text="Teams SSO 7":::

## Creating Organizations for Each Tenant

Creating Organizations for each tenant is an important step. Unless you create an organization for the Tenant, users from that tenant will not be able to login.

> [!NOTE]
> To enable common content across multiple tenants, refer to *[Enabling Global Content across organizations](../../content-management/content-management-overview.md#enabling-global-content-across-organizations)*.

### Steps to create organization for each tenant

1. In Admin View, go to the Users tab.
1. Select **Organization Administrators** then **Manage Organizations**.

    :::image type="content" source="../../media/Add Organization in MultiTenant.png" alt-text="Create Orn in MultiTenant1":::

1. Select **Add Organization**.

    :::image type="content" source="../../media/Add Organization2 Multi Tenant.png" alt-text="Add Org to Multi Tenant 2":::

1. Enter **Organization Name** and **Organization Description** then provide the **TenantId** ([Steps to find TenantId](/azure/active-directory/fundamentals/active-directory-how-to-find-tenant)) of the respective tenant to be added.

    :::image type="content" source="../../media/Add tenant ID Organization.png" alt-text="Add Org to Multi Tenant 3":::

1. Select **Create**.
1. Repeat the above steps to create organizations for the all tenants requiring access.

## Schedule an MS Teams meeting for your learners

The Community Training platform allows Administrators to set-up and schedule meetings over MS Teams from within the platform. These meetings can be for the learners enrolled to a specific course/ learning path/ or a user group to enhance their learning curve.

In this article, you will learn how to setup your instance to allow Administrators to set-up a Microsoft Teams meeting for a Course, Learning Path, and User Group.

### Steps to configure Microsoft Teams Meeting Scheduling in CT

Follow the steps below that refer to the login identity used on your instance.

1. Microsoft Work or School account.
1. Phone Authentication or Social email-based login via your Microsoft, Google or Facebook account.

> [!NOTE]
>You need a separate MS Teams license to integrate MS Teams with the Community Training portal. If you do not have one, you may refer to [this documentation](https://www.microsoft.com/microsoft-teams/online-meetings) to get it.

#### Microsoft Work or School account

**Prerequisite:**

* For your instance, [setup the Work or School Account based authentication](configure-login-social-work-school-account.md#work-or-school-account-based-authentication).

**Next steps:**

Once you have completed the AD App registration, follow these steps:

1. Configure `https://<instanceurl>/meeting` as a **single-page application** reply URL. Please note that you need to add both '.azurefd.net' and '.azurewebsites.net' URL. For example:
    * If a custom domain is not set: `<instancename>.azurewebsites.net/meeting` and `<instancename>.azurefd.net/meeting`
    * If a custom domain is set: `<TeamsMeetingInstanceCustomURL>/meeting`
1. Configure **supported account types** as *accounts in any organizational directory (Any Azure AD – Multitenant)*.
1. Go to the Commuinty Training app settings and add the following configurations:
    * **Name**: `Features:Meetings:EnableMeetings` with **Value**: `True`
    * **Name**: `Features:Meetings:ClientId` with **Value** of the ClientId of the AD tenant app that has registered the instance.

#### Phone Authentication or Social email-based login

##### Step 1

CT must be registered in the same Azure Active Directory which has MS Teams enabled in it. The steps for the app registration are outlined in [this documentation](configure-login-social-work-school-account.md#work-or-school-account-based-authentication).

##### Step 2

Follow only **Step 1** on [this link](#step-1---delegate-permissions-on-your-azure-ad-application-setup-for-microsoft-community-training) for setting up Teams for the platform.

##### Step 3

1. Login to the Azure Portal with admin credentials for the tenant which has the Teams license.
1. Select the Directory and Subscription icon in the portal toolbar then the directory that contains your Azure AD tenant, or search for and select Azure Active Directory.
1. Click on the App Registration option from the left panel

    :::image type="content" source="../../media/Blended Learning 1.png" alt-text="Select App registrations":::

1. On the App registrations page, search for and select the Azure AD application created for the Community Training Instance during the installation process.
    :::image type="content" source="../../media/Blended Learning 2.png" alt-text="Select the app registered for the CT instance":::

1. Select **Authentication** from the left panel
    :::image type="content" source="../../media/Blended Learning 3.png" alt-text="Select Authentication":::

1. On the Authentication page, search for and select **Add a platform**

    :::image type="content" source="../../media/Blended Learning 4.png" alt-text="Select add a platform":::

1. Select the **Single-page application** option on the configure platforms panel presented.

    :::image type="content" source="../../media/Blended Learning 5.png" alt-text="Select single-page application":::

1. On the configure single page application page, enter `https://<yourinstanceurl>/meeting`. Please note that you need to add both **.azurefd.net** and **.azurewebsites.net** URL.
For example:
    * If a custom domain is not set: `<instancename>.azurewebsites.net/meeting` and `<instancename>.azurefd.net/meeting`
    * If a custom domain is set: `<TeamsMeetingInstanceCustomURL>/meeting`

    Select **Configure** after typing the URL.

    :::image type="content" source="../../media/Blended Learning 6.png" alt-text="Type URL and click configure":::

1. On the Authentication page from point 5 of the list, scroll down to **Supported account types**. Select the option **‘Accounts in any organizational directory (Any Azure AD directory – Multitenant)**

    :::image type="content" source="../../media/Blended Learning 7.png" alt-text="Select accounts in any organizational directory":::

1. Select **Save** to confirm the configuration.

    :::image type="content" source="../../media/Blended Learning 8.png" alt-text="Select save":::

##### Step 4

Setup configurations from the CT app settings:

1. Go to the CT app settings and add the configurations:
    * **Name**: *Features:Meetings:EnableMeetings*
    * **Value**: *True*
1. Add another configuration with these details:
    * **Name**: *Features:Meetings:ClientId*
    * **Value** of the ClientId of the AD tenant app that has registered the instance.

### Steps to Schedule an MS Teams meeting

Once you have configured Microsoft Teams Meeting Scheduling in CT, the administrator will need to follow these steps to schedule a meeting.

> [!WARNING]
>The number of users is limited to 500 and any course/ learning path/group creating a meeting more than that number will not be supported.

1. Log on to the Community Training portal and **switch to administrator view**.
1. Go to the respective Course, Learning Path or User Group you want to schedule a meeting for.
1. Select the MS Teams option:
    * For **Course/ Learning Path**, click or tap the MS Teams icon on top-right of the details page.
    :::image type="content" source="../../media/Blended Learning 9.png" alt-text="Course/ Learning path icon":::
    * For **User Groups**, click on “Create a meeting” icon as shown below.
    :::image type="content" source="../../media/Blended Learning 10.png" alt-text="groups icon":::

1. Select **Create meeting link** Ton the pop-up window.
    :::image type="content" source="../../media/Blended Learning 11.png" alt-text="Create Meeting link":::

1. On the “**New Meeting**” page presented, enter the details required for the meeting:
    * Meeting Title.
    * The attendees data will be auto-filled from the data you had selected in CT portal.
    * Select a range of time in the calendar i.e. Date & Time of Start and End of the meeting.
    * Enter the details for this meeting like agenda etc.

    :::image type="content" source="../../media/Blended Learning 12.png" alt-text="New Meeting Details":::

1. Select **Create**.

1. A new pop-up window will open sharing the meeting details along with the meeting link that can be shared with the users.

    :::image type="content" source="../../media/Blended Learning 13.png" alt-text="Meeting Created":::

> [!NOTE]
>
>* For **Work or School based instance** and **Social email-based login**, the learner will get an email as well as the meeting notification in his calendar.
>:::image type="content" source="../../media/Blended Learning 19.PNG" alt-text="Learner experience":::
>* For **Phone authentication based instance**, the learner will not receive any notification and the admin needs to inform the learners explicitly.

### Edit MS teams meeting scheduled in CT

You may edit the details of the meeting organized in the CT platform from:

#### From the CT platform

1. Once the meeting is created click on the pencil icon on the pop-up window (as shown below).

    :::image type="content" source="../../media/Blended Learning 18.png" alt-text="Edit Meeting":::

1. In the Edit meeting pop-up you can modify the title of the meeting.
    > [!NOTE]
    >You will not be able to modify the invitee list and the meeting details.

    :::image type="content" source="../../media/Blended Learning 14.png" alt-text="Edit meeting":::

1. Select **Update** to save your changes.

#### From Microsoft Teams

1. Once the meeting is created, it will appear in the Microsoft Teams calendar.
1. Open your Microsoft Teams and select **Calendar**.
1. Click once on the meeting appointment and select **Edit**.

    :::image type="content" source="../../media/Blended Learning 15.png" alt-text="Edit meeting from MS Teams":::

1. Select **Show meeting info**.

    :::image type="content" source="../../media/Blended Learning 16.png" alt-text="Meeting Info":::
1. Edit the details from the page and select **Send update**.
    :::image type="content" source="../../media/Blended Learning 17.png" alt-text="Send Update":::
