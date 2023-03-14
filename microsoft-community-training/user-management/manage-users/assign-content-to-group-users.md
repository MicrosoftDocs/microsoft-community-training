---
title: Assign content to users in the group
original-url: https://docs.microsoftcommunitytraining.com/docs/assign-content-to-group-users
author: nikotha
ms.author: nikotha
description: "By default, learners can only consume auto enroll and self enroll content on the platform. For admin only courses, administrator has to assign such content (Learning Paths and Courses) to learners on the platform via groups or individually."
ms.service: azure
---

# Assign content to users in the group

By default, learners can only consume auto enroll and self enroll content on the platform. For admin only courses, administrator has to assign such content (Learning Paths and Courses) to learners on the platform via groups or individually.  

To get started with content assignment for learners, administrator needs to first create a group and then assign content to the group. Once the content are assigned the group, all the existing users and new users in the group will be auto assigned all the selected Learning Paths and Courses. Administrator can assign any numbers of published Learning Paths and Courses to a group irrespective of their enrollment type.

For any course that an administrator assigns (as part of a Learning Path or directly), they can **assign priority** (Required, Recommended, Optional, Default) to the content which will be applicable to
In this article, you will learn more about how to assign Learning Paths and Courses to group users on the management portal:

## Permissions Level

The Microsoft Community Training management portal provides role-based administration and depending upon the type of access level administrator can perform an action on the portal. Table below shows administrative role which are allowed to assign content to the users in the group on the portal:

| Access Level  | Assign course to group users  |
| --- | --- |
| Global Administrator | Yes |
| Organization Administrator | Yes |
| Learning Path Administrator | No |
| Category Administrator | No |
| Course Administrator | No |
| Group Administrator | Yes |

## Steps to assign content to users in the group

> [!TIP]
> Whenever a new course is assigned to the users by the administrator, an announcement is sent which can be viewed by users under **Notifications** section of the learner experience.

1. On the Microsoft Community Training portal, after login [**switch to administrator view in the portal**](../../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal) and select a Group to which you want to assign courses to the group users

2. Select **Content** tab from group details page

    ![User Management - Manage User - Content Tab](../../media/User%20Management%20-%20Manage%20User%20-%20Content%20Tab.png)

3. Select **Assign Content** button to see the list of courses which can be assigned to the group users.  

    > [!NOTE]
    > Only [**published content**](../../content-management/create-content/create-course-category/publishing-course.md) is displayed in the list.

4. From the left panel, click on **Learning Paths** and select the Learning Paths you want to assign to the group. You can then click on **Courses** and select the courses you want to assign to the group.  

    ![User Management - Manage User - Add LP](../../media/User%20Management%20-%20Manage%20User%20-%20Add%20LP.png)

    > [!NOTE]
    >
    >* Switching between Learning Paths and Courses tab will require you to save your content assignment.
    >
    >* You can also unselect Courses/ Learning Paths which will **de-assign that content** from the learners of that group. Hence, learners will not be able to view those contents anymore. For more information, refer [here](De-assigning-content-from-user.md).  

5. Optionally, you can also define **Priority** for each assigned course. The highest priority for any course is Required, followed by Recommended, Optional and Default. The defined priority will be applicable to all the existing and future learners of the group and **can be edited at any stage by the administrators**.

    ![User Management - Manage User - Add Priority1](../../media/User%20Management%20-%20Manage%20User%20-%20Add%20Priority1.png)

    > [!TIP]
    > **Priority** can be used to communicate the urgency of a content to the learners. Priority defined from the management portal will be shown to learners on the home page.

    > [!NOTE]
    >
    > 1. You can also disable this feature of having priorities on the portal. For more information view [this](../../settings/configurations-on-the-training-platform.md#content-priority-for-learners).
    > 2. Optionally, administrators can also enable the setting to NOT show any other content to learners if any of the **Required** (highest priority) courses are yet NOT complete.

6. Click on **Done** to complete the content assignment.

    > [!NOTE]
    > Administrator can change the list of assigned courses for the group at any point of time but it will impact the course enrollment only for the new users added to the group after the change.
    >
    >For example, let's say administrator has removed **Presentation skills** from list of assigned courses for the **Marketing group** shown above. This will mean that any new user added to the group will not be auto-enroll to the Presentation skills course but existing users who got enrolled to the course previously will continue to see the course in the **My Courses** section of the learner experience.
