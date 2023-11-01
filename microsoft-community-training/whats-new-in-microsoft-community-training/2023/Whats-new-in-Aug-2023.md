---
title: What's new in August 2023
author: v-nmadireddi
ms.author: v-nmadireddi
description: This document details the new features and capabilities launched on Community Training in August 2023. 
ms.prod: learning-azure
---

# What’s new in August 2023

We are excited to share the new product update of Community Training with you! The features in this release are designed to enhance the management and delivery of online learning modules seamlessly to your community.

## Features and Enhancements

### Mobile UI Revamp

The browser's mobile user interface has been revamped to provide a seamless experience similar to the mobile app.

### Video Resume Feature

Learners can now continue watching video lessons from where they left off, making it easier to pick up their learning progress.

### Office Files Support in PWA

Users can now play Office files (.doc, .docx, .ppt, .pptx, .xlx, .xlsx) even in offline mode. 

> [!NOTE]
> * To use office files offline, we will be providing files to publish the application in the Google Play store.
> * Users can request support by raising a ticket [**Community Training Helpdesk**](https://go.microsoft.com/fwlink/?linkid=2104630)..

### Notification for Async Jobs

When the "isAsyncDisabled" App Setting is set to "False," administrators will receive notifications in the Admin UI for asynchronous operations they perform.

### Single HTML Files in PWA Offline Mode

Single HTML files can now be viewed in PWA Offline mode, enabling learners to access content without an internet connection.

## API Changes

### Detailed Error Messages in API Responses

All APIs now provide detailed error messages about the failure, simplifying the debugging process.

## Flag Changes

| Flag Name | Description |
| --- | --- |
| `UserCacheExpiryInHour` | The user cache expiry time in hours. |
| `Features:AdminNotificationDisabled` | Whether admin notification is enabled or not. |
| `MaxRetryCountForWebJobs` | Number of retries for web job failure. This is for internal purposes and should not be tweaked by customers unless advised.|


## Bug Fixes

* Super Admins can now add users even when the RestrictedUser flag is enabled.

* Courses can now be bulk-uploaded with their logos.

* Deleting lessons or quizzes concurrently no longer affects course completion.

* The flow for adding and updating subtitles has been fixed.

* Group analytics data is now properly updated after course deletion.

* Invalid values in multi-select profile fields are now correctly displayed and updated after deletion.


## Database Schema Changes

There is an addition of 2 new tables `OfflineSyncTrack` and `PendingMigrations` for internal tracking purposes.


Please refer to [this document](../../analytics/custom-reports/database-schema.md#database-schema-overview) for addition information
