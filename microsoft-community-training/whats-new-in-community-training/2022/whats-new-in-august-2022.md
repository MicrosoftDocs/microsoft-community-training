---
title: What's new in August 2022
author: v-sambati
ms.author: v-sambati
description: This document details the new features and capabilities launched on the Community Training platform in August 2022. 
ms.prod: learning-azure
---

# What’s new in August 2022

We are excited to share the new product update of Community Training with you! These features in this release are designed to enhance the management and delivery of online learning modules in a seamless manner to your community.

## Associated profile fields

As an admin you can now create [dependencies](../../settings/add-additional-profile-fields-for-user-information.md#steps-to-create-associated-profile-fields) among profile fields in CT. Field dependency means, controlling a fields value based on the other field. For example, there are two fields called Country & State. I want to display only states related specific selected country when I select country.

:::image type="content" source="../../media/depchooseoptions.png" alt-text="associatedupload":::

## Organization Branding

Community training now lets you [customize the look](../../user-management/organization-management.md#customize-look-and-feel-of-your-organizations) and feel of your [Organization(s)](../../user-management/organization-management.md#organization-management). When a learner from specific organization logins to CT their experience would be customized to settings of their respective organization.

>[!NOTE]
>
> * If your instance has multiple organizations, there would be a one time migration happening in backend where your current settings (Global) would be stored in `GlobalConfig` table and your setting specific to organizations would be migrated to `Settings` column in `Organization` table. 

:::image type="content" source="../../media/Orgbrandsettings.png" alt-text="brandsettings":::

## Enhancements to Organization Management

If you have [Organization(s)](../../user-management/organization-management.md#organization-management) enabled for your instance, you can now [add users to specific organization](../../user-management/organization-management.md#assign-learners-to-organizations) via Admin view. 

We've enforced [validations at Organization level](../../user-management/organization-management.md#impact-of-organizations-in-various-admin-flows) for various flows with in CT for a seamless management of your Organizations.

### Behavioral changes due to enhancements in Organization Management

* learning path Admin can add any course to the learning path, even though (s)he isn't a course/category admin. Earlier they needed to be course/category admin to be able to add a course/category to a learning path.
* [Enrolling Learner to a course](../../content-management/manage-content/manage-course-category/manage-users-for-a-course.md#steps-to-enroll-users-directly-to-a-course) requires both Learner and Course to belong to same Organization.
* [Enrolling Learners to Learning Path](../../content-management/manage-content/manage-learning-path/manage-user-for-a-learning-path.md#steps-to-add-users-on-the-learning-path) requires both Learner and Course to belong to same Organization.
* [Add Learner via All users](../../user-management/add-users/add-users-to-the-portal-1.md#option-1--add-learner-via-all-users) requires an organization to be selected.
* [Adding users to a Group](../../user-management/organize-users/add-a-single-user-to-the-group.md#add-a-single-user-to-the-group) requires both User and Group to belong to same Organization.
* [Assign content to users in the group](../../user-management/manage-users/assign-content-to-group-users.md#assign-content-to-users-in-the-group): Content (Courses and Learning Path) available for assignment to group users requires to have Group and content in same organization.
* [Adding course to a Learning path](../../content-management/create-content/create-learning-path/add-course-to-a-learning-path.md#add-course-to-a-learning-path) requires that both Course and Learning Path belong to same Organization.
* Admin can update organization of a Category while [changing Course details](../../content-management/manage-content/manage-course-category/change-course-details.md#change-course-details).

## Masking of User information

CT now allow customers to [mask user information](../../settings/configurations-on-the-training-platform.md#mask-user-details-for-admin) with in instance. This is to prevent admin from glancing sensitive user information. The data to be masked can be controlled by an [app setting](../../settings/configurations-on-the-training-platform.md#mask-user-details-for-admin).

:::image type="content" source="../../media/maskingfields.png" alt-text="fieldsmasking":::

## Localization for Learning Path and Category

In an effort to make product more adaptable, CT now supports localization of your [learning path](../../content-management/manage-content/manage-learning-path/change-learning-path-details.md#change-learning-path-details) and [category](../../content-management/create-content/create-course-category/create-a-category.md#create-a-category) fields.

## Other enhancements/additions

### Support for Course progress import and Course content export with external LMS

Community Training platform lets [global administrators](../../user-management/add-users/add-an-administrator-to-the-portal.md#add-a-global-administrator-to-the-platform) [import user progress](../../frequently-asked-questions/custom-integration.md#steps-to-how-to-integrate-apis-to-import-progress) from other learning portals which will enable seamless experience for learner.

Customers can also [export course content](../../frequently-asked-questions/custom-integration.md#export-course-content-to-other-lms) from CT to other learning portals.

### Enhanced PWA responsiveness

Enhanced responsive capabilities for [PWA](../../infrastructure-management/install-your-platform-instance/create-publish-mobile-app.md#option-1-creating-a-progressive-web-application-pwa-for-android) which will enable your mobile application to render seamlessly across mobile and tablet screens.

### Added redirection functionality for Offline downloaded content in PWA

Content downloaded for offline consumption in your PWA will now have a redirection to course player page. This will let users navigate from downloads section (in PWA) to respective course content seamlessly.

### Certificates are now being generated asynchronously

Certificate generation flow is now optimized to be in sync with load/traffic on the platform. i.e learner will see a slight delay in getting the certificate based on the concurrent requests on the platform.

### Fixed encoding issues for CSV file uploads

With this release we fixed encoding issues with csv files having accent characters.

### Fixed issues in Assessments

Fixed issues with bulk question upload via csv flow for Assessments.

### Course reboarding scenario will now populate correct date in LCA table

Fixed the issue in `LearnerCourseActivity` table to update the correct date when a course is re-assigned to a user.

### Auto-enroll courses will not show the correct user registration count

Adjusted the count logic to not count system admin in case of auto-enroll courses.

### Enabling lesson edit

Post publishing a lesson you can now replace content of that lesson.

### Fixed multiple issue with SCORM and HTML lessons rendering in CT

Fixed content access issues for HTML and SCORM lessons.

### DB changes

In view of the new features that got added into the platform, we made few changes to our Database Schema. Please refer to [this document](../../analytics/custom-reports/database-schema.md#database-schema-overview) for addition information.
