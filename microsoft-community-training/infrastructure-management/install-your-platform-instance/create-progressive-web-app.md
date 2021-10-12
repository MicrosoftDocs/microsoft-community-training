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

Since a progressive web app is a type of webpage/website known as a web application, they do not require separate bundling or distribution. By following simple [**Installability Requirements**](#installability-requirements-for-adding-pwa-to-your-instance) as mentioned below admin can enable PWA to be available for learners to install on their devices. With [**PWA Builder**](#build-android-application-using-pwa-builder), admin can now build android app for their PWA enabled instance.

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
> * Safari on IOS doesn’t support add to home screen banner, however the option is visible in the browser menu. Due to some browser related inconsistencies with API implementations, we do not currently recommend using your instance’s PWA in IOS.

## Build Android Application using PWA Builder

Process for using PWA builder to create Android app bundle will be updated soon
