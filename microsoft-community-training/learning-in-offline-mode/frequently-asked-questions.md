---
title: FAQ - Offline Learning with Community Training
original-url: https://docs.microsoftcommunitytraining.com/docs/learning-in-offline-mode
author: cbms03
ms.author:  cbrahmandam
description: This article lists FAQs related to accessing training content in offline mode
ms.prod: learning-azure
---

# Frequently asked questions - Offline Learning


### What is the list of content formats supported offline?

Offline, CT supports pdf, ePUB, html, 3GP, ogg, mov, m4v, mp4, and mp3.

### How to sync content offline

The admin needs to select the `OfflineSync` flag while creating/editing the course or syncing the course to offline devices.

* While creating a course, the admin will have the option to select the **Offline sync** checkbox. If the admin selects that checkbox, then all lessons in that course will be synced to an offline device.

    :::image type="content" source="../media/offline-sync.png" alt-text="Select_offline_sync":::

>[!Note]  
>
>Currently, Community Training supports only course-level syncing.

### How long will it take to sync content to offline?

The time to sync the content offline depends on several factors like course size, total number of courses, internet connectivity, and speed.

### Is there a limit to the file size that can be uploaded to the offline instance?

It is not recommended to upload more than 8 GB of content at a single time.

### Is there a minimum connection speed to connect the box for data sync?

No, but the content sync time will depend on the connection speed.

### As an admin how will I be able to keep track of user progress analytics?

We are working on analytics, this change will be part of our future releases.

### If there is a limited internet connection, how is the user progress updated?

As long as the device is connected to the internet, content sync will continue to happen.

* Without internet connectivity, the admin can download the user progress from the admin view on the edge device and upload it to the corresponding online instance.

>[!Note]  
>User progress sync will happen only once a day (at 12 AM system time).

### Adding content in a different language locally to support users using a native language

Currently, the online [parent-child course](../settings/customize-languages-for-the-learners-on-the-platform.md#customize-languages-on-the-platform) relationship for languages is not supported through content sync. However, the following languages are supported on an edge device (English, French, Dutch, Spanish).

### Community Training offline had a fault and reports an “error 502” what should the user do?

“error 502” means the ctwebsite module is restarting.

* Generally, this resolves automatically.

* Wait for about 5 minutes and try accessing the page again.

Please reach out to us [**via HelpDesk**](https://aka.ms/cthelpdesk) if you have any further queries.