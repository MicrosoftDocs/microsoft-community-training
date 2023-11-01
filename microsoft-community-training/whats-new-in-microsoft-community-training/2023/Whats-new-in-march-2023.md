---
title: What's new in March 2023
author: v-nmadireddi
ms.author: v-nmadireddi
description: This document details the new features and capabilities launched on Community Training in March 2023. 
ms.prod: learning-azure
---

# What’s new in March 2023

We are excited to share the new product update of Community Training with you! The features in this release are designed to enhance the management and delivery of online learning modules in a seamless manner to your community.

### Smart group rules can now be edited

In this release, CT provides the option to edit the rules for the [Smart Groups](https://learn.microsoft.com/en-us/azure/industry/training-services/microsoft-community-training/user-management/organize-users/setup-automatic-user-enrollment-for-a-group-1#steps-to-add-rule-for-a-group)(automatic user enrolment). This will help organize the users in real-time with the changes to the smart group rules.

The following actions are available for the admin on the smart group rules:

* User can **add new rules** consisting of multiple Custom Profile Fields i.e., user can add new values to a particular field as well as user can add multiple Custom Profile Fields.

* User can **delete existing rules** i.e., user can remove values of a particular field as well as user can remove the entire profile field.

:::image type="content" source="../../media/Smart_group_edit.png" alt-text="Smart group rules can now be edited":::

### Associate profile fields can now be edited

Dependencies for the associate profile fields are **applicable only to new profile fields**.

### HTML and SCORM files can be part of the Bulk upload

The HTML and SCORM files are now supported as a part of the course bulk upload, which earlier only included PDFs, Video, Audio, and MS Office files.

### Enhancements to user soft deletion process

In this release, we have made improvements to the user deletion flow. Now, on performing a **delete user** action, the admin will see the results immediately i.e., the deleted users will be removed from all admin views and will be auto logged out instantaneously. This is an enhancement from the previous versions where some processing time was involved.

### Database Schema Changes

A few changes are implemented to the DB Schema, to support the latest features on the CT. Please refer to this section for additional information. 

The Table Name **CourseUsers** will be deprecated in an upcoming release. It is being replaced with the Table Name **UserCourseEnrollments**. The table **UserCourseEnrollments** will have the info about the admin-enrolled courses and self-enrolled courses and will contain the columns **CourseId** and **UserID**.
Thus, for the purposes of course analytics, (Eg: Analytics on a tool like the PowerBI), a two-step approach is to be taken to get an exhaustive list of users enrolled in a course.

1. A join of the tables groupUser and CourseGroup will fetch the user IDs associated with the group enrolments for a specified course.
2. A ‘Distinct Union’ of the results from step 1, with the table **UserCourseEnrollments** will give you the final exhaustive list of users enrolled in a particular course.

Please refer to [this document](../../analytics/custom-reports/database-schema.md#database-schema-overview) for addition information
