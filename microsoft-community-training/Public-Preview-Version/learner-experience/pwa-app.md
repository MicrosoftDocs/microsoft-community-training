---
title: Learner Experience on PWA based mobile app
original-url: https://docs.microsoftcommunitytraining.com/docs/pwa-app
author: v-sambati
ms.author: v-sambati
description: This article explains how learners can access the training content using the PWA based Android mobile application for the Microsoft Community Training platform instance setup for your organization.
ms.prod: learning-azure
---

# Learner Experience on (PWA based) mobile app

This article explains how learners can access the training content using the [PWA based Android mobile application](../infrastructure-management/install-your-platform-instance/create-publish-mobile-app.md#option-1-creating-a-progressive-web-application-pwa-for-android) for the Microsoft Community Training platform instance setup for your organization.

## Step 1: Download the app

### Option 1: Install from Play store

1. Open the Google Play Store app on your Android smartphone

2. Search for the training app and install the application

3. Once the app is installed, tap the app icon to launch the app

> [!NOTE]
> Microsoft Community Training platform lets every organization create a custom white-labelled mobile app. Learners need to get the name of the training app published on the Play Store from the administrator.

### Option 2: Install from browser

1. For mobile devices (Android), users can install PWA by clicking on the prompt (add to home screen banner) that they receive while browsing your MCT instance or clicking on ‘install app’ from browser options.

    :::image type="content" source="../media/Screenshot_20210930-161736_Chrome (3).jpg" alt-text="pwainstallimage":::

> [!NOTE]
> Learner experience will remain same for both options of installation.

## Step 2: Login and create your profile

1. On app launch, user will be asked to login in order to proceed with the application.

2. Depending upon the [**login identity setup**](../infrastructure-management/install-your-platform-instance/configure-login-social-work-school-account.md) for the platform instance, user will be asked to sign in using  their 10-digit Mobile Number, Email address/Social account or Azure Active Directory account.

    :::image type="content" source="../media/image(189).png" alt-text="Login-identity":::

3. After login, user will be asked to complete their profile information like first name, last name, profile picture, etc.  

4. The fields displayed on the profile page  are configured by the administrator. For more details, see [**this article**](../settings/add-additional-profile-fields-for-user-information.md).

    :::image type="content" source="../media/pwaofflogin.png" alt-text="pwaofflinelogin":::

## Step 3: Choose the language

1. After setting up the profile, user can choose to change the language from the drop down in the profile section.

    :::image type="content" source="../media/pwaofflang.png" alt-text="offlinelanguage":::

2. Content on the home page will be updated based on learner's chosen language. Please refer [**Course Translations**](../content-management/create-content/create-course-category/create-a-new-course.md#option-4---create-multiple-translations-of-a-course) to understand how language change will impact learner view.

>[!NOTE]
>Only the languages enabled by the Global administrator will be available for selection. The dropdown will not be available to the learners, if only ONE language is enabled on the platform.

## Step 4: Browse and register for courses

1. After login, user can see all the registered Learning Path / Courses and their completion status.

    :::image type="content" source="../media/pwaoffhomepage.png" alt-text="pwaoffllinehomepage":::

2. User can also browse the course library and register for more courses as required. Click on the **Course Library** button and filter the list by tapping on the individual category.

3. To enroll for a course, click on the course item and select **Register** option in the pop-up window

    :::image type="content" source="../media/image(179).png" alt-text="pop-up window":::

> [!NOTE]
> Users can search for courses using the search option in the Home Page.

## Step 5: View and consume course content

1. On the **My Course** page, click on the Learning Path or Course item which you want view and learn.

2. Every course comprises of course description, lessons, assessments (graded/non-graded) as shown in the course outline below. You will see completed green circled tick mark once a course item is completed.

    :::image type="content" source="../media/pwaoffvoureview.png" alt-text="pwaofflinecourseview":::

3. To view any lesson content or  attempt a practice quiz, click on the course item in the outline.

4. On successful completion of the course, user will receive a certificate (if enabled) by the administrator.

## Step 6: Download content and continue learning offline

1. Tap on the course you would like to download and click save as shown below. Also, you can select a lesson and click on the **Save icon** to download the individual lesson.

    :::image type="content" source="../media/pwa_Ss.png" alt-text="pwaofflinedownload":::

2. To manage your downloads, click on the profile section from top right of the screen.

    :::image type="content" source="../media/pwaofflang.png" alt-text="pwaofflinemydownloads":::

3. While offline, you access the downloaded content by clicking on the specific course items that you downloaded from course player page itself.

## Step 7: Delete downloaded content to free up space

1. On the **Downloads** page, tap on the Delete option to the right of every lesson.

    :::image type="content" source="../media/pwaoffdelete.png" alt-text="pwaofflinedelete":::

2. You can also view the deleted content from recently deleted section in Downloads page.

 * The content downloaded for offline consumption from a PWA based app gets stored in browser storage.

 * Current limit for storage is capped for each lesson at 200MB, over all limit is depended on device storage.

 * Meta data for content in 'Recently Deleted' section would be retained for 90 days

 * Currently MCT supports offline download (in PWA) for .doc, .docx, .ppt, .pptx, .xlx, .xlsxPDF, EPUB, video, audio files and Single HTML files.

 * Only Non-Graded Assessments can be taken and submitted offline. Graded Assessments can only be taken while online.
