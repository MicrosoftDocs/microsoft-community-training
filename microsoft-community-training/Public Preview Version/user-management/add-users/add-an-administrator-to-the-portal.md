---
title: Add administrators to the platform
original-url: https://docs.microsoftcommunitytraining.com/docs/add-an-administrator-to-the-portal
author: nikotha
ms.author: nikotha
description: "Microsoft Community Training management portal provides six types of administrative role to a user on the portal."
ms.prod: learning-azure
---

# Add administrators to the platform

Microsoft Community Training management portal provides six types of administrative role to a user on the portal - Global Administrator, Organization Administrator, Learning Path Administrator, Category Administrator, Course Administrator and Group Administrator. For more details, see this article on [**roles and responsibilities of different administrators**](../../get-started/user-role-and-management-portal-overview.md).

> [!NOTE]
> In case of Microsoft Teams integration, you won't be able to create Group administrator on the platform.  Group admin privileges are automatically assigned to owners of the Teams imported on the Microsoft Community Training platform.

In this article, you will learn more about how to assign different administrative roles to a user on the management portal.

## Permissions Level

The Microsoft Community Training management portal provides role-based administration and depending upon the type of access level admins can perform an action on the portal. Table below shows administrative role which are allowed add different types of administrators on the portal:

| Access Level   | Add Global Administrator | Add Organization Administrator | Add Learning Path Administrator | Add Category Administrator | Add Course Administrator | Add Group Administrator  |
| --- | --- | --- | --- | --- | --- | --- |
| Global Administrator | Yes | Yes | Yes | Yes | Yes | Yes |
| Organization Administrator | No | Yes | Yes | Yes | Yes | Yes |
| Learning Path Administrator | No | No | Yes | No | No | No |
| Category Administrator | No | No | No | Yes | Yes | No |
| Course Administrator | No | No | No | No |  Yes | No |
| Group Administrator | No | No | No | No | No | Yes |

## Add a global administrator to the platform

In this topic, you will learn simple steps to add Global Administrator to the portal.

1. On the  Microsoft Community Training portal, after login [**switch to administrator view**](../../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal).

2. Select **Global Administrators** option under Users tab on the top-left of the page.

    ![User Management - Add Users - Add Administrators\(1\)](../../media/User%20Management%20-%20Add%20Users%20-%20Add%20Administrators%281%29.png)

3. Click or tap on the **Global Administrator** button on details page to add new global administrator.

4. Enter contact details of the user.

    ![User Management - Add Users - Add Global Admin-border](../../media/User%20Management%20-%20Add%20Users%20-%20Add%20Global%20Admin-border.png)

5. Click or tap on the **Add** button to add user as an global administrator of the portal.

> [!IMPORTANT]
> In case portal is setup with **Social Account** or **Azure Active Directory** as login identity then you will need to enter email address in the above step.

## Add an organization administrator to the platform

Here are the detailed steps on how to [**add an organization administrator to the platform**](./../organization-management.md#create-a-new-organization-administrator).

## Add a learning path administrator to the platform

Here are the detailed steps on how to [**add a learning path administrator to the platform**](../../content-management/manage-content/manage-learning-path/add-an-administrator-for-a-learning-path.md).

## Add a category administrator to the platform

Here are the detailed steps on how to [**add category administrator to the platform**](../../content-management/manage-content/manage-course-category/add-an-administrator-for-a-course.md#add-a-category-administrator).

## Add a course administrator to the platform

Here are the detailed steps on how to [**add course administrator to the platform**](../../content-management/manage-content/manage-course-category/add-an-administrator-for-a-course.md#add-a-course-administrator).

## Add a group administrator to the platform

Groups are managed by group administrators, who can be users in the portal but are also able to manage users in  the group, assign courses, and much more.

In this topic, you will learn simple steps to add Group Administrator to the portal

1. On the  Microsoft Community Training portal, after login [**switch to administrator view**](../../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal) and **select a Group** under the Users tab

2. Click or tap **More (...)** icon next to the group name  

    ![Add user drop down](../../media/Add%20user%20drop%20down.png)

3. Click or tap **Add Administrator** from the drop-down menu

4. Enter phone number to add user as an administrator for the group.

    ![Add administrator](../../media/Add%20administrator.png)

> [!IMPORTANT]
> In case portal is setup with **Social Account or Azure Active Directory** as login identity then you will need to enter email address in the above step.

Alternatively, you can also **Add Administrator** to the group by clicking on the **More(…)** button on the top right of the details page and select **Manage Administrators** option. Click or tap **Add Administrator** button to add administrators to the Group.

## Adding one or more admins to an organization by Organization Admin

MCT now supports an organization administrator to add one or more other administrators, to their respective Organizations

### Steps to add one or more Administrators to an organization, by Organization Administrator

1. Go to Admin View
2. In the Users Tab, go to Organization Administrators
     > [!Note]
    > An Organization Admin will only be able to see the list of administrators of the organizations to which the Organization Admin has admin access is enabled

3. Click on "Add Administrators”

    :::image type="content" source="../../media/Add Admin by Org Admin.png" alt-text="Add admin option to Org Administrator":::

    > [!Note]
    > "Manage Organizations" option is greyed-out for Organization admin and will only be accessible to Global Administrator
4. In the pop-up box, add the user detail to whom the organization admin access is to be given

    :::image type="content" source="../../media/Add Admin by Org Admin 2.png" alt-text="Choose Organization details":::

5. Then select the **Organization** to which the user must be added as Organization Administrator

    :::image type="content" source="../../media/Org Admin addition.png" alt-text="Org Admin addition list":::

    > [!Note]
    > Organization admin would only be able to see the list of Organizations for which admin access is enabled
6. After selecting the organization, click on “Create”
    > [!Important]
    > Organization admin will only be able to edit but not delete other Organization admin
