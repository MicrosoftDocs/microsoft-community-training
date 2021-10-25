---
title: Setup and enable PWA
original-url: https://docs.microsoftcommunitytraining.com/docs/create-progressive-web-app
author: sambati
ms.author: sambati
description: In this article, we will learn about how to setup and enable PWA for your training portal
ms.prod: azure
---

# Enable Progressive Web App (PWA) for your Training Portal

## What is PWA ?

A Progressive Web App (PWA) is web app that use service workers, manifests, and other web-platform features in combination with progressive enhancement to give users an experience equivalent to native app. It is intended to work on any platform that uses a standards-compliant browser, including both desktop and mobile devices.

Since a progressive web app is a type of webpage/website known as a web application, they do not require separate bundling or distribution. By following simple [**Installability Requirements**](#installability-requirements-for-adding-pwa-to-your-instance) as mentioned below admin can enable PWA to be available for learners to install on their devices. With [**PWA Builder**](#build-android-application-using-pwa-builder), customers can now build android app for their PWA enabled instance.

## Installability Requirements for adding PWA to your instance

### Step 1: App Configuration

Update [**Configurations on the Training Platform**](../../settings/configurations-on-the-training-platform.md#steps-to-set-the-configurations-on-the-platform). search for **Features:EnableWebAppInstall** if not found then click on ‘**New application setting**’ and provide **Features:EnableWebAppInstall** under Name and Value as ‘**true**’ as shown below, click OK and then Save the changes.

:::image type="content" source="../../media/PWAAppsetting.png" alt-text="Appsetting_PWA":::

### Step 2: Settings in Admin View for Mobile Application

Login to your Microsoft Community Training portal, [**switch to administrator view**](../../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal) and click on **Settings** option from the left navigation panel and navigate to **Mobile Application**.

:::image type="content" source="../../media/MobApplication_setting.png" alt-text="Mobileapp settings":::

Under this Mobile Application setting you need to specify following information:

| Setting | Description |
| --- | --- |
| Mobile Application Name | You can specify your Instance name, this name will be used for rendering splash screen (Android), Start menu item (Windows) |
| Mobile Application Short Name | This will be used to generate the App icon name on the device app tray. You can mention a shorter acronym of your instance name. |
| Application Background Color | This setting will be used for rendering Splash screen (Android) |
| Application Logo (512 px by 512 px) | The logo must be 512x512 pixels, MCT uses this image to render Splash screen, Start menu, App Launcher item for your PWA.  |

## Installing PWA on your Desktop and Mobile Device

* Once you met the [installability requirements](#installability-requirements-for-adding-pwa-to-your-instance) for PWA, as you login to your MCT instance you will be seeing an icon on the search bar indicating PWA app is available for installation.

    :::image type="content" source="../../media/InstallPWA.png" alt-text="installPWAforwebapp":::

* Users can now install the PWA which renders your MCT webapp as a native application. After successful installation, you can check options to allow the app to pin to taskbar, pin to start, create a Desktop shortcut as per your requirement.

    :::image type="content" source="../../media/PWA_installoptions.png" alt-text="installoptionspwa":::

* For mobile devices (Android), users can install PWA by clicking on the prompt (add to home screen banner) that they receive while browsing your MCT instance or clicking on ‘install app’ from browser options.

    :::image type="content" source="../../media/Screenshot_20210930-161736_Chrome (3).jpg" alt-text="installpwaonphone":::

> [!Note]
> **Devices & Browser Compatibility:**
>
> * The PWA flow works as expected when using chromium-based browsers such as Microsoft Edge, Google Chrome.
>
> * For Firefox browser, the PWA install icon will not be seen on the URL bar, however the service workers will be installed. In Mobile Firefox browser, you will have Add to home screen option that can install PWA.
>
> * Safari on IOS doesn’t support add to home screen banner, however the option is visible in the browser menu. You might notice some inconsistencies with PWA on IOS even though it is just browser running the webapp inside your PWA.

## Build Android Application using PWA Builder

As you enabled the PWA, in the backend there will be a service worker and a web manifest added, through which you can build a native Android application that can be bundled to be uploaded to your play store. We recommend using [**PWABuilder**](https://www.pwabuilder.com/) an online GUI tool that can generate APK & AAB files for your instance.

### Steps to Generate an Android App

1. Open [**PWABuilder**](https://www.pwabuilder.com/)

2. In the text box on homepage of PWA builder, enter your instance URL (eg: contosolearning.azurewebsites.net) and click ‘Start’. In the backend PWABuilder will verify if you have a service worker and manifest available for your PWA.

    :::image type="content" source="../../media/PWA_android.png" alt-text="PWAAndroidinsert":::

3. Click Next on the PWA’s report card page, score 130 and above suggests that you have met requirements by PWABuilder.

    :::image type="content" source="../../media/PWA_android2.png" alt-text="PWAScore":::

4. You will be redirected to page where you can generate Android App bundle, to the right in Android section, click on "Store package".

    :::image type="content" source="../../media/PWA_android3.png" alt-text="PWABuildpackage":::

5. If you are creating an Android App for your instance for the first time (if you have an existing app and wanted it updated instead of creating new application, then proceed to step 6)

    * Provide App name and Launcher name for your application and click Generate.

        :::image type="content" source="../../media/PWA_android4.png" alt-text="PWAnewgenerate":::

6. If you have an existing android application published to play store and need to update it:

    * Log a [**help desk**](https://sangamhelpdesk.microsoftcrmportals.com/SignIn?ReturnUrl=%2Fsupport%2Fcreate-case%2F) ticket requesting a key store file for your previous android application.
    * In the “Google Play store Options” mention [**Package ID**](https://developers.google.com/android/management/apps#install_apps) of your previously published android application.
    * Click on “All Settings” and increment your App version and App Version Code by 1 from your existing app version.
    * Scroll to “Signing Key”, choose ‘Use Mine’ and upload the key store file that you received from MCT support team.

        :::image type="content" source="../../media/PWA_Existingapp.png" alt-text="PWAexixtingapp":::

7. Download your App bundle and you can upload it to your Play Store.

## Digital Asset Linking

The Digital Asset Links protocol and API enable an app or website to make public, verifiable statements about other apps or websites. For example, a website can declare that it is associated with a specific Android app, or it can declare that it wants to share user credentials with another website. [**Learn More about Digital Asset Linking**](https://developers.google.com/digital-asset-links/v1/getting-started)

1. Navigate to `<your-website-name>.scm.azurewebsites.net` 
(If your instance url is contosolearning.azurewebsites.net then ‘contosolearning’ is your website name) and enter credentials which you used for azure portal when deploying MCT.

2. From Navigation bar on top, click on 'DebugConsole' and from dropdown click 'CMD'.

    :::image type="content" source="../../media/Digitalassetlinkscmd.png" alt-text="DALCMD":::

3. From the table of contents, navigate to `site/wwwroot/.well-known`
(create folder “.well-known” if it is not present )

    :::image type="content" source="../../media/Digitalassetlinkssite.png" alt-text="DLASite":::

4. Drag and drop the `assetlinks.json` file (present in app bundle that you downloaded from PWAbuilder) in `site/wwwroot/.well-known` path.

    :::image type="content" source="../../media/Digitalassetlinksfinal.png" alt-text="DLAFinal":::
