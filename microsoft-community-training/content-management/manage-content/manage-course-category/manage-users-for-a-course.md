---
title: Manage Users for a Course
original-url: https://docs.microsoftcommunitytraining.com/docs/manage-users-for-a-course
author: nikotha
ms.author: nikotha
description: On the Community Training management portal, you can view, add and remove users for a particular course directly from the course module.
ms.prod: learning-azure
---

# Manage Users for a Course

On the Community Training portal, you can view, add and remove users for a particular course directly from the course module.

In this article, you will learn how to manage user enrollment for a particular course.

## Permissions Level

The Community Training portal provides role-based permission levels. The table below shows which administrative roles can view, add or remove users from a course.

| Access Level  | Add or Remove users to a course |
| --- | --- |
| Global Administrator | Yes |
| Organization Administrator | Yes |
| Learning Path Administrator | Yes |
| Category Administrator | No |
| Course Administrator | No |
| Group Administrator | No|

## Steps to enroll users directly to a course

In this topic, you will learn how to enroll users directly to a course.

> [!IMPORTANT]  
> This feature is applicable only for Admin enrolled and Self-enrolled courses as users are automatically added to auto enrolled courses.

1. Log in to the Community Training portal and [**switch to administrator view**](../../../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal).

1. Select the **Course** for which you want to add users from the **Course** tab.

1. Select **Manage Users** on the top-right of the course details page.

    ![Manage user](../../../media/image%2851%29.png)

1. You can choose between the following two methods to enroll users for the course.
    * **Add users** – This option is used to add one user to the course at a time. Select **Add User**, enter the phone number, then select **Add**.
    * **Bulk upload users** – This option is used to add multiple users to the course. Select **Bulk upload users** then locate the CSV file containing the list of users and select **Upload**. To structure the CSV file in the correct format - [**Click here to see detailed steps**](../../../user-management/organize-users/create-a-new-group.md).

        ![Manage users](../../../media/Manage%20users.png)

> [!Note]  
> If the platform has been setup with the login identity as *Social Account* or *Azure Active Directory*, you will need to enter an email address in the above step.

## Remove user enrollment for a course

In this topic, you will learn how to remove user enrollment from a course.

> [!IMPORTANT]  
> This feature is available only for Admin enrolled and Self-enrolled courses, users cannot be removed from an Auto enrolled course.

1. Log in to the Community Training portal and [**switch to administrator view**](../../../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal)
1. Select the **Course** under the **Course** tab you want to remove users from.

1. Select **Manage Users** on top-right of the course details page.

    ![CLick Manage Users](../../../media/image%2851%29.png)

1. Select ![Remove icon](../../../media/Remove%20icon.png) to remove a user from the course. The remove icon is shown only when you place your mouse over it.

    ![Manage Users](../../../media/Manage%20Users.png)

1. On the confirmation dialog, press **Ok** to confirm and complete removal.

    ![Delete course registration](../../../media/Delete%20course%20registration.png)

    > [!WARNING]  
    > When you remove a user's registration (or enrollment) from a course, all the course tracking and progress for the learner is also deleted from the portal.

Please reach out to us [**via HelpDesk**](https://aka.ms/cthelpdesk) if you have any further queries.