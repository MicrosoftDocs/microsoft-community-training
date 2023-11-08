---
title: Learner Experience on PWA-based mobile app
original-url: https://docs.microsoftcommunitytraining.com/docs/pwa-app
author: nikotha
ms.author: nikotha
description: This article explains how learners can access the training content using the PWA-based Android mobile application for the  Community Training platform instance setup for your organization.
ms.prod: learning-azure
---

# Learner Experience on (PWA-based) mobile app

This article explains how learners can access training content using the [Progressive Web App (PWA) based Android mobile application](../infrastructure-management/install-your-platform-instance/create-publish-mobile-app.md#option-1-creating-a-progressive-web-application-pwa-for-android) for the Community Training setup of your organization.

## Step 1: Download the app

### Option 1: Install from Play store

1. Open the Google Play Store app on your Android smartphone.

2. Search for the training app and install the application.

3. Once the app is installed, tap the app icon to launch the app.

> [!NOTE]
> Community Training enables every organization to create a custom white-labeled mobile app. Learners are provided with the name of the training app published on the Play Store by the administrator.

### Option 2: Install from the browser

1. For mobile devices (Android), you can install PWA by selecting the  **Add to home screen** prompt that you receive while browsing Community Training instance or selecting **install app** from browser options.

> [!NOTE]
> The learner experience is the same for both installation options.

## Step 2: Sign in and create your profile

1. On app launch, you'll need to sign in to access the application.

2. Depending on the [**login identity setup**](../infrastructure-management/install-your-platform-instance/configure-login-social-work-school-account.md), you'll need to sign in using your email address, social account, or Azure Active Directory account.

    :::image type="content" source="../media/image(189).png" alt-text="Login-identity" lightbox="../media/image(189).png":::

3. After sign-in, you'll need to complete your profile information including first name, last name, profile picture, and more.  

4. The fields displayed on the profile page are configured by the administrator. For more information, see [**Customize profile information for learners**](../settings/add-additional-profile-fields-for-user-information.md).

    :::image type="content" source="../media/pwaofflogin.png" alt-text="pwaofflinelogin":::

## Step 3: Choose language

1. After setting up the profile, you can choose to change the language from the dropdown in the profile section.

    :::image type="content" source="../media/pwaofflang.png" alt-text="offlinelanguage" lightbox="../media/pwaofflang.png":::

2. Content on the home page will be updated based on your chosen language. Refer to [**Course Translations**](../content-management/create-content/create-course-category/create-a-new-course.md#option-4---create-multiple-translations-for-a-course) to understand how language change impacts your learner view.

>[!NOTE]
>Only the languages enabled by the Global administrator will be available for selection. The dropdown will not be available to learners if only one language is enabled on the platform.

## Step 4: Browse and register for courses

1. After signing in, you can see all the registered learning paths and  Courses along with their completion status.

    :::image type="content" source="../media/pwaoffhomepage.png" alt-text="pwaoffllinehomepage" lightbox="../media/pwaoffhomepage.png":::

2. You can also browse the course library and register for more courses as required. Select the **Course Library** button and filter the list by choosing an individual category.

3. To enroll for a course, select the course item and select the **Register** option in the pop-up window:

    :::image type="content" source="../media/image(179).png" alt-text="pop-up window":::

> [!NOTE]
> Users can search for courses using the search option on the home page.

## Step 5: View and consume course content

1. On the **My Course** page, select the Course item which you want to view and learn.

2. Every course consists of a course description, lessons, and assessments (graded or non-graded) as shown in the course outline. You will see a green circled tick mark once a course item is completed:

    :::image type="content" source="../media/pwaoffvoureview.png" alt-text="pwaofflinecourseview":::

3. To view any lesson content or attempt an assessment, select the course item in the outline.

4. On successful completion of the course, you'll receive a certificate if enabled by the administrator.

## Step 6: Download content and continue learning offline

1. Tap on the course item you would like to download and select the **Download** button:

    :::image type="content" source="../media/pwa_Ss.png" alt-text="pwaofflinedownload" lightbox="../media/pwa_Ss.png" :::

2. To manage your downloads, select the profile section from the top right of the screen, then select **My Downloads**.

    :::image type="content" source="../media/pwa_Ss_2.png" alt-text="pwaofflinedownload" lightbox="../media/pwa_Ss_2.png" :::

3. While offline, you can access the downloaded content by selecting the specific course items that you downloaded from the course player page.

## Step 7: Delete downloaded content to free up space

1. On the **Downloads** page, tap on the **Delete** option to the right of the content.

    :::image type="content" source="../media/pwaoffdelete.png" alt-text="pwaofflinedelete" lightbox="../media/pwaoffdelete.png" :::

2. You can also view the deleted content from the **Recently Deleted** section on the Downloads page.

 * The content downloaded for offline consumption from a PWA-based app gets stored in browser storage.

 * The current limit for storage is capped for each lesson at 200 MB, overall limit is dependent on device storage.

 * Metadata for content in **Recently Deleted** section will be retained for 90 days.

 * Currently Community Training supports offline download (in PWA) for the following file types: .doc, .docx, .ppt, .pptx, .xlx, .xlsxPDF, EPUB, video, audio files, and single HTML files.

 * Only Non-Graded Assessments can be taken and submitted offline. Graded Assessments can only be taken while online.
