---
title: Organization Management
original-url: https://docs.microsoftcommunitytraining.com/docs/organization-management
author: nikotha
ms.author: nikotha
description: Community Training supports multiple organizations to be created on the training platform where content and users can be mutually exclusive to each other.
ms.prod: learning-azure
---
# Organization Management

Community Training supports multiple organizations to be created where content and users can be part of siloed organizations within the same instance.

An **Organization** on the Community Training platform is a set of learners and administrators who have a particular purpose or belong to a specific criteria such as location, job function, interest etc. The organization administrator can use the management portal to manage content and users for its organization.

Global administrators can define the organizations on the training platform based on their specific training requirements. In this topic, you will how to create and manage Organizations and Organization Administrators on the training portal.

## Permissions Level

The Community Training portal provides role-based permission levels. The table below shows which administrative role can create and edit Organizations and Organization Administrators on the platform:

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

1. Log on to the Community Training portal and [**switch to administrator view**](../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal).

1. Select **Settings** from the left navigation panel then **Manage Organizations**.

    :::image type="content" source="../media/manageorg.png" alt-text="manageorganizations":::

1. Select **Add Organization**.

1. Enter the Organization name and description (optional) and click **Create**.

    ![User Management - Add Organization - Create Organization](../media/User%20Management%20-%20Add%20Organization%20-%20Create%20Organization.png)

<!--
1. On the  Community Training portal, after login [**switch to administrator view**](../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal).

    ![Create a New Organization](../media/image%28421%29.png)

1. Select **Organization Administrators** option under **Users tab** on the top-left of the page.

    ![User Management - Organization Administrator](../media/User%20Management%20-%20Organization%20Administrator.png)

    > [!Note]
    > This access is available only to Global Administrators on the platform.

1. To add new organization click on **Manage Organizations**

    ![User Management - Add Organization - 1 ](../media/User%20Management%20-%20Add%20Organization%20-%201%20.png)

1. From the **Manage Organizations** panel, click on **Add Organization**

    ![User Management - Add Organization - Manage Organization](../media/User%20Management%20-%20Add%20Organization%20-%20Manage%20Organization.png)

1. Enter the Organization name and description (optional) and click **Create**.

    ![User Management - Add Organization - Create Organization](../media/User%20Management%20-%20Add%20Organization%20-%20Create%20Organization.png)

1. Click on **Done** to close the **Manage Organization** panel.
-->

## Edit an Existing Organization

> [!NOTE]
> This access is available only to Global Administrators on the platform.

1. Log on to the Community Training portal and [**switch to administrator view**](../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal).

1. Select **Settings** from the left navigation panel then **Manage Organizations**.

1. From the **Manage Organizations** panel, select the **pencil icon** next to the respective Organization name.

    :::image type="content" source="../media/Orgbrandedit.png" alt-text="brandedit":::

1. Edit the Organization name and/or description and select **Update** to confirm.

    ![User Management - Add Organization - Edit Organization](../media/User%20Management%20-%20Add%20Organization%20-%20Edit%20Organization.png)

<!--
1. On the  Community Training portal, after login [**switch to administrator view**](../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal).

    ![Edit an Existing Organization](../media/image%28421%29.png)

1. Select **Organization Administrators** option under Users tab on the top-left of the page.

    ![User Management - Organization Administrator](../media/User%20Management%20-%20Organization%20Administrator.png)

    > [!Note]
    > This access is available only to Global Administrators on the platform.

1. To edit an existing organization click on **Manage Organizations**

    ![User Management - Add Organization - 1 ](../media/User%20Management%20-%20Add%20Organization%20-%201%20.png)

1. From the **Manage Organizations** panel, click on the **pencil icon** next to the respective Organization name.

    ![User Management - Add Organization - Manage Organization](../media/User%20Management%20-%20Add%20Organization%20-%20Manage%20Organization.png)

1. Edit the Organization name and/or desription and click **Update**.

    ![User Management - Add Organization - Edit Organization](../media/User%20Management%20-%20Add%20Organization%20-%20Edit%20Organization.png)

1. Click on **Done** to close the **Manage Organization** panel.
-->

## Delete an Organization

If an Organization is deleted, all content, users and user groups of the Organization will be associated with the Default Organization.

* Select **Delete** from the Manage Organizations panel to Delete an Organization.

![User Management - Add Organization - Manage Organization](../media/User%20Management%20-%20Add%20Organization%20-%20Manage%20Organization.png)

## Customize look and feel of your Organization(s)

