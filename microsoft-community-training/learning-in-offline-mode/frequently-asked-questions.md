---
title: FAQ - Offline Learning with Microsoft Community Training
original-url: https://docs.microsoftcommunitytraining.com/docs/learning-in-offline-mode
author: v-nmadireddi
ms.author:  v-nmadireddi
description: This article lists FAQ's related to access training content in offline mode
ms.prod: learning-azure
---

# Frequently asked questions - Offline Learning

## 

### What is the list of content format supported on offline?

In offline, MCT supports pdf, ePUB, html, 3GP, ogg, mov, m4v, mp4, mp3

### How to sync content in offline?

Admin need to select the `OfflineSync` flag while creating/editing the course for syncing the course to offline devices.

* While creating any course, admin will have an option to select offline sync checkbox. If admin selects that checkbox, then all lessons in that course will be synced to an offline device.

>[!Note]
>
>Currently, MCT supports only course level syncing.

### How long will it take to sync content to offline?

The time to sync the content offline depends on several factors like course size, total number of courses, internet connectivity and speed.

### Is there a limit to the file size that can be uploaded to the offline instance?

It is recommended not to upload more than 8gb of content at a single time.

### Is there a minimum connection speed to connect the box to for data sync?

No, but the content sync time will depend on the connection speed.

### Can the edge device be connected only with an ethernet cable?

No 

### Can admin update the box via a mobile phone connection?

No

### As an admin how will I be able to keep track of user progress analytics?

We are working on analytics, the change would be part of our future releases.

### If there is a limited internet connection, how is the user progress updated?

As long as the device is connected to the internet, content sync will continue to happen.
* Without internet connectivity, the admin can download the user progress from admin view on edge device and upload the same to the corresponding online instance.

>[!Note]
>User progress sync will happen only once a day (at 12 AM system time).

### How to add content in a different language locally to support users using a native  language?

Currently the online [parent-child course ](../settings/customize-languages-for-the-learners-on-the-platform.md#customize-languages-on-the-platform) relationship for languages is not supported through content sync. However, the following languages are supported on an edge device:- {English, French, Dutch, Spanish}
