---
title: Manage Users for a Course
original-url: https://docs.microsoftcommunitytraining.com/docs/manage-users-for-a-course
author: nikotha
ms.author: nikotha
description: On the Microsoft Community Training management portal, you can view, add and remove users for a particular course directly from the course module.
ms.prod: azure
---

# Manage Users for a Course

On the Microsoft Community Training management portal, you can view, add and remove users for a particular course directly from the course module. 

In this article, you will learn more about how to manage user enrollment for particular course on the management portal:
### Permissions Level
The Microsoft Community Training management portal provides role-based administration and depending upon the type of access level administrators can perform an action on the portal. Table below shows administrative role which are allowed to view, add or remove users from a course on the portal:

| Access Level  | Add or Remove users to a course |
| --- | --- |
| Global Administrator | Yes |
| Organization Administrator | Yes |
| Learning Path Administrator | Yes |
| Category Administrator | No |
| Course Administrator | No |
| Group Administrator | No|
## Steps to enroll users directly to a course
In this topic, you will learn the steps on how to enroll users directly to a course:

> [!IMPORTANT]
>  This feature is applicable only for Admin enrolled and Self-enrolled courses. For auto enroll course, users are automatically added to the course.

1.	On the Microsoft Community Training portal, [**switch to administrator view**](https://microsoftindia.document360.io/docs/configure-platform#step-2--switch-to-administrator-view-of-the-portal) and under **Course tab**, select the **Course** for which you want to add users 

2.	Click or tap the **Manage Users** icon on top-right of the course details page.

![Manage user](../../../media/image%2851%29.png)

3.	You can choose between the following two methods to enroll users for the course.
    * **Add users** – This option is used to add one user to the course at a time. Click or tap Add User, enter the phone number and then click or tap add user.
    * **Bulk upload users** – This option is used to add multiple users to the course at once. Click or tap on the Bulk upload users option and select the CSV file containing the list of users and then click or tap on Upload button. To structure the CSV file in the correct format - [**Click here to see detailed steps**](../../../user-management/organize-users/2_create-a-new-group.md).

![Manage users](../../../media/Manage%20users.png)

> [!NOTE]
>  In case, platform is setup with Social Account or Azure Active Directory as login identity then you will need to enter email address in the above step.
## Remove user enrollment for a course
In this topic, you will learn the steps on how to remove user enrollment from a course:

> [!IMPORTANT]
> This feature is available only for administrator enrolled and self-enrolled courses. For auto enroll course, users cannot be removed from a course.

1.	On the Microsoft Community Training portal, [**swtich to administrator view**](https://microsoftindia.document360.io/docs/configure-platform#step-2--switch-to-administrator-view-of-the-portal) and under **Course tab**, select the **Course** for which you want to add users

2.	Click or tap the **Manage Users** icon on top-right of the course details page.

![CLick Manage Users](../../../media/image%2851%29.png)

3.	Click or tap  ![Remove icon](../../../media/Remove%20icon.png) to remove user enrollment for the course. The remove icon is shown  only when you place your mouse over it.

![Manage Users](../../../media/Manage%20Users.png)

4.	On the confirmation dialog, press **Ok** to confirm user's course registration.

![Delete course registration](../../../media/Delete%20course%20registration.png)

> [!WARNING]
> When you remove a user's registration (or enrollment) from a course, all the course tracking and progress for the learner is also deleted from the portal.