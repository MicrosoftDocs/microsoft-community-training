---
title: What's new in May 2022
author: v-samarth
ms.author: v-samarth
description: This document details the new features and capabilities launched on the Microsoft Community Training platform in May 2022. 
ms.prod: azure
---

# What’s new in May 2022

We are excited to share the new product update of Microsoft Community Training with you! These features in this release are designed to enhance the management and delivery of online learning modules in a seamless manner to your community.

## Feature enhancement/additions

### Assessment will now support some more question formats

With this new release, assessments in MCT platform will now support [Fill Blank](../../content-management/create-content/create-course-category/add-assessments-to-a-course.md/#fill-in-the-blank-question), [True/False](../../content-management/create-content/create-course-category/add-assessments-to-a-course.md/#truefalse-question) as well as [multi-correct question](../../content-management/create-content/create-course-category/add-assessments-to-a-course.md/#multi-choice---multi-correct-question) formats in addition to Single correct MCQs.

:::image type="content" source="../../media/Assessment - question type.PNG" alt-text="question type":::

### SCORM content will now be supported on the platform

We are excited to announce that with this release we are starting to support for [uploading SCORM packages](../../content-management/create-content/create-course-category/upload-content-to-a-course.md/#option-1-manually-add-content-for-each-lesson-in-a-course) as lessons in MCT.

SCORM (Sharable Content Object Reference Model), is a set of technical standards for eLearning software products. We currently support for SCORM 1.2 version. [Learn more on SCORM](https://scorm.com/). The administrators will now be using the improvised user interface for adding the SCORM content, regular files and the external links.

:::image type="content" source="../../media/Upload SCORM.png" alt-text="upload scorm":::

### Download option for content in PWA app for Offline consumption

Starting May 2022, the PWA based application will let users [download content for offline consumption](../../learner-experience/pwa-app.md/#step-6-download-content-and-continue-learning-offline). This will there by enable learners to consume content even in low/no connectivity scenarios.

### Search option in Content Marketplace

Administrators can now search through [content available in Marketplace](../../content-management/create-content/create-course-category/create-a-new-course.md/#option-2---add-course-via-content-marketplace).

:::image type="content" source="../../media/Search Content Marketplace.png" alt-text="search content marketplace":::

### Enhancements in multi-tenant enabled instances

1. **Content Management:** Admin can now [assign content to multiple tenants](../../content-management/content-management-overview.md/#enabling-global-content-across-multi-tenant-enabled-instances) i.e. Categories/Learning Paths created in "Common" Organization will be visible to all administrators and be available to assign it to any Group/Learning Path across tenants/organizations.
2. **User Management:** Administrators will now be able to [manage users from various tenants](../../infrastructure-management/install-your-platform-instance/create-teams-app-for-your-training-portal.md/#steps-to-create-organizations-for-each-tenant) on their MCT platform while using MS Teams. Here, only the global admin will be able to manage user across various tenant.

### Increase in upload size limit of MS Office files

MCT now allows upload of increased size limit up to 100MB for PPT, DOCX files.

### Current Organization Admin can add other admin to the Organization

MCT now allows an organization administrator to add one or more other administrators to their respective Organizations. Also, the Organization Administrators will be able to see the list of admins for their organizations.

### Enabling PDF Download feature in learner view

MCT portal now allows to enable the Download feature for the PDF lessons in the learner’s view of the platform.

:::image type="content" source="../../media/Enable PDF Download learner view.png" alt-text="pdf download":::

### Optimized Screen Usage in Mobile browser

Learners on MCT platform can now be able to view lessons in full screen on Mobile browser. This enables the learners to have more visibility and optimized screen usage while accessing lessons.

:::image type="content" source="../../media/Full screen lesson.png" alt-text="full screen lesson":::

### Lesson’s view improvement in mobile browser

Learners on MCT platform will now be able to view lessons in landscape mode also on Mobile browser.

## Other enhancements/additions

### New API – Delete course progress

Administrators will now be able to delete the course progress using the API call itself. This can be helpful to reset course progress for learners.

The content de-assignment can now also delete the progress of the learner based on app service settings: `UserProgressRetentionEnabled`

### Course level analytics downloaded list has duplicate entries for users

MCT Analytics will now consider only unique users per course for each metric, irrespective of the multiple translations which the user might have completed.

### Bulk download for courses with assessment

With the addition of new question types there is a change in Bulk upload of courses with assessments i.e change in metadata JSON format

### Lesson contents can’t be updated

Once the content is added to a lesson and published, the content of the lesson cannot be replaced.

### Certificates are now being generated asynchronously

Certificate generation flow is now optimized to be in sync with load/traffic on the platform. i.e learner will see a slight delay in getting the certificate based on the concurrent requests on the platform.

### Separate page for certificates

Learners will now be able to view and track all their certificates under ‘My Courses’ page ‘My Certificates’ section.

### New Languages added to platform

As part of our constant effort in making MCT platform more accessible we added new languages to support localization in MCT. Roma, Bosnian, Romanian, Rusyn, Slovak, Croatian, Bulgarian, Urdu, Punjabi, Gujarati, Marathi, Kannada, Malayalam, Assamese are in the list of recently added languages.

### Enhancements in how MCT renders HTML content

Currently, MCT uses embed tag to display HTML files. This tag is becoming obsolete & increasingly iframe tag is becoming the commonly used embedding technology. Hence changed the embed tag to iframe to improve HTML rendering capabilities within MCT.

### DB Changes
