---
title: Create new group
original-url: https://docs.microsoftcommunitytraining.com/docs/create-a-new-group
author: nikotha
ms.author: nikotha
description: Group is a key feature in the Community Training platform. It enables you to delegate user management and drive learner engagement to the grassroots-level.
ms.service: azure
---

# Create new group

A Group is a key feature in the Community Training platform. It enables you to delegate user management and drive learner engagement to the grassroots-level.

Groups make user management easy via automatic enrollment, bulk user onboarding, course assignments, announcements and monitoring learner progress.

> [!Note]  
> If your platform is setup with **Microsoft Entra ID (Azure AD) as login identity *and* Microsoft Teams as an end point**, you won't be allowed to create groups from the management portal. All the user management activities have to be performed inside Microsoft Teams.

## Permissions Level

The Community Training portal provides role-based permision level. The table below shows which administrative roles can create a new group on the portal.

| Access Level | Create a new Group |
| --- | --- |
| Global Administrator | Yes |
| Organization Administrator  | Yes |
| Learning Path Administrator | No |
| Category Administrator | No |
| Course Administrator | No |
| Group Administrator | Yes |

## Steps to create a new group

1. Log on to the Community Training portal and [**swtich to administrator view**](../../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal) then select **Users** from the left navigation panel.

1. To add a new group, Select **New Group** on the bottom-left of the page.

    ![New Group](../../media/New%20Group.png)

1. Enter the group name, group administrator information (optional), Organization (optional) then select **Add** to confirm the details entered.

    ![User Management - Organize Users - New Group](../../media/User%20Management%20-%20Organize%20Users%20-%20New%20Group.png)

    > [!Note]  
    > When a group is created, by default, the user who created the group will be the group administrator.

    > [!Note]  
    > If Organizations are NOT defined on the training platform, the **Organization** field in Group creation will be disabled. However, if the Organizations are defined, the Organization field in Group creation will be mandatory.

1. From **Add Users** pop-up, you can choose [**Manually add users**](#manually-add-users-to-group-during-creation-time) or [**Automatically add users**](#automatically-add-users-to-group-during-creation) to add users at the time of group creation and follow the instructions shown.

    ![User Management - Organize Users - New Group Options](../../media/User%20Management%20-%20Organize%20Users%20-%20New%20Group%20Options.png)

    > [!IMPORTANT]  
    > The option to **Automatically add users** will be available only to Global administrators and Organization administrators.

1. Select **Skip** during step 4 if you want to add users to the group later.

## Manually add users to group during creation time

1. Select **Manually add users** then choose between the following two methods:

    - **Add Single User** – Use this option to add one user at a time. Select **Add Single User**, enter the phone number then select **Add** to confirm.  
    - **Bulk Upload Users** – This option is used to add multiple users at once. For detailed steps, see how to [**structure the csv file and bulk upload users**](../organize-users/add-multiple-users-to-the-group.md) on the portal

    ![User Management - Organize Users - New Manual Group](../../media/User%20Management%20-%20Organize%20Users%20-%20New%20Manual%20Group.png)

1. Click on **Skip** if you want to add users to the group later

> [!IMPORTANT]  
> If your platform is setup with the login identity **Social Account** or **Azure Active Directory** then you will need to enter email address in the above step.

## Automatically add users to group during creation

1. Select **Automatically add users**.

1. To add users automatically, you need to setup rules. See the [**detailed steps here**](../organize-users/setup-automatic-user-enrollment-for-a-group-1.md).
