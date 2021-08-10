---
title: Create new group
original-url: https://docs.microsoftcommunitytraining.com/docs/create-a-new-group
author: nikotha
ms.author: nikotha
description: Group is a key feature in the Microsoft Community Training platform. It enables you to delegate user management and drive learner engagement to the grassroots-level.
ms.prod: azure
---

# Create new group

Group is a key feature in the Microsoft Community Training platform. It enables you to delegate user management and drive learner engagement to the grassroots-level.

Groups make user management easy via automatic enrollment, bulk user onboarding, course assignments, announcements and monitoring learner progress.

> [!NOTE]
> In case of platform is setup with **Azure AD as login identity and Microsoft Teams as an end point**, you won't be allowed to create groups from the management portal. All the user management activities have to be performed inside Microsoft Teams)

In this article, you will learn more about how to create a new group on the management portal:  

## Permissions Level

The Microsoft Community Training management portal provides role-based administration and depending upon the type of access level administrator can perform an action on the portal. Table below shows administrative role which are allowed to create a new group on the portal:

| Access Level | Create a new Group |
| --- | --- |
| Global Administrator | Yes |
| Organization Administrator  | Yes |
| Learning Path Administrator | No |
| Category Administrator | No |
| Course Administrator | No |
| Group Administrator | Yes |

## Steps to create a new group

1. On the Microsoft Community Training portal, after login [**swtich to administrator view**](../../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal) and select Users tab from the left navigation panel.

2. To add a new group, click or tap **New Group** on the bottom-left of the page.

    ![New Group](../../media/New%20Group.png)

3. Enter group name, group administrator information (optional), Organization (optional) and click or tap **Add**.

    ![User Management - Organize Users - New Group](../../media/User%20Management%20-%20Organize%20Users%20-%20New%20Group.png)

    >[!NOTE]
    > When group is created, by default, the user who created the group will be the group administrator.

    >[!NOTE]
    > If Organizations are NOT defined on the training platform, the Organization field in Group creation will be disabled. However, if the Organizations are defined, the Organization field in Group creation will be mandatory.

4. From **Add Users** pop-up, you can choose [**Manually add users**](#manually-add-users-to-group-during-creation-time) or [**Automatically add users**](#automatically-add-users-to-group-during-creation) to add users at the time group creation and follow the instructions.

    ![User Management - Organize Users - New Group Options](../../media/User%20Management%20-%20Organize%20Users%20-%20New%20Group%20Options.png)

    > [!IMPORTANT]
    > The option to **Automatically add users** will be available only to Global administrators and Organization administrators.

5. Click or tap **Skip** during step 4 in case you want to add users to the group later.

## Manually add users to group during creation time

1. Click or tap **Manually add users** button

2. Choose between the following two methods to add users

    - **Add Single User** – Use this option to add one user at a time. Click or tap **Add Single User**, enter the phone number and then click or tap **Add** button.  
    - **Bulk Upload Users** – This option is used to add multiple users at once. For detailed steps, see how to [**structure the csv file and bulk upload users**](../organize-users/add-multiple-users-to-the-group.md) on the portal

    ![User Management - Organize Users - New Manual Group](../../media/User%20Management%20-%20Organize%20Users%20-%20New%20Manual%20Group.png)

3. Click on **Skip** if you want to add users to the group later

> [!IMPORTANT]
> In case portal is setup with **Social Account** or **Azure Active Directory** as login identity then you will need to enter email address in the above step.

## Automatically add users to group during creation

1. Click or tap **Automatically add users** button

2. To add users automatically, you need to setup rules. See the [**detailed steps here**](../organize-users/setup-automatic-user-enrollment-for-a-group-1.md).
