---
title: Assign content to users in the group
original-url: https://docs.microsoftcommunitytraining.com/docs/assign-content-to-group-users
author: nikotha
ms.author: nikotha
description: "By default, learners can only access content that is auto or self enrolled. An administrator must assign Amin only enrolled content (Learning Paths and Courses) to learners either individually or to a group."
ms.service: azure
---
> [!IMPORTANT]  
> Community Training will reach end of support on Tuesday, April 7, 2026. No new deployments are available at this time. Existing Community Training customers will continue to receive security updates and technical support through Tuesday, April 7, 2026 at 11:59 pm. For more information or support, please reach out to our team here: https://aka.ms/cthelpdesk
# Assign content to users in the group

By default, learners can only access content that is auto or self enrolled. An administrator must assign Amin only enrolled content (Learning Paths and Courses) to learners either individually or to a group.

To begin assigning content, administrators need to create a group and then assign content to that group. Once the content is assigned, all the existing users and new users in the group will be auto assigned the selected Learning Paths and Courses. Administrators can assign any number of published Learning Paths and Courses to a group irrespective of their enrollment type.

An Administrator can **assign priority** (Required, Recommended, Optional, Default) to any course that is part of a Learning Path or assigned directly to a user.

In this article, you will learn how to assign Learning Paths and Courses to user groups.

## Permissions Level

The Community Training portal provides role-based permission levels. The table below shows which administrative roles can assign content to the users in a group on the portal.

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
> Whenever a new course is assigned to the users by the administrator, an announcement is sent to users which can be viewed in the **Notifications** section of the learner experience.

1. Log in to the Community Training portal and [**switch to administrator view** ](../../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal) then select a Group to which you want to assign courses.

1. Select **Content** from group details page.

    ![User Management - Manage User - Content Tab](../../media/User%20Management%20-%20Manage%20User%20-%20Content%20Tab.png)

1. Select **Assign Content** to see the list of courses which can be assigned to the group.  

    > [!Note]  
    > Only [**published content**](../../content-management/create-content/create-course-category/publishing-course.md) is displayed in the list.

1. From the left panel, select **Learning Paths** then the Learning Paths you want to assign to the groupnby selecting **Courses** and choosing the courses you want.  

    ![User Management - Manage User - Add LP](../../media/User%20Management%20-%20Manage%20User%20-%20Add%20LP.png)

    > [!Note]  
    >
    >* Switching between the Learning Paths and Courses tabs will require you to save your content assignment.
    >
    >* You can also unselect Courses/Learning Paths which will **de-assign that content** from the learners of that group. Learners will not be able to view the content anymore. For more information, refer [here](De-assigning-content-from-user.md).  

1. Optionally, you can also define the **Priority** for each assigned course. The highest priority for any course is *Required*, followed by *Recommended*, *Optional* and, lastly, *Default*. The defined priority will be applicable to all the existing and future learners of the group and **can be edited at any stage by an administrator**.

    ![User Management - Manage User - Add Priority1](../../media/User%20Management%20-%20Manage%20User%20-%20Add%20Priority1.png)

    > [!TIP]  
    > **Priority** can be used to communicate the urgency of a course to the learners. Priority defined from the portal will be shown to learners on the home page.

    > [!Note]  
    >
    > 1. You can also disable the **Prioities** feature. More information is available [here](../../settings/configurations-on-the-training-platform.md#configuration-options-on-the-portal).
    > 2. Optionally, administrators can also enable the setting to NOT show any other content to learners if any of the **Required** (highest priority) courses are  NOT complete.

1. Select **Done** to complete the content assignment.

    > [!Note]  
    > An Administrator can change the list of assigned courses for the group at any point but it will only impact the course enrollment for new users added to the group after the change.
    >
    >For example, let's say the administrator has removed **Presentation skills** from the list of assigned courses for the **Marketing group** shown above. This will mean that any new user added to the group will not be auto-enrolled to the Presentation skills course but existing users who are enrolled already will continue to see the course in the **My Courses** section of the learner experience.

    Please reach out to us [**via HelpDesk**](https://aka.ms/cthelpdesk) if you have any further queries.
