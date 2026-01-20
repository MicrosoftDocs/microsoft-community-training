---
title: Add learners to the platform
original-url: https://docs.microsoftcommunitytraining.com/docs/add-users-to-the-portal-1
author: nikotha
ms.author: nikotha
description: Community Training management portal provides two ways to add learners to the portal.
ms.service: azure
---
> [!IMPORTANT]  
> Community Training will reach end of support on Tuesday, April 7, 2026. No new deployments are available at this time. Existing Community Training customers will continue to receive security updates and technical support through Tuesday, April 7, 2026 at 11:59 pm. For more information or support, please reach out to our team here: https://aka.ms/cthelpdesk
# Add learners to the platform

The Community Training platform provides two ways to add learners to the portal: Administrators can add learners through a specific group or directly through the **All Users** list. The **All Users** option is available only to Global Administrators.
  
## Option 1 – Add a Learner via All users

In this topic, you will learn how to add a learner from the All Users list.
  
### Permissions Level

The Community Training management portal provides role-based permission levels. The table below shows which administrative roles can add learners from All Users list:

| Access Level | Add learners via All Users |
| --- | --- |
| Global Administrator | Yes |
| Organization Administrator | No |
| Learning Path Administrator | No |
| Category Administrator | No |
| Course Administrator | No |
| Group Administrator | No |

### Steps to add learners via All Users list

1. Log on to the Community Training portal and [**switch to administrator view**](../../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal).

1. Select **All Users** in the left-navigation page from the users module.

1. Select **Add Users** from the top-right of the details page.

    ![All users main screen](../../media/All%20users%20main%20screen.png)

1. Choose between the following two methods to add users:

    - **Add Single User** – Use this option to add one user at a time. Select **Add Single user**, enter the phone number then select **Add** to confirm.

        ![Add single user one](../../media/Add%20single%20user%20one.png)

    - **Bulk upload users** – This option is used to add multiple users in one action. For detailed steps, see how to [**structure the csv file and bulk upload users**](../organize-users/add-multiple-users-to-the-group.md).

> [!IMPORTANT]  
> If the platform is setup with the login identity **Social Account** or **Azure Active Directory** then you will need to enter an email address in the above step.

## Option 2 – Add Learner via Groups

> [!Note]  
> When the same user is added to multiple groups, it won't create a duplicate user i.e. there is only 1 user on the platform against one email address or phone number.

In this topic, you will learn how to add a learner via specific group.

### Permission Level

The Community Training management portal provides role-based permission levels. The table below shows which administrative roles can add learners via a Group:

| Access Level | Add learners via All Users |
| --- | --- |
| Global Administrator | Yes |
| Organization Administrator | Yes |
| Learning Path Administrator | No |
| Category Administrator | No |
| Course Administrator | No |
| Group Administrator | Yes |

### Steps to add learners via a Group

Before you begin, please create a group using the steps mentioned [**in this article**](./../organize-users/create-a-new-group.md).

1. On the Community Training portal, after login [**switch to administrator view**](../../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal) and select a specific group under Users tab

    ![Steps to add learners via Group](../../media/image%2856%29.png)

1. Select **Add user** on the group details page.

1. Choose between the following two methods:
    - **Add Single User** – Use this option to add one user at a time. Select **Add Single user**, enter the phone number then select **Add** to confirm.

        ![Add single user one](../../media/Add%20single%20user%20one.png)

    - **Bulk upload users** – This option is used to add multiple users in one action. For detailed steps, see how to [**structure the csv file and bulk upload users**](../organize-users/add-multiple-users-to-the-group.md).

> [!IMPORTANT]  
> If the platform is setup with the login identity **Social Account** or **Azure Active Directory** then you will need to enter an email address in the above step.

Please reach out to us [**via HelpDesk**](https://aka.ms/cthelpdesk) if you have any further queries.