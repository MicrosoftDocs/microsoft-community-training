---
title: What's new in December 2022
author: v-gaupathak
ms.author: v-gaupathak
description: This document details the new features and capabilities launched on the Microsoft Community Training platform in December 2022. 
ms.prod: learning-azure
---

# What’s new in December 2022

We are excited to share the new product update of Microsoft Community Training with you! These features in this release are designed to enhance the management and delivery of online learning modules in a seamless manner to your community.

## Support for Course level downloading for PWA application

* MCT now supports course level download for [offline consumption via PWA](../../learner-experience/pwa-app.md#step-6-download-content-and-continue-learning-offline). Currently Video, Audio, PDF, EPUB based lessons and Non-Graded Assessments are supported for offline consumption.
    :::image type="content" source="../../media/pwa_Ss.png" alt-text="offline_pwa":::

    >[!Note]
    > Only Non-graded assessments can be taken and submitted offline. Graded assessments can be submitted only when connected to internet.

## Profile Field Registration Status

For [registered users](../../learner-experience/web-app.md#step-2-create-your-profile), the status of learner would remain ‘Registered’ even when admin Creates/Updates/Deletes a mandatory Custom Profile Field.

## Certificate Regeneration on Admin action  

* Certificate would be triggered for regeneration when admin updates User’s name from ‘All Users’ section in administrator view.  
* Course certificate would be regenerated for:
  * For single graded assessment, the best score of all attempts.  
  * For multiple graded assessments, for best Average or Maximum score in all attempts  

## Other enhancements and Bug Fixes  

* Enhancements to PWA based offline learning, added course level redirection in ‘My downloads’ section.  
* Enable updating First name and Last name of users via API api/v1/users
