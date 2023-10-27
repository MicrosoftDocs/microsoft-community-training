---
title: Change Course details
original-url: https://docs.microsoftcommunitytraining.com/docs/change-course-details
author: nikotha
ms.author: nikotha
description: Once the course is created on the portal, you can change the course details like name, description, enrollment type, certification and thumbnail or delete the course as per your requirements.
ms.prod: learning-azure
---

# Change Course details

Once a course has been created on the portal, you can change the course details like name, description, enrollment type, certification and thumbnail or delete the course as per your requirements.

In this article, you will learn how to edit/delete course details and understand its impact on existing/new learners on the portal.

## Permissions Level

The Community Training portal provides role-based permission levels. The table below shows which administrative roles can change the course details or delete a course.

| Access Level  | Edit a course | Delete a course |
| --- | --- | --- |
| Global Administrator | Yes | Yes |
| Organization Administrator | Yes | Yes |
| Learning path Administrator | Yes | Yes |
| Category Administrator | Yes | Yes |
| Course Administrator | Yes | Yes |
| Group Administrator | No | No |

## Steps to edit course details for a course

1. Log on to the Community Training portal and [**switch to administrator view**](../../../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal) the select the **Content** tab.

1. Go to **Categories tab** and select the Course you want to change the details for.

1. Select **More (…)** to the right of the course name and select **Edit course details**.

    ![Edit course details drop down](../../../media/Edit%20course%20details%20drop%20down.png)

1. Edit the course name, course description and thumbnail as required.

    ![Edit course](../../../media/image%28254%29.png)

    > [!IMPORTANT]
    > Recommended size for the thumbnail image is 320 * 180 px.

1. Edit **[Enable certificate](../../../settings/enable-course-level-certificate.md)** if required. For an existing course, if you uncheck the certificate option, learners who have previously completed the course will no longer see the certificate in the course outline.

1. Edit  **Restrict lesson ordering** if required. For an existing course, if you check the restrict lesson ordering option, it will only impact the lessons that are yet to be completed by a learner.

1. Edit **Learner Enrollment** for the course. Changing the enrollment options for a course will impact existing and new learners in the following manner:

    | Previous enrollment type | New enrollment type | Impact on course enrollment |
    | --- | --- | --- |
    | Self-enrol (Allow users to enrol on their own) | Automatically enrol all learners | **Existing users** – all existing users whether enrolled previously or not will get enrolled to the course after the change. **New users** – any new user signing up on the portal will get auto-enrol to the course |
    | Automatically enrol all learners  | Self-enrol (Allow users to enrol on their own) | **Existing users** – no change. **New users** – they will not get auto-enrol to the course during sign up but can register for the course from the course library |
    | Only admin can enrol learners  | Automatically enrol all learners | **Existing users** – all existing users whether enrolled previously or not will get enrolled to the course after the change. **New users** – any new user logging into the portal will get auto-enrol to the course |
    | Automatically enrol all learners | Only admin can enrol learners | **Existing users** – no change. **New users** – any new user logging into the portal will get not auto-enrol to the course |
    | Self-enrol (Allow users to enrol on their own) | Only admin can enrol learners | **Existing users** – existing users who were previously not enrolled for the course won’t be able to register on their own from the course library. **New users** – any new user logging into the portal won’t be able to register for the course on their own |
    | Only admin can enrol learners | Self-enrol (Allow users to enrol on their own) | **Existing users** – users can now go to course library and register for the course on their own. Earlier this course was not available or listed in the course library. **New users** – after sign-up new users can go to the course library and register for the course on their own |

1. Select **Update** to commit your changes.

## Steps to delete a course on the portal

1. Log on to the Community Training portal and [**switch to administrator view**](../../../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal).
1. Select the course which you want to delete from the **Course** tab.

1. Select **More (…)** to the right of the course name and select **Delete course** from the menu presented.

    ![Delete course drop down](../../../media/Delete%20course%20drop%20down.png)

1. Select **Ok** to delete the course.

    ![Delete a course](../../../media/Delete%20a%20course.png)

    > [!WARNING]
    > When an administrator deletes a course, the user enrollment details and learner progress are also removed from the portal.
