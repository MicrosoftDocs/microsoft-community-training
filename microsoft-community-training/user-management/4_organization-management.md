---
title: Organization Management
original-url: https://docs.microsoftcommunitytraining.com/docs/organization-management
author: nikotha
ms.author: nikotha
description: Microsoft Community Training supports multiple organizations to be created on the training platform where content and users can be mutually exclusive to each other.
ms.prod: azure
---
# Organization Management

Microsoft Community Training supports multiple organizations to be created on the training platform where content and users can be mutually exclusive to each other.

An **Organization** on the Microsoft Community Platform is a set of learners and administrators who have a particular purpose or belong to a specific criteria viz. location, job function, interest etc. The organization administrator can use the management portal to manage content and users for its organization.

Global administrators can define the organizations on the training platform based on their specific training requirements. In this topic, you will learn simple steps to create and manage Organizations and Organization Administrators on the training portal.

### Permissions Level

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

The support for Organizations can be enabled on the platform by [enabling the application configuration for **Features:IsMultiOrgDeployment**](../settings/11_configurations-on-the-training-platform.md#enabling-organizations-on-the-platform).

## Create a New Organization

1. On the  Microsoft Community Training portal, after login [**switch to administrator view**](../get-started/4_step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal).

    ![Create a New Organization](../media/image%28421%29.png)

2. Select **Organization Administrators** option under **Users tab** on the top-left of the page.

    ![User Management - Organization Administrator](../media/User%20Management%20-%20Organization%20Administrator.png)

    > [!WARNING]
    > This access is available only to Global Administrators on the platform.

3. To add new organization click on **Manage Organizations**

    ![User Management - Add Organization - 1 ](../media/User%20Management%20-%20Add%20Organization%20-%201%20.png)

4. From the **Manage Organizations** panel, click on **Add Organization**

    ![User Management - Add Organization - Manage Organization](../media/User%20Management%20-%20Add%20Organization%20-%20Manage%20Organization.png)

5. Enter the Organization name and description (optional) and click **Create**.

    ![User Management - Add Organization - Create Organization](../media/User%20Management%20-%20Add%20Organization%20-%20Create%20Organization.png)

6. Click on **Done** to close the **Manage Organization** panel.

## Edit an Existing Organization

1. On the  Microsoft Community Training portal, after login [**switch to administrator view**](../get-started/4_step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal).

    ![Edit an Existing Organization](../media/image%28421%29.png)

2. Select **Organization Administrators** option under Users tab on the top-left of the page.

    ![User Management - Organization Administrator](../media/User%20Management%20-%20Organization%20Administrator.png)

    > [!WARNING]
    > This access is available only to Global Administrators on the platform.

3. To edit an existing organization click on **Manage Organizations**

    ![User Management - Add Organization - 1 ](../media/User%20Management%20-%20Add%20Organization%20-%201%20.png)

4. From the **Manage Organizations** panel, click on the **pencil icon** next to the respective Organization name.

    ![User Management - Add Organization - Manage Organization](../media/User%20Management%20-%20Add%20Organization%20-%20Manage%20Organization.png)

5. Edit the Organization name and/or desription and click **Update**.

    ![User Management - Add Organization - Edit Organization](../media/User%20Management%20-%20Add%20Organization%20-%20Edit%20Organization.png)

6. Click on **Done** to close the **Manage Organization** panel.

## Delete an Organization

If an Organization is deleted, all content, users and user Groups of the Organization get associated with the Default Organization.
Click on the **Delete** icon from the Manage Organizations panel to Delete an Organization.

![User Management - Add Organization - Manage Organization](../media/User%20Management%20-%20Add%20Organization%20-%20Manage%20Organization.png)

## Create a New Organization Administrator

1. On the  Microsoft Community Training portal, after login [**switch to administrator view**](../get-started/4_step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal).

    ![Create a New Organization Administrator](../media/image%28421%29.png)

2. Select **Organization Administrators** option under Users tab on the top-left of the page.

    ![User Management - Organization Administrator](../media/User%20Management%20-%20Organization%20Administrator.png)

    > [!WARNING]
    > This access is available only to Global Administrators on the platform.

3. To **create a new** Organization Administrator, click on **Add Administrator**

    ![User Management - Add Organization - Add Administrator Button](../media/User%20Management%20-%20Add%20Organization%20-%20Add%20Administrator%20Button.png)

4. In the **New Organization Administrator** popup, enter the contact details for the Organization Administrator and Select the organization(s) to which you want the Organization Administrator to have access

    ![User Management - Add Organization - Organization Administrator](../media/User%20Management%20-%20Add%20Organization%20-%20Organization%20Administrator.png)

    > [!NOTE]
    > The Organization Administrator will have all the rights as that of a Global Administrator in the context of its assigned Organizations.
    > 1. One Organization Administrator can have access to more than one Organizations, and
    > 2. One Organization can be managed by more than one Organization Administrators.

5. Click on **Create** to complete the task.

## Edit an Existing Organization Administrator

1. On the  Microsoft Community Training portal, after login [**switch to administrator view**](../get-started/4_step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal).

2. Select **Organization Administrators** option under Users tab on the top-left of the page.

    ![User Management - Organization Administrator](../media/User%20Management%20-%20Organization%20Administrator.png)

    > [!WARNING]
    > This access is available only to Global Administrators on the platform.

3. To **edit an existing** Organization Administrator, click on the **pencil icon** next to the **Organization Administrator**. In the **Edit Organization Administrator* popup,

    1. Click on the **cross icon** against the Organization whose access you want to revoke from the Organization Administrator.
    2. **Select and add** the Organization whose access you want to provide to the Organization Administrator.

     ![User Management - Add Organization - Organization Administrator - Edit](../media/User%20Management%20-%20Add%20Organization%20-%20Organization%20Administrator%20-%20Edit.png)

## Delete an Organization Administrator

If an Organization administrator's access is revoked from an Organization, it will not be able to access content and user groups associated with the organization unless specifically added as a learning path, category or group administrator.  

Click on the **Delete** icon against an Organization Administrator to delete.

 ![User Management - Add Organization - Organization Administrator](../media/User%20Management%20-%20Add%20Organization%20-%20Organization%20Administrator.png)

## Assign learners to Organizations

Learners can be assigned to Organizations on the portal using API call. You can refer to [REST API documentation](../rest-api-management/2_api-documentation.md) to learn more about accessing API Signatures.

The API signature that assigns learners to Organizations is given below.
**Request URL:** PUT /api/v1/user/organization.

**Body:**

```
{
  "UserContact": "string",
  "OrganizationName": "string"
}
```