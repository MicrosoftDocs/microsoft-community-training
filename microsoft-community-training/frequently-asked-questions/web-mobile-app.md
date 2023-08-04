---
title: Web & Mobile App
original-url: https://docs.microsoftcommunitytraining.com/docs/web-mobile-app
author: nikotha
ms.author: nikotha
description: It is possible that your infrastructure is unable to handle the high traffic load.
ms.prod: learning-azure
---

# Web & Mobile App

## Learner experience

### It takes too much time to open the website on my browser / portal is responding very slowly

It is possible that your infrastructure is unable to handle the high traffic load. Refer **[this article](../infrastructure-management/configure-your-platform-infrastructure/scale-up-instance-configuration.md)** to upscale your platform and meet your growing needs.

### I can't open external links embedded inside the PDF document in the platform

For security reasons, we have disabled clicking on external links for the PDF document on the platform. Hence, you should not add any  link in PDF lesson file.

### Can learners change/update user profile fields?

Learners can change/update profile fields via profile section in the learners portal. Administrator can change these values via the bulk upload functionality. Refer [**this article**](../user-management/organize-users/add-multiple-users-to-the-group.md#steps-to-bulk-upload-users-to-specific-group) for more information.

### Can Community Training platform be used in low bandwidth  and no internet connectivity scenarios?

Community Training platform is designed to be lightweight and supports adaptive streaming for seamless content consumption for low network connectivity scenarios:

* For video content, it supports streaming under all network speeds – 100 kbps, 256 kbps, 2G as well as 3G.

* For other content types like pdf and doc files, the complete content needs to be downloaded before learners can start consuming the content.

* On the mobile app, learners can also download the content and consume the same in offline mode.

### How can learners search for courses on the platform?

After successful login, learners can see all the courses to which he or she has registered for and their completion status.

Users can also browse the course library and register for more courses as required.

For further information [**refer here**](../learner-experience/mobile.md)

## Course consumption

### How to restrict users to view the courses until they sign in?

There are two ways to achieve this:

1. Create a custom home page  

   You can create a custom HTML landing page with login button. The landing page can be designed to have any information about your organization or training program. When user selects login, you can direct them to our sign in flow and on successful login, users will shown the My Course Page.

2. Mark all the course as admin only by following the below steps  
   * Login to Management portal as administrator with access to the courses
   * Select the Course and click More (…) button
   * Select Edit course
   * In ‘Learner Enrollment’ options select ‘Only admin can enroll learners’

### Can learners create their own lesson plans?

No. Learners cannot create their own lesson plans. They can only go through course plan and lesson as defined by the trainer and administrator.

### What are the video playback controls available for Community Training?

We have the below-mentioned functions which are available on our inbuilt video player,

1. Play & Pause
2. See Videos Progress
3. Turn Closed Captions on and off
4. Volume Adjustments
5. Setting Video Quality based on the data bandwidth
6. Viewing video on full screen.

   ![Video on full screen](../media/image%28310%29.png)

### Can learners switch the audio language just like how they can select the subtitle language on the web and mobile app?

We currently don’t support adding multiple audio for a lesson content. However, we recommend customers to create multiple courses for different languages  and upload respective files to achieve the use cases with existing features.

Example: A customer wants to upload a course called “How to use Microsoft Word” in different languages such as English, French, Hindi etc. The customer can then create different course categories with appropriate course tiles such as

* “How to use Microsoft Word - English”
* “How to use Microsoft Word - French”
* “How to use Microsoft Word - Hindi”

Learners can easily navigate and select their preferred language.

### How can learners download a certificate from the phone?

The certificate is provided in the PDF format, hence you can download it on your phone by saving it as a PDF.

### Can the learner download or share their course completion certificate on social media website like Facebook, LinkedIn, etc.?

Yes, once learners have completed the course and unlocked the certificate, they will be able to save and share it on social media platforms.

## Content download & offline mode

### Will the learners be able to download course content on their device for offline consumption?

Learners can download contents only on the mobile app. To download the content, learners would require an active internet connection.

### Can learner download content for offline consumption on their device?

On the web portal, learners cannot download the lesson content except if it is an Office document like Word, PowerPoint and Excel. i.e. if you are uploading Video, PDF, Audio, HTML or ePUB as lesson content then learners would not be allowed to download the content on their local device.

On the mobile app, learners are allowed to download the content for offline consumption. Even after download, learners will have to open the mobile app to consume the training content. They cannot access content outside the app.

Please note  downloaded content can be viewed only from within the Community Training mobile app and all the learning progress will be synced whenever device comes back online.

### Can I disable downloading of video and other course content for the learners on web and mobile app?

Learners accessing the platform using a web (PC / Mac) or mobile browser  (Android / iOS) will not be able to download video or audio contents that are hosted on the platform; however, they will be able to download certain file types such as Word, PowerPoint.

Learners accessing the platform using our native android app will be able to download contents such as Video, audio & documents. The downloaded contents as accessible only via the mobile app and not out the app, like what we have on YouTube, Amazon Prime, Netflix etc.

The below chart illustrates the download possibilities based on the content type and platform the learner is accessing through:

![Download possibilities](../media/image%28308%29.png)

### How can learners download course content on the mobile app?

Learners can download content on their mobile app by clicking on the download icon within their course page, refer the below image for clarification. Course progressions are monitored and tracked even when courses are downloaded and consumed offline.

![download course content](../media/image%28309%29.png)

## Mobile app

### What is the name of the Mobile application available on android?

Just like a web app, a mobile app can also be customized and branded according to the organization's norms. You can provide the preferred app title while publishing the APK on your google play store account.

For more information [**refer here**](../infrastructure-management/install-your-platform-instance/create-publish-mobile-app.md).

### How can I test mobile app before uploading the same to the Google Play Store?

The mobile app can be installed locally on your android phone and tested. Alternatively, you can also try using android sandbox tools to install and test.

### How can I restrict my android app only for Internal employees only

As Android platform polices are subjected to change, we suggest you refer to [**Google forum**](https://support.google.com/googleplay/android-developer/answer/3131213?hl=en) for the latest information.

### How to restrict users from downloading course material on mobile app?

Download functionality on the mobile app is turned on by default and cannot be disabled. However, the downloaded content can only be consumed within the app and are not accessible outside the mobile app. This ensures that learners won’t be able to share content with others.

### Things to remember while migrating from Native Android app to PWA

If you have an existing native android application and planning to migrate to PWA then these are things to be noted before migration:

1. Send a communication via [in-app](https://learn.microsoft.com/azure/industry/training-services/microsoft-community-training/user-management/manage-users/send-announcement-to-the-users) or by email/phone to all the users on the platform to have their progress that they would've made offline synced with webapp by staying connected to internet for 5-10 min.
   * Make sure you send this notification prior to updating the app in Play Store.
2. As you update your existing native app with PWA in your Play Store, based on end user's device settings, the update would automatically happen or they've to manually update it from Play Store.
   * If you have users installing PWA from browser instead of play store, where you previously have native application, above step 1 remains same.
3. Once updated, learner can now again [download content](https://learn.microsoft.com/azure/industry/training-services/microsoft-community-training/learner-experience/pwa-app) for their offline consumption. 

## Discussion forum & announcement

### Are there discussion forums or comment sessions available on the platform for Q&A?

There is an inbuilt comment session available for every lesson. While accessing the training content, learners can use a discussion forum to add/share comments and questions with others and stay informed on replies and feedbacks.

### Can I disable the comment functionality?

Yes, you can disable the comment functionality from the lessons. Once disabled, learners will not be allowed to post comment. By default, commenting for learners remains enabled. For more understanding, refer [this article](../settings/configurations-on-the-training-platform.md).

### Can learners communicate or ask questions with peers and trainers on the platform?

Community Training platform has  a functionality called discussion forum which learners can use to ask questions to other participants, trainers or administrator. Anyone who is registered for the course (or admins) can respond to these questions.

Refer this [**article**](../learner-experience/web-app.md#step-7-discuss-and-share-information-with-peers) for more information.

### What is the Discussion Forum feature?

Discussion Forums enable learners to ask their queries on a specific lesson which can be answered by administrators or interact with peers woh are enrolled for the course.  

Forum is open to all learners enrolled on the course where real-time Q & A can take place.

### How to access discussion forums on the platform?

Discussion Forums can be accessed from the course details page. By tapping the add a comment button from the top right corner of the course details page, discussion forum panel can be opened. See the  below screenshot:

![Access discussion forums](../media/image%28321%29.png)

### Who all can post questions or respond to queries in the discussion forum?

All the enrolled learners for the course and course administrators will be able to post and responds to queries on the discussion forum.

### How can the administrators use the discussion forum to interact with the learners?

Every lesson has a dedicated comment section where the learners can place their questions. Administrators can easily navigate and provide real-time feedback and answers to the learners queries which makes it easy for them to interact with peers/mentors and get guidance.

### As an administrator, can I moderate queries and responses on the discussion forum?

Currently, Community Training platform doesn’t support deletion or editing questions & responses posted in the comment section. However, this is something on our roadmap.

### Can a learner ask questions to the instructor or subject matter expert in a private chat?

Community Training platform doesn’t support private  chat or 1:1 discussion between learners and administrators. However, learners can connect with instructors using tools such as Microsoft Teams, WhatsApp, etc.

### When I sent an announcement, will the learners receive notification via email or SMS?

When an announcement is sent by the administrators there messages appear on the Notice Board for the learner experience. In order to have additional functionality such as SMS or Email , customers can leverage our APIs to build these functionalities using Logic Apps, Microsoft Flow, etc.

For more information contact us **[via HelpDesk](https://go.microsoft.com/fwlink/?linkid=2104630)**.
