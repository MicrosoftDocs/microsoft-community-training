---
title: De-assigning content from users
original-url: https://docs.microsoftcommunitytraining.com/docs/de-assigning-content-from-user
author: v-samarth
ms.author: v-samarth
description: "The Community Training platform now allows administrators to remove learners from Courses, Learning Paths, User Groups which will de-assign them from the relevant content mapped through these segments."
ms.prod: learning-azure
---

# De-assignment of Content from the User

The Community Training platform now allows administrators to remove learners from Courses, Learning Paths, and User Groups which will de-assign them from the relevant content mapped through these segments. With this, once the learner is de-assigned from a content, he/she will not be able to view that content.

> [!Note]  
>
>* If the learner has completed a course, they can't be de-assigned from that course and they would still be able to see the course and their progress would remain intact.
>* The content de-assignment holds applicable for Self and Admin enrolled course types only. The user remains enrolled in auto enrolled courses and there is no effect in that case – the learner progress also remains intact.

The learner will be de-assigned from the course in the following scenarios:

## User Profile updated

In scenarios where the learner’s profile is updated either by the learner himself or by the administrator (via UI or csv), the smart groups associated with that profile will be de-assigned and the new groups (if applicable) that are associated with the updated profile will be assigned to the user. This scenario will also be applicable to bulk user profile updates.

## Group Deletion

If the administrator deletes a specific group from the learning instance, the learners association with courses belonging to that group will be lost.

* Learners who are tagged to a course only via that group will no longer have access to that course.

* Learners who are tagged to a course via multiple groups will still be able to view the course content whilst any of those groups still exist.

## Admin removes user(s) from a group

If an administrator removes a learner from a group, all links between the learner and the course will be lost and the user will be de-assigned from those courses unless a link still exists with another group.

## Admin removes course(s) from a group

If an administrator removes a course from a group, all links between the learners in the group and the course will be lost and the user will be de-assigned from those courses unless a link still exists with another group.

## Admin removes learning path(s) from a group

If an administrator removes a learning path from a group, all links between the learner and courses in that learning path will be lost and the user will be de-assigned from those courses unless a link still exists with another group.

## Admin removes course(s) from a learning path

If an administrator removes a course from a learning path, all links between the learner and the course through that learning path will be lost and the user will be de-assigned from those courses unless a link still exists via another learning path.

> [!WARNING]  
> All translated courses and sub-courses will also be de-assigned when a the parent course is de-assigned.

Please reach out to us [**via HelpDesk**](https://aka.ms/cthelpdesk) if you have any further queries.