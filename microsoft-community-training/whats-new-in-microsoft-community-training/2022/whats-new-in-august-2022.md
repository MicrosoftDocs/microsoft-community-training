---
title: What's new in August 2022
author: v-sambati
ms.author: v-sambati
description: This document details the new features and capabilities launched on Community Training in August 2022. 
ms.prod: learning-azure
---

# What’s new in August 2022

We are excited to share the new Community Training product update with you. The features in this release are designed to enhance the management and delivery of online learning modules seamlessly to your community.

## Associated profile fields

As an admin you can now create [dependencies](../../settings/add-additional-profile-fields-for-user-information.md#steps-to-create-associated-profile-fields) among profile fields in CT. Field dependency means, controlling a field value based on another field. For example, there are two fields called Country and State. Suppose you want to display only states related specific selected country when you select Country.

:::image type="content" source="../../media/depchooseoptions.png" alt-text="associatedupload":::

## Organization Branding

Community Training now lets you [customize the look](../../user-management/organization-management.md#customize-look-and-feel-of-your-organizations) and feel of your [Organization(s)](../../user-management/organization-management.md#organization-management). When a learner from a specific organization signs in to CT their experience would be customized to the settings of their respective organization.

>[!NOTE]
>
> * If your instance has multiple organizations, there would be a one-time migration happening in the backend where your current settings (Global) would be stored in the `GlobalConfig` table and your setting specific to organizations would be migrated to the `Settings` column in the `Organization` table. 

:::image type="content" source="../../media/Orgbrandsettings.png" alt-text="brandsettings":::

## Enhancements to Organization Management

If you have [Organization(s)](../../user-management/organization-management.md#organization-management) enabled for your instance, you can now [add users to specific organization](../../user-management/organization-management.md#assign-learners-to-organizations) via Admin view. 

We've enforced [validations at the Organization level](../../user-management/organization-management.md#impact-of-organizations-in-various-admin-flows) for various flows within CT for seamless management of your Organizations.

### Behavioral changes due to enhancements in Organization Management

* learning path Admin can add any course to the learning path, even though (s)he isn't a course/category admin. Earlier they needed to be course/category admin to be able to add a course/category to a learning path.
* [Enrolling Learner to a course](../../content-management/manage-content/manage-course-category/manage-users-for-a-course.md#steps-to-enroll-users-directly-to-a-course) requires both Learner and Course to belong to same Organization.
* [Enrolling Learners to Learning Path](../../content-management/manage-content/manage-learning-path/manage-user-for-a-learning-path.md#steps-to-add-users-on-the-learning-path) requires both Learner and Course to belong to same Organization.
* [Add Learner via All users](../../user-management/add-users/add-users-to-the-portal-1.md#option-1--add-learner-via-all-users) requires an organization to be selected.
* [Adding users to a Group](../../user-management/organize-users/add-a-single-user-to-the-group.md#add-a-single-user-to-the-group) requires both User and Group to belong to the same Organization.
* [Assign content to users in the group](../../user-management/manage-users/assign-content-to-group-users.md#assign-content-to-users-in-the-group): Content (Courses and Learning Path) available for assignment to group users requires to have Group and content in the same organization.
* [Adding course to a Learning path](../../content-management/create-content/create-learning-path/add-course-to-a-learning-path.md#add-course-to-a-learning-path) requires that both Course and Learning Path belong to same Organization.
* Admin can update the organization of a Category while [changing Course details](../../content-management/manage-content/manage-course-category/change-course-details.md#change-course-details).

## Masking of User information

CT now allows customers to [mask user information](../../settings/configurations-on-the-training-platform.md#mask-user-details-for-admin) within an instance. This is to prevent the admin from viewing sensitive user information. The data to be masked can be controlled by an [app setting](../../settings/configurations-on-the-training-platform.md#mask-user-details-for-admin).

:::image type="content" source="../../media/maskingfields.png" alt-text="fieldsmasking":::

## Localization for Learning Path and Category

For increased adaptability, CT now supports localization of your [learning path](../../content-management/manage-content/manage-learning-path/change-learning-path-details.md#change-learning-path-details) and [category](../../content-management/create-content/create-course-category/create-a-category.md#create-a-category) fields.

## Other enhancements/additions

### Support for Course progress import and Course content export with external LMS

Community Training lets [global administrators](../../user-management/add-users/add-an-administrator-to-the-portal.md#add-a-global-administrator-to-the-platform) [import user progress](../../frequently-asked-questions/custom-integration.md#steps-to-how-to-integrate-apis-to-import-progress) from other learning portals which will enable seamless experience for learners.

Customers can also [export course content](../../frequently-asked-questions/custom-integration.md#export-course-content-to-other-lms) from CT to other learning portals.

### Enhanced PWA responsiveness

Enhanced responsive capabilities for [PWA](../../infrastructure-management/install-your-platform-instance/create-publish-mobile-app.md#option-1-creating-a-progressive-web-application-pwa-for-android) which will enable your mobile application to render seamlessly across mobile and tablet screens.

### Added redirection functionality for Offline downloaded content in PWA

Content downloaded for offline consumption in your PWA will now have a redirection to the course player page. This will let users navigate from the downloads section (in PWA) to the respective course content seamlessly.

### Certificates are now being generated asynchronously

Certificate generation flow is now optimized to be in sync with load/traffic on the platform. i.e. learners will see a slight delay in getting the certificate based on the concurrent requests on the platform.

### Fixed encoding issues for CSV file uploads

With this release, we fixed encoding issues with CSV files having accent characters.

### Fixed issues in Assessments

Fixed issues with bulk question upload via CSV flow for Assessments.

### Course reboarding scenario will now populate the correct date in the LCA table

Fixed the issue in `LearnerCourseActivity` table to update the correct date when a course is re-assigned to a user.

### Auto-enroll courses will not show the correct user registration count

Adjusted the counting logic to not count system admin in case of auto-enroll courses.

### Enabling lesson edit

Post publishing a lesson you can now replace the content of that lesson.

### Fixed multiple issues with SCORM and HTML lessons rendering in CT

Fixed content access issues for HTML and SCORM lessons.

### DB changes

Given the new features that were added to the platform, we made a few changes to our Database Schema. Please refer to [this document](../../analytics/custom-reports/database-schema.md#database-schema-overview) for addition information.
