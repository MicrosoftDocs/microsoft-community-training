---
title: Configurations on the Training Platform
original-url: https://docs.microsoftcommunitytraining.com/docs/configurations-on-the-training-platform
author: nikotha
ms.author: nikotha
description: This document details the customizations supported on the Microsoft Community Training platform for administrator and learner capabilities.
ms.prod: learning-azure
---

# Configurations on the Training Platform

You can customize the learner and administrator experience on the Community Training platform to fit the needs of your specific training program.

In this article, you will learn about the different configuration options available on the Community Training platform and how to enable or disable the configurations.

## Steps to set the Configurations on the Platform

1. Login to [Azure portal](https://www.portal.azure.com/).

1. Select **App Services** from the left-menu.

    ![Select App Service.png](../media/Select%20App%20Service%281%29.png)

1. Select the application service belonging to your Community Training instance.

1. Select **Configuration** under *Settings* from the left-menu.

    ![Select Configurations.png](../media/Select%20Configurations%281%29.png)

1. Go to **Applications Settings**.

    ![Select Application Settings.png](../media/Select%20Application%20Settings.png)

1. Select the setting you want to edit, for example: If you want to disable learner comments, use the setting **Features:CommentDisabled** and update it with value **True**.

    ![Comment Disabled](../media/CommentDisabled.png)

    ![Comment Disabled Editing](../media/CommentDisabledEditing.png)

1. Select **Save**.

    ![Save Application Settings.png](../media/Save%20Application%20Settings%281%29.png)

## Certificates Received Metric

```Certificates Received Metric
Features:CertificatesEarnedMetricsEnabled
```

The portal allows you to customize the **Certificate received** metric of the learner dashboard available in the learner's view. You can enable/disable the metric that shows the total certificates received by the learner.
![Total certificates received by the learner](../media/image%28418%29.png)

By default, this metric is kept enabled with value as **True**.

## Courses Completed Today Metric

```Courses Completed Today Metric
Features:CourseCompletionsTodayMetricsEnabled
```

The portal allows you to customize the **Course completed today** metric of the learner dashboard available in the learner's view. You can enable/disable the metric that shows the total number of courses the learner completed on that day (as per UTC time zone).
![Course completed today](../media/image%28419%29.png)

By default, this metric is kept disabled with value as **False**.

## Content Priority for Learners

```Content Priority for Learners
Features:EnablePriorityForCourse
```

The portal allows you to specify priorities to the courses while assigning them to the learners. You can enable/disable this feature on the portal depending on your specific requirements.

By default, this feature is enabled with value as **True** for administrator to assign priorities.

## Highest Priority Content for Learners

```Show only Required priority content to learners
Features:ShowOnlyRequiredCourses
```

The portal supports four levels of priorities to be assigned to courses: **Default**, **Optional**, **Recommended** and **Required**. You can configure the portal to show only those courses to learners which are assigned the "**Required**" priority.

By default, this feature is disabled with value as **False** and therefore all courses are visible to learners.

## Learner Notifications

```Learner Notifications
Features:NotificationDisabled
```

In the learner's view, the portal provides a [Notification icon](../learner-experience/web-app.md#step-8-view-notifications) which notifies the learner of any new course being assigned to the learner. You have the flexibility to disable this features depending upon the scenario.

By default, this feature is **Disabled** with value as **False** so that learners gets notifications in real-time.

## Learner Comments

```Learner Comments
Features:CommentDisabled
```

The Platform comes with a functionality where [learners can comment](../learner-experience/mobile.md) on different lessons and initiate a discussion.
By default, this feature remains enabled but, you have the flexibility to disable this function to avoid peer-to-peer interaction over platform. Once disabled, learners will not be allowed to post comment.

## Learner Action Events

```Learner Action Events
Features:Events
```

The Community Training portal utilizes **Microsoft Azure Service Bus** to integrate with other supporting Azure services (like Azure Storage, Azure Media Service) for enhancing user experience. All events that trigger the service bus can be tracked and used for specific actions. You can enable this feature to get updates on specific triggers.

By default, this feature remains in **disabled** state.

## Enabling Organizations on the Platform

```Enable Organizations on the Platform
Features:IsMultiOrgDeployment
```

The Community Training portal allows you to [manage the portal with multiple organization](../user-management/organization-management.md). An organization comprises of a group of learners and administrators on your training platform who have a particular purpose or belong to a specific criteria. You can enable/disable this feature depending upon your requirements.

By default, this feature remains disabled with value **False**, therefore not allowing administrators to create multiple organizations.

## Restricting ability to edit Learner profile for non-Global admin

```Disable profile edit for non-global admin
Features:disableProfileEditForNonSuperAdmin
```

Community Training allows you to restrict editing learner profiles to Global Administrators, set this value to **True** to activate this feature.

## Hide Navigation bar for Learners

```Hide Navigation bar for Learners
Features:HideTopNavBarForLearner
```

You can embed the Community Training platform in another application with independent authentication and hide the top navigation bar on the learner's view. You can enable/disable this feature depending upon the specific requirements.

By default, this feature is disabled with value as **False**.

![False value](../media/image%28432%29.png)

## Allow platform embedding

```Allow platform embedding
Features:SuppressXFrameOptionsHeader
```

You can embed the platform into iFrame or webview so that it can be integrated with other applications.

By default, this feature is disabled with the value **False** so that embedding is not supported, set to **True** if the platform is to be embedded into different application.

## Allow external video embedding into MCT

```Allow external video embedding
AllowEmbedDomains
```

The portal can play external website's content as an inline lesson from different domains.

By default, it remains empty. You can add domain names into the **Value** field to allow embedding (For Example: dailymotion.com).

![Allow embedding](../media/image%28433%29.png)

## Hide landing page courses

```Hide landing page courses  
Features:HideCoursesInLandingPage
```

The landing page for learners shows the names and description of the self-enroll and auto-enroll courses before logging in on the platform. This can be avoided by setting the configuration to **True** to allowing courses to be viewed only after log in.

By default, this feature is disabled with value as **False** allowing learners to view the self-enroll and auto-enroll courses before they log in to the training portal.

![Hide landing page](../media/image%28465%29.png)

## Hide Course Library

```Hide Course Library  
Features:HideCourseLibrary
```

The portal allows you to hide the Course Library from the learner’s view of the platform. You can enable/ disable this feature on the portal depending on your specific requirements.

By default, this feature is kept disabled with value as **False** for permitting the learner to view the library.

## Disable creation of Auto-Enroll courses

```Features:AutoEnrollCourseEnabled
Features:AutoEnrollCourseEnabled
```

The Community Training portal allows you to disable marking a course as Auto-enroll whilst creating a [**new course**](/azure/industry/training-services/microsoft-community-training/content-management/create-content/create-course-category/create-a-new-course). By default, this feature is enabled and to disable this you need to set the value as **False**

:::image type="content" source="../media/featuredisableautoenrollcourse.png" alt-text="autoenrollcourse":::

## Enable PDF Download feature in the lessons

The Community Training portal allows you to enable the Download feature for the PDF lessons in the learner’s view of the platform.

```Enable
EnablePDFLessonDownload
```

By default this feature is not enabled, you need to add the above configuration and enable this feature by setting value to **True**. To disable this feature, set the value should be set to **False**.

:::image type="content" source="../media/Enable PDF Download.png" alt-text="pdfdownload":::

## Allow learners to skip videos

```Allow learners to skip videos  
Features:EnableSeekingInVideos
```

The portal allows learners to skip through any video lesson while viewing it on the platform. This capability can be enabled/disabled on the portal depending on your specific requirements.

By default, this feature is kept disabled with value as **False**, ensuring that the learners DO NOT skip video lessons when they are completing the lesson for the first time. The learners can skip through in subsequent views even when this setting is set as False.

## Link External Website on Learner Homepage

The Community Training portal allows you to provide a link to an external website on the learner’s homepage to allow quick access to a preferred website.  Refer to [Steps to configure external website link and name](link-to-external-website-on-learner-Homepage.md#steps-to-configure-external-website-link-and-name) for further details .

## Steps to set Default Country for Phone based login

If your instance has phone based authentication and you want to set a default country flag in the login page, you will need to provide the [**Alpha-2 ISO code**](https://en.wikipedia.org/wiki/List_of_ISO_3166_country_codes) for the country you want as the value in the **DefaultCountry** application setting.

```Default Flag
DefaultCountry
```

In **Value** provide the two letter Alpha-2 country code, for example: to set default country as **India**, provide the value **IN**.

:::image type="content" source="../media/Default country.PNG" alt-text="Def_country":::

## Disable MS Teams integration with MCT

```disable MS Teams integration  
deploymentType
```

When setting up the Community Training instance, if you opt for MS Teams integration by selecting "Yes" under **Enable Microsoft Teams?** and would now like to proceed without MS Teams integration, you can disable this deeper teams integration using this Application Configuration.

To disable this MS Teams integration, update this app setting with **Value = '0'**

> [!WARNING]
>
>- MS Teams integration comes with MCT instances with authentication type as "Work or School Account".
>- Once you disable the MS Teams integration, you would be able to add users to the platform via MCT Admin UI.

:::image type="content" source="../media/Disable MS Teams integration.PNG" alt-text="Disable teams integration":::

## Enable PWA Mobile App

```Enable PWA Mobile App
Features:EnableWebAppInstall
```

The platform supports progressive web applications (PWA). To set up the mobile app for your training portal, enable this feature by setting the value to **True**.

By default, this feature is disabled with the value **False**.

## Manage course progress retention

```Enable retention of course progress
UserProgressRetentionEnabled
```

You can enable this application setting with the value **True** to retain a user's progress for the content even if content is de-assigned to that user. That means, if a learner is removed from a course and then re-enrolled to the same course, the earlier progress would be retained.

By default, the application setting is marked as **False**, i.e. on de-assignment, all the progress of that learner will be deleted from that course.

## Mask User details for Admin

The Community Training platform supports masking of user data, this will help in creating additional security to restrict admin from glancing sensitive user information.

You can enable masking of your user data by setting Features:Masking:IsProfileFieldsMaskEnabled to **True**.

```Enable Masking
Features:Masking:IsProfileFieldsMaskEnabled
```

Once the masking feature is enabled, you can choose which user information will be masked from the setting Features:Masking:MaskedProfileFields.

```Fields to be masked
Features:Masking:MaskedProfileFields
```

:::image type="content" source="../media/doc_3_1.png" alt-text="maskthefields":::

- Use `First Name` as a field in app settings to mask first name of the user/admin.
- Use `Contact` to mask EmailId/Phone number/Contact of the user/admin.
- Use `Last Name` to mask last name of the user/admin.
- To mask custom Profile Fields, use actual name of the field Eg: `State`, `SSN`.

## Other Flag configurations

| Flag Name | Description |
| --- | --- |
| `UserCacheExpiryInHour` | The user cache expiry time in hours. |
| `Features:AdminNotificationDisabled` | Whether admin notification is enabled or not. |
| `MaxRetryCountForWebJobs` | Number of retries for web job failure. This is for internal purposes and should not be tweaked by customers unless advised.|
