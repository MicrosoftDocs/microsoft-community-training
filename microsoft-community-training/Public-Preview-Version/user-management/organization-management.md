---
title: Organization Management
original-url: https://docs.microsoftcommunitytraining.com/docs/organization-management
author: nikotha
ms.author: nikotha
description: Microsoft Community Training supports multiple organizations to be created on the training platform where content and users can be mutually exclusive to each other.
ms.prod: learning-azure
---
# Organization Management

Microsoft Community Training supports multiple organizations to be created on the training platform where content and users can be part of siloed organizations with in same instance.

An **Organization** on the Microsoft Community Platform is a set of learners and administrators who have a particular purpose or belong to a specific criteria viz. location, job function, interest etc. The organization administrator can use the management portal to manage content and users for its organization.

Global administrators can define the organizations on the training platform based on their specific training requirements. In this topic, you will learn simple steps to create and manage Organizations and Organization Administrators on the training portal.

## Permissions Level

The Microsoft Community Training management portal provides role-based administration and depending upon the type of access level administrator can perform an action on the portal. Table below shows administrative role which are allowed to create and edit Organizations and Organization Administrators on the platform:

| Access Level | Create and Edit Organizations |
| --- | --- |
| Global Administrator | Yes |
| Organization Administrator | No |
| Learning Path Administrator | No |
| Category Administrator | No |
| Course Administrator | No |
| Group Administrator | No |

## Enabling Organizations on the Platform

