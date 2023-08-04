---
title: Configurations on the Training Platform
original-url: https://docs.microsoftcommunitytraining.com/docs/configurations-on-the-training-platform
author: nikotha
ms.author: nikotha
description: This document details the customizations supported on the Community Training platform for administrator and learner capabilities.
ms.prod: learning-azure
---

# Configurations on the Training Platform

You can customize the learner and administrator experience on the Community Training platform to fit the needs of your specific training program.

In this article, you will learn about the different configuration options available on the Community Training platform and how to enable or disable the configurations.

## Steps to set the Configurations on the Platform

1. Login to [Azure portal](https://www.portal.azure.com/).

2. Go to App Services from the left-menu.

    ![Select App Service.png](../media/Select%20App%20Service%281%29.png)

3. Click on the app service belonging to your Community Training instance.

4. Select Configuration under settings from the left-menu.

    ![Select Configurations.png](../media/Select%20Configurations%281%29.png)

5. Go under Applications Settings tab

    ![Select Application Settings.png](../media/Select%20Application%20Settings.png)

6. Select the setting you want to edit, Example - If you want to disable learner comments, use the setting **Features:CommentDisabled** and update it with value “**true**”

    ![Comment Disabled](../media/CommentDisabled.png)

    ![Comment Disabled Editing](../media/CommentDisabledEditing.png)

7. Click on save.

    ![Save Application Settings.png](../media/Save%20Application%20Settings%281%29.png)

## Certificates Received Metric

```Certificates Received Metric
Features:CertificatesEarnedMetricsEnabled
```

The portal allows you to customize the **Certificate received** metric of the learner dashboard available in the learner's view. You can enable/ disable the metric that shows the total certificates received by the learner.
![Total certificates received by the learner](../media/image%28418%29.png)

By default, this metric is kept enabled with value as **True**.

## Courses Completed Today Metric

```Courses Completed Today Metric
Features:CourseCompletionsTodayMetricsEnabled
```

The portal allows you to customize the **Course completed today** metric of the learner dashboard available in the learner's view. You can enable/ disable the metric that shows the total number of courses the learner completed on that day (as per UTC time zone).
![Course completed today](../media/image%28419%29.png)

By default, this metric is kept disabled with value as **False**.

## Content Priority for Learners

```Content Priority for Learners
Features:EnablePriorityForCourse
```

The portal allows you to specify priorities to the courses while assigning them to the learners. You can enable/ disable this feature on the portal depending on your specific requirements.

By default, this feature is kept enabled with value as **True** for administrator to assign priorities.

## Highest Priority Content for Learners

```Show only Required priority content to learners
Features:ShowOnlyRequiredCourses
```

The portal supports four levels of priorities to be assigned to courses - **Default**, **Optional**, **Recommended** and **Required**. The administrator can configure the portal to show only those courses to learners which are assigned "**Required**" priority.

By default, this feature is kept disabled with value as **False** and therefore all courses are visible to learners.

## Learner Notifications

```Learner Notifications
Features:NotificationDisabled
```

In the learner's view, the portal provides a [Notification icon](../learner-experience/web-app.md#step-8-view-notifications) which notifies the learner of any new course being assigned to the learner. The administrators have the flexibility to disable this features depending upon the scenario.

By default, this feature is **Disabled** with value as **False** so that learners gets notifications in real-time.

## Learner Comments

```Learner Comments
Features:CommentDisabled
```

The Platform comes with a functionality where [learners can comment](../learner-experience/mobile.md) on different lessons and initiate a discussion.
By default, this feature remains enabled. But, the administrators have the flexibility to disable this function to avoid peer-to-peer interaction over platform. Once disabled, learners will not be allowed to post comment.

## Learner Action Events

```Learner Action Events
Features:Events
```

Community Training portal utilizes **Microsoft Azure Service Bus** to integrate with other supporting Azure services (like Azure Storage, Azure Media Service) for enhancing user experience. All events that trigger the service bus can be tracked and further be used for specific actions. You can enable this feature to get updates on specific triggers.

By default, this feature remains in **disabled** state.

## Enabling Organizations on the Platform

```Enable Organizations on the Platform
Features:IsMultiOrgDeployment
```

Community Training portal allows you to [manage the portal with multiple organization](../user-management/organization-management.md). An organization comprises of a group of learners and administrators on your training platform who have a particular purpose or belong to a specific criteria. You can enable/disable this feature depending upon your requirements.

By default, this feature remains disabled with value **False**, therefore not allowing administrators to create multiple organizations.

## Restricting ability to edit Learner profile for non-Global admin

```Disable profile edit for non-global admin
Features:disableProfileEditForNonSuperAdmin
```

CT allows you to restrict ability of editing learner profiles for administrators other than global admin. If you choose to have only Global admin to edit learner profiles in CT you can set this value to **true**

## Hide Navigation bar for Learners

```Hide Navigation bar for Learners
Features:HideTopNavBarForLearner
```

The portal allows you to embed the Community Training platform in another application with independent authentication mechanism. In such scenario, the administrator can hide the top navigation bar on the learner's view. You can enable/disable this feature depending upon the specific requirements.

By default, this feature is disabled with value as **False**.

![False value](../media/image%28432%29.png)

## Allow platform embedding

```Allow platform embedding
Features:SuppressXFrameOptionsHeader
```

The portal allows you to embedded the platform into iFrame or webview so that it can be integrated with other applications. You can enable this setting if the platform is required to be embedded into different application.

By default, this feature is disabled with the value **False** so that embedding is not supported.

## Allow external video embedding into CT

```Allow external video embedding
AllowEmbedDomains
```

The portal allows external website's content to play inside Community Training portal as inline lesson. You can add different domains, for which content embedding is required.

By default, it remains empty. You can add domain names into the **value** field to allow embedding (For Example: dailymotion.com).

![Allow embedding](../media/image%28433%29.png)

## Hide landing page courses

```Hide landing page courses  
Features:HideCoursesInLandingPage
```

The portal allows content to be available to the learners only after they login to the platform from the landing page. The landing page for the learners by default shows the names and description of the self-enroll and auto-enroll courses on the platform, this can be avoided by setting this configuration as **True**.

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

CT portal allows you to disable marking course as Auto-enroll while creating [**new course**](/azure/industry/training-services/microsoft-community-training/content-management/create-content/create-course-category/create-a-new-course). By default, admin can create auto-enroll courses is enabled and to disable this you need to set the value as **false**

:::image type="content" source="../media/featuredisableautoenrollcourse.png" alt-text="autoenrollcourse":::

## Enable PDF Download feature in the lessons

CT portal allows you to enable the Download feature for the PDF lessons in the learner’s view of the platform.

```Enable
EnablePDFLessonDownload
```

By default this feature is not enabled, you need to add the above configuration and enable this feature by setting value as **true**. To disable this feature, configuration setting value should be set as **false**.

:::image type="content" source="../media/Enable PDF Download.png" alt-text="pdfdownload":::

## Allow learners to skip videos

```Allow learners to skip videos  
Features:EnableSeekingInVideos
```

The portal allows learners to skip through any video lesson while viewing it on the platform. This capability can be enabled/disabled on the portal depending on your specific requirements.

By default, this feature is kept disabled with value as **False**, ensuring that the learners DO NOT skip video lessons when they are completing the lesson for the first time. The learners can skip through in subsequent views even when this setting is set as False.

## Link External Website on Learner Homepage

CT portal allows you to provide a link to an external website on the learner’s homepage for allowing the learners quick access to a preferred website.

``` Website-Name
Features:ExternalWebsite:Name
```

Value: Name you want display (Example – Community Training)

:::image type="content" source="../media/EL5.png" alt-text="External link 5":::

Click or tab on **Ok** icon to proceed.

Again, click on the **New application setting** and provide the following values in the corresponding boxes:

``` Website-URL
Features:ExternalWebsite:URL
```

Value: Provide the link to which it will be redirected (Example – [https://communitytraining.microsoft.com/](https://communitytraining.microsoft.com/))

Click or tap on **Save** icon to complete this process.

:::image type="content" source="../media/EL6.png" alt-text="External link 6":::

Switch to the learner’s view on your instance and click on profile picture. Now you would be able to see the external link available on the panel, as shown in image below (**visit Community Training**):

:::image type="content" source="../media/el7.png" alt-text="External link 7":::

## Steps to set Default Country for Phone based login

If your instance has phone based authentication and if you want to set a default country flag in login page for all the learners, you need to provide [**Alpha-2 ISO code**](https://en.wikipedia.org/wiki/List_of_ISO_3166_country_codes) for the country you want to be as default flag as value to **DefaultCountry** application setting.

```Default Flag
DefaultCountry
```

In Value tab, provide the two letter Alpha-2 country code. Example - For setting default country as **India**, provide the value as **IN**.

:::image type="content" source="../media/Default country.PNG" alt-text="Def_country":::

## Disable MS Teams integration with CT

```disable MS Teams integration  
deploymentType
```

When setting up the CT instance, if you had opted for MS Teams integration with CT by selecting "Yes" under **Enable Microsoft Teams?** and would now like to proceed without MS Teams integration, CT allows you to disable this deeper teams integration using this Application Configuration.

To disable this MS Teams integration, update this app setting with **value “0”**

>[!Warning]
>
>- MS Teams integration comes with CT instances with authentication type as "Work or School Account".
>- Once you disable the MS Teams integration, you would be able to add users to the platform via CT Admin UI.

:::image type="content" source="../media/Disable MS Teams integration.PNG" alt-text="Disable teams integration":::

## Enable PWA Mobile App

```Enable PWA Mobile App
Features:EnableWebAppInstall
```

The platform supports progressive web applications (PWA). For setting up the mobile app for your training portal, you need to update enable this feature, by setting its value to **True**.

By default, this feature is disabled with the value **False**.

## Manage course progress retention

```Enable retention of course progress
UserProgressRetentionEnabled
```

If the Administrator enables this application setting with the value "**True**", user's progress for the content will be retained even if content is de-assigned to that user. That means, if a learner is removed from a course and then re-enrolled to the same course, the earlier progress would be retained.

By default, the application setting is marked as "**False**"i.e. on de-assignment, all the progress of that learner will be deleted from that course.

## Mask User details for Admin

CT platform supports masking of user data, this will help in creating additional security to restrict admin from glancing sensitive user information.

You can enable masking of your user data by setting Features:Masking:IsProfileFieldsMaskEnabled to **true**

```Enable Masking
Features:Masking:IsProfileFieldsMaskEnabled
```

Once the masking feature is enabled, you can now choose what user information to be masked from this app setting.

```Fields to be masked
Features:Masking:MaskedProfileFields
```

:::image type="content" source="../media/doc_3_1.png" alt-text="maskthefields":::

- Use `First Name` as a field in app settings to mask first name of the user/admin
- Use `Contact` to mask EmailId/Phone number/Contact of the user/admin
- Use `Last Name` to mask last name of the user/admin
- To mask custom Profile Fields, use actual name of the field Eg: `State`, `SSN`