You can customize the look and feel of your learner experience on the Community Training platform for each of your [Organizations](#create-a-new-organization)

> [!NOTE]

>* Global Administrators can adjust the settings for all Organizations.
>* Organization Administrators can only adjust these settings for the organizations won which they are administrators.

1. Log on to the Community Training portal and [**switch to administrator view**](../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal).

1. Select **Settings** from the left navigation panel then **Organization settings**.

    :::image type="content" source="../media/Orgbrandsettings.png" alt-text="brandsettings":::

1. Choose the Organization you want to update from the drop down. Here you can update the following:

    1. **General**
        1. [Set your portal name](../settings/customize-the-look-and-feel-of-your-platform.md#set-your-portal-name)
        1. [Set your privacy terms](../settings/customize-the-look-and-feel-of-your-platform.md#set-your-privacy-terms)
        1. [Enable languages on the portal](../settings/customize-the-look-and-feel-of-your-platform.md#enable-languages-on-the-portal)

    1. **Branding**
        1. [Set the logo](../settings/customize-the-look-and-feel-of-your-platform.md#set-the-logo)
        1. [Set the banner image](../settings/customize-the-look-and-feel-of-your-platform.md#set-the-banner-image)
        1. [Set the welcome text](../settings/customize-the-look-and-feel-of-your-platform.md#set-the-welcome-text)
        1. [Set the brand color](../settings/customize-the-look-and-feel-of-your-platform.md#set-the-brand-color)
        1. [Set the footer title and message](../settings/customize-the-look-and-feel-of-your-platform.md#set-the-footer-title-and-message)

    1. **Mobile Application**
    * You can create [Progressive Web Application (PWA)](../infrastructure-management/install-your-platform-instance/create-publish-mobile-app.md#option-1-creating-a-progressive-web-application-pwa-for-android) for your instance for which you need to meet the [installation requirements](../infrastructure-management/install-your-platform-instance/create-publish-mobile-app.md#installation-requirements-for-pwa-mobile-application).
    * Under Mobile Application setting you need to specify following information:

        | Setting | Description |
        | --- | --- |
        | Mobile Application Name | You can specify your Instance name, this name will be used for rendering splash screen (Android), Start menu item (Windows) |
        | Mobile Application Short Name | This will be used to generate the App icon name on the device app tray. You can mention a shorter acronym of your instance name. |
        | Application Background Color | This setting will be used for rendering Splash screen (Android) |
        | Application Logo (512 px by 512 px) | The logo must be 512x512 pixels, MCT uses this image to render Splash screen, Start menu, App Launcher item for your PWA.  |

1. Once the settings are updated, learners will see the portal customized based on their respective Organization settings to which they belong.

## Create a New Organization Administrator

1. Log on to the Community Training portal and [**switch to administrator view**](../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal).

    ![Create a New Organization Administrator](../media/image%28421%29.png)

1. Select **Organization Administrators**  from the **Users** tab.

    ![User Management - Organization Administrator](../media/User%20Management%20-%20Organization%20Administrator.png)

    > [!NOTE]
    >
    > * Global Administrators can add Organization Administrators across all organizations in the platform
    > * Organization Administrator can add other organization administrators specific to their Organizations.

1. To **create a new** Organization Administrator, click on **Add Administrator**

    ![User Management - Add Organization - Add Administrator Button](../media/User%20Management%20-%20Add%20Organization%20-%20Add%20Administrator%20Button.png)

1. In the **New Organization Administrator** popup, enter the contact details for the Organization Administrator and Select the organization(s) to which you want the Organization Administrator to have access

    ![User Management - Add Organization - Organization Administrator](../media/User%20Management%20-%20Add%20Organization%20-%20Organization%20Administrator.png)

    > [!NOTE]
    > The Organization Administrator will have all the rights as that of a Global Administrator in the context of its assigned Organizations.
    >
    > 1. One Organization Administrator can have access to more than one Organizations, and
    > 2. One Organization can be managed by more than one Organization Administrators.

1. Click on **Create** to complete the task.

## Edit an Existing Organization Administrator

1. Log on to the Community Training portal and [**switch to administrator view**](../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal).

1. Select **Organization Administrators** from the **Users** tab.

    ![User Management - Organization Administrator](../media/User%20Management%20-%20Organization%20Administrator.png)

    > [!NOTE]
    > This access is available only to Global Administrators on the platform.

1. To **edit an existing** Organization Administrator, click on the **pencil icon** next to the **Organization Administrator**. In the **Edit Organization Administrator* popup,

    1. Click on the **cross icon** against the Organization whose access you want to revoke from the Organization Administrator.
    1. **Select and add** the Organization whose access you want to provide to the Organization Administrator.

     ![User Management - Add Organization - Organization Administrator - Edit](../media/User%20Management%20-%20Add%20Organization%20-%20Organization%20Administrator%20-%20Edit.png)

## Delete an Organization Administrator

If an Organization administrator's access is revoked from an Organization, they will not be able to access content and user groups associated with the organization unless specifically added as a learning path, category or group administrator.  

Select **Delete** against the Organization Administrator to delete.

 ![User Management - Add Organization - Organization Administrator](../media/User%20Management%20-%20Add%20Organization%20-%20Organization%20Administrator.png)

## Assign learners to Organizations

Learners can be assigned to Organizations on the portal from the 'All Users' section.

> [!NOTE]
> Only Global Admin, Organization Admin can add/edit users on the platform

### Add Single User to Organization

1. Log on to the Community Training portal and [**switch to administrator view**](../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal)

1. Select **All Users** from the users module on the left.

1. Select **Add Users** on top-right of the details page then **Add Single User**

    :::image type="content" source="../media/Allusersorg.png" alt-text="Allusersorganization":::

1. Add the User contact and choose the Organization in which you want to place the user.

    :::image type="content" source="../media/orgcontactadd.png" alt-text="addcontacttoOrg":::

### Bulk upload users to Organization

> [!WARNING]
>
> Adding an existing user from a different Organization will lead to loss of course progress made in the previous organization.
>

1. Log on to the Community Training portal and [**switch to administrator view**](../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal).

1. Select **All Users** in the left-navigation page from the users module.

1. Select  **Add Users** on top-right of the details page then **Bulk upload Users**.

1. Choose the Organization where you want to upload users.
    1. Download the sample csv to add user information
    1. Now click on Upload

    :::image type="content" source="../media/bulkuserorg.png" alt-text="bulkuploadusertoOrg":::

## Edit Organization of Learner

Global administrator can update user organization while [**editing learner profile**](manage-users/edit-user-profile-on-the-platform.md#option-1---steps-to-edit-a-single-user-profile).

>[!warning]
>
> Adding an existing user from a different Organization will lead to loss of course progress made in previous organization.
>

## View and Download users in Organization

1. Log on to the Community Training portal and [**switch to administrator view**](../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal)

1. Select 'All Users' tab in the left-navigation page from users module

1. Filter for Organization you want to view users from and download the list.
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

> [!NOTE]
> For instances with MS Teams deployment, organization admin will be able to view users of the tenant to which they belong. View the steps to [create Organizations for each tenant](../infrastructure-management/install-your-platform-instance/create-teams-app-for-your-training-portal.md#creating-organizations-for-each-tenant)

## Impact of Organizations in various admin flows

1. [Enrolling Learner to a course](../content-management/manage-content/manage-course-category/manage-users-for-a-course.md#steps-to-enroll-users-directly-to-a-course) requires both Learner and Course to belong to same Organization.

   > [!NOTE]
   > Global, Organization, Category, and Course Administrators can enroll existing users to a course.

1. [Enrolling Learners to Learning Path](../content-management/manage-content/manage-learning-path/manage-user-for-a-learning-path.md#steps-to-add-users-on-the-learning-path) requires both Learner and Course to belong to same Organization.

   > [!NOTE]
   > Global, Organization, and Learning Path Administrators can enroll existing users in platform to Learning path.

1. [Add Learner via All users](add-users/add-users-to-the-portal-1.md#option-1--add-a-learner-via-all-users) requires an organization to be selected.

    > [!NOTE]
    > Global and Organization Administrtors can add users via the All Users section.

1. [Adding users to a Group](organize-users/add-a-single-user-to-the-group.md#steps-for-adding-a-single-user-to-a-group) requires both User and Group to belong to same Organization.

    > [!NOTE]
    > Global, Organization, and Group Administrators can add existing users in platform to a Group.

1. [Assign content to users in the group](manage-users/assign-content-to-group-users.md#assign-content-to-users-in-the-group): Content (Courses and Learning Path) available for assignment to group users requires to have Group and content in same organization.

    > [!NOTE]
    > Global, Organization, and Group Administrators can assign content to users from Group.

1. [Adding course to a Learning path](../content-management/create-content/create-learning-path/add-course-to-a-learning-path.md#add-course-to-a-learning-path) requires that both Course and Learning Path belong to same Organization.

    > [!NOTE]
    > Global, Organization, and Learning Path Administrators can add courses to a learning path.

1. Admin can update organization of a Category while [changing Course details](../content-management/manage-content/manage-course-category/change-course-details.md#change-course-details).

    > [!NOTE]
    > Global and Organization Administrators can change the organization of a category.

    > [!WARNING]
    > If changing the organization of an existing category, course progress made by a learner on a previous organization will be lost.
