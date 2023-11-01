---
title: What's new in May 2022
author: v-sambati
ms.author: v-sambati
description: This document details the new features and capabilities launched on Community Training in May 2022. 
ms.prod: learning-azure
---

# What’s new in May 2022

We are excited to share the new product update of Community Training with you. The features in this release are designed to enhance the management and delivery of online learning modules in a seamless manner to your community.

## SCORM content will now be supported on the MCT platform

We are excited to announce that with this release we are offering support for [uploading SCORM packages](../../content-management/create-content/create-course-category/upload-content-to-a-course.md#option-1-manually-add-content-for-each-lesson-in-a-course) as lessons in MCT.

SCORM (Sharable Content Object Reference Model), is a set of technical standards for eLearning software products. We currently support for SCORM 1.2 version. [Learn more on SCORM](https://scorm.com/). The administrators will now be using the improvised user interface for adding the SCORM content, regular files, and the external links.

:::image type="content" source="../../media/Upload SCORM.png" alt-text="upload_scorm_img":::

## Assessment will now support some more question formats

With this new release, assessments in MCT platform will now support [Fill Blank](../../content-management/create-content/create-course-category/add-assessments-to-a-course.md#fill-in-the-blank-question), [True/False](../../content-management/create-content/create-course-category/add-assessments-to-a-course.md#truefalse-question) as well as [multi-correct question](../../content-management/create-content/create-course-category/add-assessments-to-a-course.md#multi-choice---multi-correct-question) formats in addition to Single correct MCQs.

:::image type="content" source="../../media/Assessment - question type.PNG" alt-text="question type":::

## Download content in the PWA (Mobile) app for offline consumption

Starting May 2022, the [**PWA**](../../infrastructure-management/install-your-platform-instance/create-publish-mobile-app.md#what-are-progressive-web-applications) based application will let users [download content for offline consumption](../../learner-experience/pwa-app.md#step-6-download-content-and-continue-learning-offline). This will thereby enable learners to consume content even in low/no connectivity scenarios.

## Search option in Content Marketplace

Administrators can now search through [content available in Marketplace](../../content-management/create-content/create-course-category/create-a-new-course.md#option-2---add-course-via-content-marketplace).

:::image type="content" source="../../media/Search Content Marketplace.png" alt-text="searchcontentmarketplaceimage":::

## Supporting Global Content that can be accessed across the organization

MCT now supports content that can be accessed globally by all organizations within that instance. This content (aka [Global Content](../../content-management/content-management-overview.md#enabling-global-content-across-organizations)) needs to be created in a "Common" organization in order to be accessible.

## Enhancements to MS Teams-based instances with multiple tenants

1. **Content Management:** [Global content](../../content-management/content-management-overview.md#enabling-global-content-across-organizations) can be made accessible to users across Organizations and multiple tenants for Teams based deployments (tenants are mapped to Organizations in MCT)

2. **User Management:** For Teams deployment with multiple tenants, Global Admin would be able to view users across tenants while the Organization (Tenant) Administrators would be able to view users belonging to their tenant.

## Increase in upload size limit of files

MCT now has increased the upload size limit to 100MB for PPT, PPTX, DOCX files.

## Current Organization Admin can add other admin to the Organization

MCT now allows an organization administrator to [add one or more administrators to their respective Organizations](../../user-management/add-users/add-an-administrator-to-the-portal.md#adding-one-or-more-admins-to-an-organization-by-organization-admin). Also, the Organization Administrators will be able to see the list of admins for their organizations.

## Enabling PDF Download feature in learner view

MCT portal now allows to enable the [download feature for the PDF lessons](../../settings/configurations-on-the-training-platform.md#enable-pdf-download-feature-in-the-lessons) in the learner’s view of the platform.

:::image type="content" source="../../media/Enable PDF Download learner view v2.png" alt-text="pdf download":::

## Optimized Screen Usage in Mobile browser

Learners on the MCT platform can now be able to view lessons in full screen as well as in landscape mode on their Mobile browser. This enables the learners to have more visibility and optimized screen usage while accessing lessons.

:::image type="content" source="../../media/Full screen lesson.png" alt-text="full_screen_lessonimg":::

## Other enhancements/additions

### Choice for admin to Retain/Delete course progress for learner

Administrators will now be able to delete the course progress using the [API call](../../rest-api-management/api-documentation.md#rest-api-documentation) itself. This can be helpful in resetting course progress for learners.

Additionally, the administrators can also control progress retention for a learner in a course on de-assignment. This can be achieved by [app service settings](../../settings/configurations-on-the-training-platform.md#manage-course-progress-retention): `UserProgressRetentionEnabled`.

### Fixed the issue of duplicate entries in Course level analytics

MCT Analytics will now consider only unique users per course for each metric, irrespective of the multiple translations that the user might have completed.

### Change in CSV format for Bulk upload & download for courses with assessment

With the addition of new question types, there is a change in the Bulk upload of courses with assessments i.e change in metadata JSON format

### Lesson contents can’t be replaced once the course is published

Post publishing a course the content of a lesson cannot be changed. All other operations such as creation/deletion of lesson and assessments, will be possible as before.

### Certificates are now being generated asynchronously

Certificate generation flow is now optimized to be in sync with load/traffic on the platform. i.e. learner will see a slight delay in getting the certificate based on the concurrent requests on the platform.

### Consolidated view for certificates in Learner view

Learners will now be able to view and track all their certificates under ‘My Courses’ page ‘My Certificates’ section.

:::image type="content" source="../../media/Separate page for certificates.png" alt-text="separate_page_for_certificates_img":::

### New Languages added to the platform

As part of our constant effort to make the MCT platform more accessible, we added new languages to support localization in MCT. Roma, Bosnian, Romanian, Rusyn, Slovak, Croatian, Bulgarian, Urdu, Punjabi, Gujarati, Marathi, Kannada, Malayalam, and Assamese are in the list of recently added languages. [Enable these languages](../../settings/customize-languages-for-the-learners-on-the-platform.md#steps-to-add-languages-on-the-platform) from the settings tab.

### API changes for loading of Course and Categories

`v1/admin/categoryAndCourses` which usually returns courses and categories will be deprecated with effect in the current release.

`v2/admin/categoryAndCourses` is the new API that will return category and courses for the Content page in the admin view.

`v1/admin/group/{groupId}/categoriesAndCourse` is the new API that will return categories and courses for groups in the Users section.

### Enhancements in how MCT renders HTML content

MCT now provides an enhanced HTML rendering capability on the platform.

### Event-related changes

The `CourseCompletion` event logged in Application Insights is now updated to `Course_completion`.

### DB Changes

Given the new features that were added to the platform, we made a few changes to the Database Schema. Please refer to [this document](../../analytics/custom-reports/database-schema.md#database-schema-overview) for addition information.
