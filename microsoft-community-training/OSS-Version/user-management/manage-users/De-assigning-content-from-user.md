---
title: De-assigning content from users
original-url: https://docs.microsoftcommunitytraining.com/docs/de-assigning-content-from-user
author: v-samarth
ms.author: v-samarth
description: "When the administrator removes learners from Courses/ learning paths/ user groups, in a way it de-assigns the relevant content mapped through these segments to the learner."
ms.prod: learning-azure
---

# De-assignment of Content from the User

Microsoft Community Training platform now allows the administrator to remove learners from Courses/ learning paths/ user groups and therefore de-assign them from the relevant content mapped through these segments. With this, once the learner is de-assigned from a content, he/she will not be able to view that content.

>[!Note]
>
>* If the learner has completed 100% of a course, he/she cannot be de-assigned from that course and his/her would still be able to see the course and their progress would remain intact.
>* The content de-assignment holds applicable for self-enroll and admin enroll type of courses only. The user remains enrolled in auto enroll courses and there is no effect in that case – the learner progress also remains intact in this case for the auto-enroll course.

The learner would be de-assigned from the course in the following scenarios:

## User Profile updated

In scenarios where the learner’s profile is update either by the learner himself or by the administrator (via UI or json/csv API) the smart groups associated with that profile field value would be de-assigned and the new groups (if applicable) that are associated with the new value of that profile field would be assigned to the user. This scenario will also be applicable to bulk user profile update.

## Group Deletion

In case the administrator deletes a specific group from the learning instance, the learners association with courses belonging to that group would be lost.

* For those learners who are tagged to a course only via that group, he/she will no longer have the access to that course.

* For those learners who are tagged to same course via multiple groups would still be able to view content of that course, if any such group still exists.

## Admin removes user(s) from group

If the admin removes learner(s) from a specific group, all the association that exists between the learner and Course would be lost and hence the user would be de-assigned from those courses (unless some other association via some other group still exists)

## Admin removes course(s) from group

If the Admin removes course(s) from a group, all the association that exists between the learner and Course would be lost and hence the user would be de-assigned from those courses (unless some other association via some other group still exists)

## Admin removes learning path(s) from group

If the Administrator removes learning path(s) from a group, all the association that exists between the learner and Course through that learning path would be lost and hence the user would be de-assigned from those courses (unless some other association via some other group still exists)

## Admin removes course(s) from learning path

If the Administrator removes course(s) from learning path(s), all the association that exists between the learner and Course through that learning path would be lost and hence the user would be de-assigned from those courses (unless some other association via some other learning path(s) still exists)

>[!Warning]
>All the language translated courses (sub-courses as shown below) will also be de-assigned to the learner upon de-assignment of the parent course to that learner.
