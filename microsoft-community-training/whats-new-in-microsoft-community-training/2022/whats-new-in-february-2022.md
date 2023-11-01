---
title: What's new in February 2022
author: sambati
ms.author: sambati
description: This document details the new features and capabilities launched on Community Training in February 2022. 
ms.prod: learning-azure
---

# What’s new in February 2022

Customer needs and training requirements are evolving over time, The Microsoft Community Training team has yet again come up with some amazing updates that can make your experience on the platform more efficient and productive.

We are excited to share the new product updates for Microsoft Community Training with you!

## Introducing Content Marketplace

Microsoft community training now allows admins to import courses to their training portal via [Content Marketplace](../../content-management/create-content/create-course-category/create-a-new-course.md#option-2---add-course-via-content-marketplace) available at your fingertips Content Marketplace is a catalog of top-notch training material from Microsoft ranging from digital literacy, soft skills, Office 365, Azure cloud to latest in-demand technological tools. Take advantage of this high-quality material to get a head start on your training programs.

:::image type="content" source="../../media/marketplacewatsnew.png" alt-text="marketplacewhatsnew":::

## The Assessment module has been enhanced with new capabilities

In Microsoft Community Platform, **‘exam’** as been rephrased as **‘graded assessment’** and **‘practice assessment’** as **‘non-graded assessment’**

:::image type="content" source="../../media/assessment-newold.png" alt-text="newoldassesmentchange":::

Now, it is possible to have multiple graded assessments as a part of a single course at a desired location.

Changes in [custom certificate text](../../settings/customize-the-certificate-template.md#standard-placeholders), certificate template text will now have **[Average Exam Score]** by default. Users also choose to have **[Maximum Exam Score]**

Now administrators can add multiple correct answers to a question. It is also possible to [add answer explanations](../../content-management/create-content/create-course-category/add-assessments-to-a-course.md#add-non-graded-and-graded-assessments-to-a-course).

:::image type="content" source="../../media/assesmentsfeb22.png" alt-text="feb22assessmentchange":::

## Profile field enhancements

[Profile fields](../../settings/add-additional-profile-fields-for-user-information.md#steps-to-create-additional-profile-fields) can now be added with validations to restrict learners from providing irrelevant details. Also, the profile fields will now be able to support the bulk upload of the values without any limits to cater to requirements like city selection.

:::image type="content" source="../../media/watsnewpf.png" alt-text="feb22watsnewprofilefield":::

Learners will now have the ability to search for profile field values

:::image type="content" source="../../media/searchinpf.png" alt-text="searchinprofilefield":::

## Multi-Tenant support for Azure Active Directory-based authentication in Teams integration

A CT instance can be used by users from multiple Azure Active Directories through Microsoft Teams Application.

Community Training now supports enabling SSO login for [multiple tenants in Microsoft Teams](../../infrastructure-management/install-your-platform-instance/create-teams-app-for-your-training-portal.md#multi-tenant-support-for-azure-active-directory-based-authentication-in-teams).

## Search functionality for Groups and Learning Path

In CT, an admin of a learning path or group can now use the search bar to search and find a respective group or learning path. This feature eases out searching where an admin has a large number of learning paths or groups to manage.

:::image type="content" source="../../media/groupsearch.png" alt-text="searchingroups":::

## Changes in DB/API

* Please refer to the DB changes made for this release [DB Schema](https://github.com/MicrosoftDocs/microsoft-community-training/files/7889844/CT_DB_Schema_Jan2022.pdf)
* If you are planning to reuse (download and upload) course content across instances, please ensure that both instances are on the latest release as we've made changes to the meta-data schema in this release.

* If you are planning to reuse (download and upload) questions across instances, due to file format changes, you now have to update the [csv template](https://github.com/MicrosoftDocs/microsoft-community-training/files/8015610/Sample.CSV.-.Quiz.csv).
