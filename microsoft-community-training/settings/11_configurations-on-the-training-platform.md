---
title: Configurations on the Training Platform
original-url: https://docs.microsoftcommunitytraining.com/docs/configurations-on-the-training-platform
author: nikotha
ms.author: nikotha
description: You can customize the learner and administrator experience on the Microsoft Community Training platform to fit the needs of your specific training program.
ms.prod: azure
---

# Configurations on the Training Platform

You can customize the learner and administrator experience on the Microsoft Community Training platform to fit the needs of your specific training program. 

In this article, you will learn about the different configuration options available on the Microsoft Community Training platform and how to enable or disable the configurations. 

## Certificates Received Metric 

**Configuration**
```    
Features:CertificatesEarnedMetricsEnabled
```

The portal allows you to customize the **Cerificate received** metric of the learner dashboard available in the learner's view. You can enable/ disable the metric that shows the total certificates received by the learner.
![Total certificates received by the learner](../media/image%28418%29.png)

By default, this metric is kept enabled with value as **True**.

## Courses Completed Today Metric

**Configuration**
```
Features:CourseCompletionsTodayMetricsEnabled
```

The portal allows you to customize the **Course completed today** metric of the learner dashboard available in the learner's view. You can enable/ disable the metric that shows the total number of courses the learner completed on that day (as per UTC time zone). 
![Course completed today](../media/image%28419%29.png)

By default, this metric is kept disabled with value as **False**.

## Content Priority for Learners

**Configuration**
``` 
Features:EnablePriorityForCourse
```

The portal allows you to specify priorities to the courses while assigning them to the learners. You can enable/ disable this feature on the portal depending on your specific requirements.

By default, this feature is kept enabled with value as **True** for administrator to assign priorities.

## Highest Priority Content for Learners

**Configuration**
``` 
Features:ShowOnlyRequiredCourses
```

The portal supports four levels of priorities to be assigned to courses - **Default**, **Optional**, **Recommended** and **Required**. The administrator can configure the portal to show only those courses to learners which are assigned "**Required**" priority.

By default, this feature is kept disabled with value as **False** and therefore all courses are visible to learners.

## Learner Notifications

**Configuration**
``` 
Features:NotificationDisabled
```

In the learner's view, the portal provides a [Notification icon](../learner-experience/2_web-app.md#step-7-view-notifications) which notifies the learner of any new course being assigned to the learner. The administrators have the flexibility to diable this features depending upon the scenario.

By default, this feature is **Disabled** with value as **False** so that learners gets notifications in real-time.

## Learner Comments

**Configuration**
``` 
Features:CommentDisabled
```

The Platform comes with a functionality where [learners can comment](../learner-experience/3_mobile.md) on different lessons and initiate a discussion.
By default, this feature remains enabled. But, the administrators have the flexibility to disable this function to avoid peer-to-peer interaction over platform. Once disabled, learners will not be allowed to post comment.

## Learner Action Events 

**Configuration**
```
Features: Events
```

Microsoft Community Training portal utilizes **Microsoft Azure Service Bus** to integrate with other supporting Azure services (like Azure Storage, Azure Media Service) for enhancing user experience. All events that trigger the service bus can be tracked and further be used for specific actions. You can enable this feature to get updates on specific triggers.

By default, this feature remains in **disabled** state.

## Enabling Organizations on the Platform

**Configuration**
```
Features:IsMultiOrgDeployment
```

Microsoft Community Training portal allows you to [manage the portal with multiple organization](../user-management/4_organization-management.md). An organization comprises of a group of learners and administrators on your training platform who have a particular purpose or belong to a specific criteria. You can enable/disable this feature depending upon your requirements.

By default, this feature remains disabled with value **False**, therefore not allowing administrators to create multiple organiations.

## Hide Navigation bar for Learners

**Configuration**
```
Features:HideTopNavBarForLearner
```

The portal allows you to embed the Microsoft Community Training platform in another application with independent authentication mechanism. In such scenario, the administrator can hide the top navigation bar on the learner's view. You can enable/disable this feature depending upon the specific requirements.

By default, this feature is disabled with value as **False**.

![False value](../media/image%28432%29.png)

## Allow platform embedding

**Configuration**
```
Features:SuppressXFrameOptionsHeader
```

The portal allows you to embedded the platform into iFrame or webview so that it can be integrated with other applications. You can enable this setting if the platform is required to be embedded into different application.

By default, this feature is disabled with the value **False** so that embedding is not supported.

## Allow external video embedding into MCT

**Configuration**
```
AllowEmbedDomains
```

The portal allows external website's content to play inside Microsoft Community Training portal as inline lesson. You can add different domains, for which content embedding is required.

By deault, it remains empty. You can add domain names into the **value** field to allow embedding (For Example: dailymotion.com).

![Allow embedding](../media/image%28433%29.png)

## Steps to set the Configurations on the Platform

1.	Login to [Azure portal](https://www.portal.azure.com/).
2.	Go to App Services from the left-menu.

  ![Select App Service.png](../media/Select%20App%20Service%281%29.png)

3.	Click on the app service belonging to your Microsoft Community Training instance.
4.	Select Configuration under settings from the left-menu.

  ![Select Configurations.png](../media/Select%20Configurations%281%29.png)

5.	Go under Applications Settings tab
  
  ![Select Application Settings.png](../media/Select%20Application%20Settings.png)

6.	Select the setting you want to edit, Example - If you want to disable learner comments, use the setting **Features:CommentDisabled** and update it with value “**true**”

  ![Comment Disabled](../media/CommentDisabled.png)

  ![Comment Disabled Editing](../media/CommentDisabledEditing.png)

7.	Click on save.

  ![Save Application Settings.png](../media/Save%20Application%20Settings%281%29.png)