The support for Organizations can be enabled on the platform by [enabling the application configuration for **Features:IsMultiOrgDeployment**](../settings/configurations-on-the-training-platform.md#enabling-organizations-on-the-platform).

## Create a New Organization

1. On the  Microsoft Community Training portal, after login [**switch to administrator view**](../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal)

2. Click on **Settings** option from the left navigation panel and navigate to **Manage Organizations**.

    :::image type="content" source="../media/manageorg.png" alt-text="manageorganizations":::

3. Click on **Add Organization**

4. Enter the Organization name and description (optional) and click **Create**.

    ![User Management - Add Organization - Create Organization](../media/User%20Management%20-%20Add%20Organization%20-%20Create%20Organization.png)

<!--
1. On the  Microsoft Community Training portal, after login [**switch to administrator view**](../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal).

    ![Create a New Organization](../media/image%28421%29.png)

2. Select **Organization Administrators** option under **Users tab** on the top-left of the page.

    ![User Management - Organization Administrator](../media/User%20Management%20-%20Organization%20Administrator.png)

    > [!Note]
    > This access is available only to Global Administrators on the platform.

3. To add new organization click on **Manage Organizations**

    ![User Management - Add Organization - 1 ](../media/User%20Management%20-%20Add%20Organization%20-%201%20.png)

4. From the **Manage Organizations** panel, click on **Add Organization**

    ![User Management - Add Organization - Manage Organization](../media/User%20Management%20-%20Add%20Organization%20-%20Manage%20Organization.png)

5. Enter the Organization name and description (optional) and click **Create**.

    ![User Management - Add Organization - Create Organization](../media/User%20Management%20-%20Add%20Organization%20-%20Create%20Organization.png)

6. Click on **Done** to close the **Manage Organization** panel.
-->

## Edit an Existing Organization

>[!Note]
>
> This access is available only to Global Administrators on the platform.

1. On the  Microsoft Community Training portal, after login [**switch to administrator view**](../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal)

2. Click on **Settings** option from the left navigation panel and navigate to **Manage Organizations**.

3. From the **Manage Organizations** panel, click on the **pencil icon** next to the respective Organization name.

    :::image type="content" source="../media/Orgbrandedit.png" alt-text="brandedit":::

4. Edit the Organization name and/or desription and click **Update**.

    ![User Management - Add Organization - Edit Organization](../media/User%20Management%20-%20Add%20Organization%20-%20Edit%20Organization.png)

<!--
1. On the  Microsoft Community Training portal, after login [**switch to administrator view**](../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal).

    ![Edit an Existing Organization](../media/image%28421%29.png)

2. Select **Organization Administrators** option under Users tab on the top-left of the page.

    ![User Management - Organization Administrator](../media/User%20Management%20-%20Organization%20Administrator.png)

    > [!Note]
    > This access is available only to Global Administrators on the platform.

3. To edit an existing organization click on **Manage Organizations**

    ![User Management - Add Organization - 1 ](../media/User%20Management%20-%20Add%20Organization%20-%201%20.png)

4. From the **Manage Organizations** panel, click on the **pencil icon** next to the respective Organization name.

    ![User Management - Add Organization - Manage Organization](../media/User%20Management%20-%20Add%20Organization%20-%20Manage%20Organization.png)

5. Edit the Organization name and/or desription and click **Update**.

    ![User Management - Add Organization - Edit Organization](../media/User%20Management%20-%20Add%20Organization%20-%20Edit%20Organization.png)

6. Click on **Done** to close the **Manage Organization** panel.
-->

## Delete an Organization

If an Organization is deleted, all content, users and user Groups of the Organization get associated with the Default Organization.
Click on the **Delete** icon from the Manage Organizations panel to Delete an Organization.

![User Management - Add Organization - Manage Organization](../media/User%20Management%20-%20Add%20Organization%20-%20Manage%20Organization.png)

## Customize look and feel of your Organization(s)

You can customize the look and feel of your learner experience of the Microsoft Community Training platform for each of your [Organization](#create-a-new-organization)

>[!Note]
>
> * Global Administrators can adjust settings for all Organizations.
> * Organization Administrators can only adjust these settings on which they are admin.

1. On the  Microsoft Community Training portal, after login [**switch to administrator view**](../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal).

2. Click on **Settings** option from the left navigation panel and navigate to **Organization settings**.

    :::image type="content" source="../media/Orgbrandsettings.png" alt-text="brandsettings":::

3. Choose the Organization for which you want to update the setting from the drop down. Here you can update the following:

    1. **General**
        1. [Set your portal name](../settings/configure-the-look-and-feel-of-your-portal.md#set-your-portal-name)
        2. [Set your privacy terms](../settings/configure-the-look-and-feel-of-your-portal.md#set-your-privacy-terms)
        3. [Enable languages on the portal](../settings/configure-the-look-and-feel-of-your-portal.md#enable-languages-on-the-portal)

    2. **Branding**
        1. [Set the logo](../settings/configure-the-look-and-feel-of-your-portal.md#set-the-logo)
        2. [Set the banner image](../settings/configure-the-look-and-feel-of-your-portal.md#set-the-banner-image)
        3. [Set the welcome text](../settings/configure-the-look-and-feel-of-your-portal.md#set-the-welcome-text)
        4. [Set the brand color](../settings/configure-the-look-and-feel-of-your-portal.md#set-the-brand-color)
        5. [Set the footer title and message](../settings/configure-the-look-and-feel-of-your-portal.md#set-the-footer-title-and-message)

    3. **Mobile Application**

    * You can create [Progressive Web Application (PWA)](../infrastructure-management/install-your-platform-instance/create-publish-mobile-app.md#option-1-creating-a-progressive-web-application-pwa-for-android) for your instance for which you need to meet the [installation requirements](../infrastructure-management/install-your-platform-instance/create-publish-mobile-app.md#installation-requirements-for-pwa-mobile-application).

    * Under Mobile Application setting you need to specify following information:

        | Setting | Description |
        | --- | --- |
        | Mobile Application Name | You can specify your Instance name, this name will be used for rendering splash screen (Android), Start menu item (Windows) |
        | Mobile Application Short Name | This will be used to generate the App icon name on the device app tray. You can mention a shorter acronym of your instance name. |
        | Application Background Color | This setting will be used for rendering Splash screen (Android) |
        | Application Logo (512 px by 512 px) | The logo must be 512x512 pixels, MCT uses this image to render Splash screen, Start menu, App Launcher item for your PWA.  |

4. Once the settings are updated, learner (post login) will see the portal customized based on their respective Organization settings to which they belong.

## Create a New Organization Administrator

1. On the  Microsoft Community Training portal, after login [**switch to administrator view**](../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal).

    ![Create a New Organization Administrator](../media/image%28421%29.png)

2. Select **Organization Administrators** option under Users tab on the top-left of the page.

    ![User Management - Organization Administrator](../media/User%20Management%20-%20Organization%20Administrator.png)

    > [!Note]
    >
    > * Global Administrators can add Organization Administrators across all organizations in the platform
    > * Organization Administrator can add other organization administrators specific to their Organizations.

3. To **create a new** Organization Administrator, click on **Add Administrator**

    ![User Management - Add Organization - Add Administrator Button](../media/User%20Management%20-%20Add%20Organization%20-%20Add%20Administrator%20Button.png)

4. In the **New Organization Administrator** popup, enter the contact details for the Organization Administrator and Select the organization(s) to which you want the Organization Administrator to have access

    ![User Management - Add Organization - Organization Administrator](../media/User%20Management%20-%20Add%20Organization%20-%20Organization%20Administrator.png)

    > [!NOTE]
    > The Organization Administrator will have all the rights as that of a Global Administrator in the context of its assigned Organizations.
    >
    > 1. One Organization Administrator can have access to more than one Organizations, and
    > 2. One Organization can be managed by more than one Organization Administrators.

5. Click on **Create** to complete the task.

## Edit an Existing Organization Administrator

1. On the  Microsoft Community Training portal, after login [**switch to administrator view**](../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal).

2. Select **Organization Administrators** option under Users tab on the top-left of the page.

    ![User Management - Organization Administrator](../media/User%20Management%20-%20Organization%20Administrator.png)

    > [!Note]
    > This access is available only to Global Administrators on the platform.

3. To **edit an existing** Organization Administrator, click on the **pencil icon** next to the **Organization Administrator**. In the **Edit Organization Administrator* popup,

    1. Click on the **cross icon** against the Organization whose access you want to revoke from the Organization Administrator.
    2. **Select and add** the Organization whose access you want to provide to the Organization Administrator.

     ![User Management - Add Organization - Organization Administrator - Edit](../media/User%20Management%20-%20Add%20Organization%20-%20Organization%20Administrator%20-%20Edit.png)

## Delete an Organization Administrator

If an Organization administrator's access is revoked from an Organization, they will not be able to access content and user groups associated with the organization unless specifically added as a learning path, category or group administrator.  

Click on the **Delete** icon against an Organization Administrator to delete.

 ![User Management - Add Organization - Organization Administrator](../media/User%20Management%20-%20Add%20Organization%20-%20Organization%20Administrator.png)

## Assign learners to Organizations

Learners can be assigned to Organizations on the portal from 'All Users' section.

>[!Note]
> Only Global Admin, Organization Admin can add/edit users on the platform

### Add Single User to Organization

1. On the Microsoft Community Training portal, after login [**switch to administrator view**](../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal)

2. Select 'All Users' tab in the left-navigation page from users module

3. Click or tap the Add Users icon on top-right of the details page to select 'Add Single User'

    :::image type="content" source="../media/Allusersorg.png" alt-text="Allusersorganization":::

4. Add User contact and choose the Organization in which you want to place the user

    :::image type="content" source="../media/orgcontactadd.png" alt-text="addcontacttoOrg":::

### Bulk upload users to Organization

>[!warning]
>
> Adding an existing user from a different Organization will lead to loss of course progress made in previous organization
>

1. On the Microsoft Community Training portal, after login [**switch to administrator view**](../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal)

2. Select 'All Users' tab in the left-navigation page from users module

3. Click or tap the Add Users icon on top-right of the details page to select 'Bulk upload Users'

4. Choose the Organization where you want to upload users.
    1. Download the sample csv to add user information
    2. Now click on Upload

    :::image type="content" source="../media/bulkuserorg.png" alt-text="bulkuploadusertoOrg":::

## Edit Organization of Learner

Global administrator can update user organization while [**editing learner profile**](manage-users/edit-user-profile-on-the-platform.md#option-1---steps-to-edit-a-single-user-profile).

>[!warning]
>
> Adding an existing user from a different Organization will lead to loss of course progress made in previous organization
>

## View and Download users in Organization

1. On the Microsoft Community Training portal, after login [**switch to administrator view**](../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal)

2. Select 'All Users' tab in the left-navigation page from users module

3. Filter for Organization you want to view users from and download the list.
    1. By default 'All Organization' is selected and when you click download, you will get a zipped folder with a  .csv file for each organization
    :::image type="content" source="../media/filterorg.png" alt-text="filterfroorganization":::

<!---
Learners can be assigned to Organizations on the portal using API call. You can refer to [**REST API documentation**](../rest-api-management/api-documentation.md) to learn more about accessing API Signatures.

The API signature that assigns learners to Organizations is given below.
**Request URL:** PUT /api/v1/user/organization.

**Body:**

```json
{
  "UserContact": "string",
  "OrganizationName": "string"
}
```
--->

>[!Note]
>
> For instances with MS Teams deployment, organization admin will be able to view users of the tenant to which organization admin belongs. Here are the steps to [create Organizations for each tenant](../infrastructure-management/install-your-platform-instance/create-teams-app-for-your-training-portal.md#creating-organizations-for-each-tenant)

## Impact of Organizations in various admin flows

1. [Enrolling Learner to a course](../content-management/manage-content/manage-course-category/manage-users-for-a-course.md#steps-to-enroll-users-directly-to-a-course) requires both Learner and Course to belong to same Organization.

    >[!Note]
    >Global admin, Organization Admin, Category Admin, Course admin are allowed to enroll existing users in platform to course.

2. [Enrolling Learners to Learning Path](../content-management/manage-content/manage-learning-path/manage-user-for-a-learning-path.md#steps-to-add-users-on-the-learning-path) requires both Learner and Course to belong to same Organization.

    >[!Note]
    > Global Admin, Organization Admin, Learning Path Admin are allowed to enroll existing users in platform to Learning path.

3. [Add Learner via All users](add-users/add-users-to-the-portal-1.md#option-1--add-learner-via-all-users) requires an organization to be selected.

    >[!Note]
    > Global Admin, Organization Admin can add users via All Users section.

4. [Adding users to a Group](organize-users/add-a-single-user-to-the-group.md#steps-for-adding-a-single-user-to-a-group) requires both User and Group to belong to same Organization.

    >[!Note]
    > Global Admin, Organization Admin, Group Admin can add existing users in platform to a Group.

5. [Assign content to users in the group](manage-users/assign-content-to-group-users.md#assign-content-to-users-in-the-group): Content (Courses and Learning Path) available for assignment to group users requires to have Group and content in same organization.

    >[!Note]
    > Global Admin, Organization Admin, Group Admin can add assign content to users from Group.

6. [Adding course to a Learning path](../content-management/create-content/create-learning-path/add-course-to-a-learning-path.md#add-course-to-a-learning-path) requires that both Course and Learning Path belong to same Organization.

    >[!Note]
    > Global Admin, Organization Admin, Learning Path Admin can add courses to a learning path.

7. Admin can update organization of a Category while [changing Course details](../content-management/manage-content/manage-course-category/change-course-details.md#change-course-details).

    >[!Note]
    > Global Admin, Organization Admin can change organization of a category.

    >[!Warning]
    > While changing organization of an existing category, course progress made by learner on previous organization would be lost.
