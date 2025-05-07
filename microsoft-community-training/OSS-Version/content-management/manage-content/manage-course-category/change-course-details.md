---
title: Change Course details
original-url: https://docs.microsoftcommunitytraining.com/docs/change-course-details
author: nikotha
ms.author: nikotha
description: Once the course is created on the portal, you can change the course details like name, description, enrollment type, certification and thumbnail or delete the course as per your requirements.
ms.prod: learning-azure
---

# Change Course details

Once the course is created on the portal, you can change the course details like name, description, enrollment type, certification and thumbnail or delete the course as per your requirements.

In this article, you will learn more about how to edit/ delete course details and understand its impact on the existing/new learners on the portal:

## Permissions Level

The  Community Training management portal provides role-based administration and depending upon the type of access level admins can perform an action on the portal. Table below shows administrative role which are allowed to change course details for a course or delete a course in the portal:

| Access Level  | Edit a course | Delete a course |
| --- | --- | --- |
| Global Administrator | Yes | Yes |
| Organization Administrator | Yes | Yes |
| Learning path Administrator | Yes | Yes |
| Category Administrator | Yes | Yes |
| Course Administrator | Yes | Yes |
| Group Administrator | No | No |

## Steps to edit course details for a course

1. On the  Community Training portal, [**switch to administrator view**](../../../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal) and click on **Content tab**.

2. Go to **Categories tab** and select the Course for which you want to change the details

3. Click or tap on **More (…)** icon to the right of course name and select Edit course details option.

    ![Edit course details drop down](../../../media/Edit%20course%20details%20drop%20down.png)

4. Edit course name, course description and thumbnail for the course

    ![Edit course](../../../media/image%28254%29.png)

    > [!IMPORTANT]
    > Recommended size for the thumbnail image is 320 * 180 px.

5. Edit the **[Enable certificate](../../../settings/enable-course-level-certificate.md)** option if required. For an existing course, if you uncheck certificate option, learners who have previously completed the course will no longer see the certificate in the course outline.

6. Edit the **Restrict lesson ordering** option if required. For an existing course, if you check the restrict lesson ordering option, it will only impact the lessons that are yet to be completed by a learner.

7. Edit the **Learner Enrollment** option for the course. Changing the enrollment options  for a course will impact the existing and new learners in the following manner:

    | Previous enrollment type | New enrollment type | Impact on course enrollment |
    | --- | --- | --- |
    | Self-enrol (Allow users to enrol on their own) | Automatically enrol all learners | **Existing users** – all existing users whether enrolled previously or not will get enrolled to the course after the change. **New users** – any new user signing up on the portal will get auto-enrol to the course |
    | Automatically enrol all learners  | Self-enrol (Allow users to enrol on their own) | **Existing users** – no change. **New users** – they will not get auto-enrol to the course during sign up but can register for the course from the course library |
    | Only admin can enrol learners  | Automatically enrol all learners | **Existing users** – all existing users whether enrolled previously or not will get enrolled to the course after the change. **New users** – any new user logging into the portal will get auto-enrol to the course |
    | Automatically enrol all learners | Only admin can enrol learners | **Existing users** – no change. **New users** – any new user logging into the portal will get not auto-enrol to the course |
    | Self-enrol (Allow users to enrol on their own) | Only admin can enrol learners | **Existing users** – existing users who were previously not enrolled for the course won’t be able to register on their own from the course library. **New users** – any new user logging into the portal won’t be able to register for the course on their own |
    | Only admin can enrol learners | Self-enrol (Allow users to enrol on their own) | **Existing users** – users can now go to course library and register for the course on their own. Earlier this course was not available or listed in the course library. **New users** – after sign-up new users can go to the course library and register for the course on their own |

8. Click or tap on the **update** button to commit the changes.

## Steps to delete a course on the portal

1. On the  Community Training portal, login and [**switch to administrator view**](../../../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal) and under **Course tab**, select the course which you want to delete from the portal

2. Click or tap on **More (…)** icon to the right of the course name and select the **Delete course** option from the menu

    ![Delete course drop down](../../../media/Delete%20course%20drop%20down.png)

3. On the confirmation pop-up, click or tap **Ok** to delete the course.

    ![Delete a course](../../../media/Delete%20a%20course.png)

    > [!WARNING]
    > When an administrator deletes a course, along with the course all the user enrollment details and learner progress are removed from the portal.)
