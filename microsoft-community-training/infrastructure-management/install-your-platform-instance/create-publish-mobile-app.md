---
title: Create and Publish your Mobile App
original-url: https://docs.microsoftcommunitytraining.com/docs/create-publish-mobile-app
author: nikotha
ms.author: nikotha
description: In this article, you will learn how to create and publish the Mobile App (available only for Android) for your training portal.
ms.prod: learning-azure
---

# Create and Publish your Mobile App

In this article, you will learn how to create and publish the Mobile App (available only for Android platform) for your training portal.  

![Create and Publish your Mobile App](../../media/image%2877%29.png)

To set up the mobile app for your training portal, you will need a mobile app APK/AAB file and a Google PlayStore account. The APK/AAB file can be generated in two ways:

1. [Creating a progressive web application (PWA) for android](#option-1-creating-a-progressive-web-application-pwa-for-android)

1. [Requesting a mobile app AAB from the platform team](#option-2-requesting-a-mobile-app-aab-from-the-platform-team)

> [!WARNING]
> The Community Training team will soon be deprecating the process of requesting mobile applications from the platform and support only progressive web applications (PWA) for both android and iOS.

## Steps to create Mobile Application

## Option 1: Creating a progressive web application (PWA) for android

### What are Progressive Web Applications?

[Progressive Web Apps](https://developer.mozilla.org/Apps/Progressive) (PWAs) provide access to open web technologies for cross-platform interoperability and provide your users with an app-like experience customized for their devices.

PWAs are websites that are [progressively enhanced](https://alistapart.com/article/understandingprogressiveenhancement) to function like installed apps on supporting platforms, and like regular web sites on other browsers.

The qualities of a PWA combine the best of the web and compiled apps. PWAs run in browsers, like websites, but have access to app features like the ability to work offline, be installed on the operating system, support push notifications and periodic updates, access hardware features, and more.

When installed, PWAs are just like other apps on Windows or Android. They can be added to the Start Menu, pinned to the Taskbar, handle files, run on user login on Desktop and in Android PWA will added as native application in app tray.

Since a progressive web app is a type of webpage/website known as a web application, it doesn't require separate bundling or distribution. By following simple [**Installation Requirements**](#installation-requirements-for-pwa-mobile-application) as mentioned below, administrators can enable PWA to be available for learners to install on their devices. With [**PWA Builder**](#generate-android-app-bundle-using-pwa-builder), you can then build android app for you PWA enabled instance.

### Installation Requirements for PWA mobile application

#### Step 1: Update the configuration on the platform

1. Login to [**Azure portal**](https://www.portal.azure.com/).

1. Navigate to [**Application Settings**](../../settings/configurations-on-the-training-platform.md#steps-to-set-the-configurations-on-the-platform) from your instance's app service.

1. Under **Application settings**, filter for **Features:EnableWebAppInstall** and set the Value to ‘**true**’
    * If this setting was not found then click on ‘New application setting’, provide **Features:EnableWebAppInstall** under Name and Value to ‘**true**’ as shown below.

        :::image type="content" source="../../media/PWAAppsetting.png" alt-text="Application setting for PWA.":::
    * Select **OK** and Save your changes.

#### Step 2: Update Settings in Admin View for Mobile Application

1. Login to your Community Training portal and [**switch to administrator view**](../../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal).

1. Select **Settings** from the left panel and navigate to **Mobile Application**.

    :::image type="content" source="../../media/MobApplication_setting.png" alt-text="Mobile application option in the Settings menu.":::

1. Select **Mobile Application** from Settings and specify following information:

    | Setting | Description |
    | --- | --- |
    | Mobile Application Name | You can specify your Instance name, this name will be used for rendering splash screen (Android), Start menu item (Windows) |
    | Mobile Application Short Name | This will be used to generate the App icon name on the device app tray. You can mention a shorter acronym of your instance name. |
    | Application Background Color | This setting will be used for rendering Splash screen (Android) |
    | Application Logo (512 px by 512 px) | The logo must be 512x512 pixels, MCT uses this image to render Splash screen, Start menu, App Launcher item for your PWA.  |

### Installing PWA on your Desktop and Mobile Device

1. Once the [Installation Requirements](#installation-requirements-for-pwa-mobile-application) for PWA are satisfied, as you login to your CT instance you will see an icon on the search bar of your browser indicating PWA app is available for installation.

    :::image type="content" source="../../media/InstallPWA.png" alt-text="Installing PWA for web app.":::

1. Users can now install the PWA which renders your webapp as a native application.

1. After successful installation, you can choose options to allow the app to pin to taskbar, pin to start, create a Desktop shortcut as per your requirement.

    :::image type="content" source="../../media/PWA_installoptions.png" alt-text="Installation options for PWA.":::

1. For mobile devices (Android), users can install PWA by clicking on the prompt (add to home screen banner) that they receive while browsing your CT instance or selecting ‘install app’ from the browser options.

    :::image type="content" source="../../media/Screenshot_20210930-161736_Chrome (3).jpg" alt-text="Instaling PWA on a phone.":::

> [!NOTE]
> **Devices & Browser Compatibility:**
>
> * The PWA flow works as expected when using chromium-based browsers such as Microsoft Edge, Google Chrome.
>
> * For Firefox in desktop, the PWA install icon will not be seen on the URL bar, however the [service workers](https://developers.google.com/web/fundamentals/primers/service-workers) will be installed. In Mobile Firefox, you will see the **Add to home screen** option that can install PWA.
>
> * Safari on iOS doesn’t support the **Add to home screen** banner, however the option is visible in the browser menu. You might notice some inconsistencies with PWA on iOS.

### Generate Android App Bundle using PWA Builder

As you enabled the PWA, in the backend there will be a [service worker](https://developers.google.com/web/fundamentals/primers/service-workers) and a [web manifest](https://web.dev/add-manifest/) added, through which you can build a native Android application that can be bundled to be uploaded to your play store. We recommend using [**PWABuilder**](https://www.pwabuilder.com/) an online GUI tool that can generate APK & AAB files for your instance.

#### Prerequisites

Raise a [**ticket**](https://sangamhelpdesk.microsoftcrmportals.com/SignIn?ReturnUrl=%2Fsupport%2Fcreate-case%2F) with the CT support team requesting KeyStore file **if you want to have an update for your existing mobile application.**

#### Part 1: Steps to Generate Android App Bundle

1. Open [**PWABuilder**](https://www.pwabuilder.com/)

1. In the text box on the homepage, enter the URL (eg: contosolearning.azurewebsites.net) for your CT instance and select **Start**. In the backend PWABuilder will verify if you have a service worker and manifest available for your PWA.

    :::image type="content" source="../../media/PWA_android.png" alt-text="PWA Android insert web address..":::

1. Select **Next** on the PWA’s report card page, a score of 130 and above indicates that you have met requirements by PWABuilder.

    :::image type="content" source="../../media/PWA_android2.png" alt-text="Image showing PWA Score.":::

1. You will be redirected to a page where you can generate an Android App bundle. Select **Store package** to the right of the Android section.

    :::image type="content" source="../../media/PWA_android3.png" alt-text="PWA Build Store Package.":::

1. In the **Android App Options** window:

    1. If you want to update an existing application then enter the [**Package ID**](https://developers.google.com/android/management/apps#install_apps) of your previously published android app.

    1. If creating the application for first time, you can choose to leave it with the pre-populated ID.

    1. Provide the App name and Launcher name for your application. **If creating application for the first time, then you can proceeed to Step 6 - Generating your app bundle**

    1. Select **All Settings** and increment your App version and App Version Code by 1 from the version of your existing app, if creating the app for first time do not increment the value.

        :::image type="content" source="../../media/PWA_migration.png" alt-text="PWA migration options.":::

    1. Scroll to **Signing Key**, choose ‘Use Mine’ and upload the key store file that you received from CT support team.

        :::image type="content" source="../../media/PWA_Existingapp.png" alt-text="Installing existing PWA app":::

    1. Download your application bundle.

1. Finish the process by running a script with steps as mentioned in this [document](https://github.com/MicrosoftDocs/microsoft-community-training/files/8222196/PWA.Migration.docx) that will allow you for [Digital Asset linking](https://developers.google.com/digital-asset-links/v1/getting-started).

> [!NOTE]
>
> 1. **Difference between installing PWA from browser and installing from Play Store?**
>    * There will be no difference in learning experience however, with Play Store you can have access to analytics and the ability to choose who can download the application. As Play Store certifies the application, it is more secure.
>
> 2. **Advantages of PWA over a Native application**
>    * PWAs are light weight applications when compared to Native applications, therefore they occupy less space (typically less than 10 MB).
>
>    * Easy to maintain, as PWA is essentially a browser page running as a Native application it is at-par with updates released for the web application.
>
>    * Any updates sent to he web application would be automatically synced with your PWA.
> 3. **Things to remember when migrating from Native application to PWA**
>    * If you have updated your native application in Play Store with PWA then the app is automatically updated to users based on their device settings, otherwise user needs to manually update the application from Play Store.
>
>    * Downloaded content will not be migrated from Native to PWA application. Learner needs to download the content again for offline consumption.

<!--
5. If you are creating an Android App for your instance for the first time (if you have an existing app and wanted it updated instead of creating new application, then proceed to step 6)

    * Provide App name and Launcher name for your application and click Generate.

        :::image type="content" source="../../media/PWA_android4.png" alt-text="PWAnewgenerate":::

6. If you have an existing android application published to play store and need to update it:

    * Log a [**help desk**](https://sangamhelpdesk.microsoftcrmportals.com/SignIn?ReturnUrl=%2Fsupport%2Fcreate-case%2F) ticket requesting a key store file for your previous android application.
    * In the “Google Play store Options” mention [**Package ID**](https://developers.google.com/android/management/apps#install_apps) of your previously published android application.
    * Click on “All Settings” and increment your App version and App Version Code by 1 from your existing app version.
    * Scroll to “Signing Key”, choose ‘Use Mine’ and upload the key store file that you received from MCT support team.

        :::image type="content" source="../../media/PWA_Existingapp.png" alt-text="PWA exixting app":::

7. Download your Application Bundle.

#### Part 2: Digital Asset Linking

Through Digital Asset Linking a website can declare that it is associated with a specific Android app, or it can declare that it wants to share user credentials with another website.

This links protocol & API and enable an app or website to make public, verifiable statements about other apps or websites. [**Learn More about Digital Asset Linking**](https://developers.google.com/digital-asset-links/v1/getting-started)

##### Steps to Digital Asset Linking

1. Navigate to `<your-website-name>.scm.azurewebsites.net`
(If your instance url is contosolearning.azurewebsites.net then ‘contosolearning’ is your website name) and enter credentials which you used for azure portal when deploying MCT.

2. From Navigation bar on top, click on 'DebugConsole' and from dropdown click 'CMD'.

    :::image type="content" source="../../media/Digitalassetlinkscmd.png" alt-text="DALCMD":::

3. From the table of contents, navigate to `site/wwwroot/.well-known`
(create folder “.well-known” if it is not present )

    :::image type="content" source="../../media/Digitalassetlinkssite.png" alt-text="DLASite":::

4. Drag and drop the `assetlinks.json` file (present in app bundle that you downloaded from PWAbuilder) in `site/wwwroot/.well-known` path.

    :::image type="content" source="../../media/Digitalassetlinksfinal.png" alt-text="DLAFinal":::

5. you can now [upload](https://support.google.com/googleplay/android-developer/answer/9859152?hl=en&ref_topic=7072031&visit_id=637708323322373803-2268564924&rd=1) your AAB to your Play Store.

-->

## Option 2: Requesting a mobile app AAB from the platform team

1. Visit the [**Community Training Helpdesk**](https://go.microsoft.com/fwlink/?linkid=2104630).
![Image showing Community Training HelpDesk homepage.](../../media/image%2876%29.png)

1. Select **Sign in** on the top-left corner of the homepage. Use your Azure AD or Social accounts to register and sign in.

1. Select **Create Support Ticket** and enter the following values:

    | Field       | Description                 |
    | ----------- | ----------------------------|
    | Title       |Enter "Request a Mobile App" |
    | Type        |Select "Request”             |
    | Subject     |Select "Mobile App"          |
    | Description |Check Step 4                 |

1. Provide the following information in the **Description** section of the **Support Ticket** -
    * Application Color Code (HEX format) - This color will be used in the mobile app as shown in the image at the start of the article. For eg, Orange
    * Portal URL - This is the instance of the platform for which the mobile app will be generated
    * Application Name - This is the name of the mobile app when published on playStore
    * Supported Languages - This is the list of languages supported in the mobile app

    > [!NOTE]
    >**Sample Description Content**
    >
    > 1. Application Color Code - #FFA500
    > 2. Portal URL - <https://contoso.azurefd.net/>
    > 3. Application Name - Contoso Learning Center  
    > 4. Language - English, Spanish, Telugu

1. Create a zip file with the following assets and attach it to the form.
    * App icon with the following dimensions (in pixels): 24x24, 36x36, 48x48, 72x72, 96x96, 144x144. The icon on the phone screen used to launch the app is the app icon. **App icon must have transparent background**.
    * Splash screen logo with the following dimensions (in pixels): 150x150, 225x225, 300x300, 450x450. The screen that appears when the app opens is the splash screen, shown below.

        ![Image of Mobile phone.](../../media/image%2821%29.png)
    * Here is sample zip file for reference: [MobileApp_Assets.zip](https://github.com/MicrosoftDocs/microsoft-community-training/files/6968287/MobileApp_Assets.zip)

1. That's all! You’ll receive a link on your contact email address to download the mobile AAB & APK files from our support team (in 4-5 business days).

### Steps to publish your mobile app to the playStore

#### Before you begin

1. Follow the steps above for creating your mobile app and ensure you have received the download link to your Mobile APK & AAB files from Microsoft.

1. We provide two files i.e., the APK & AAB file, you can use the APK file to test your app before publishing then use the AAB bundle to publish which contains support to multiple android versions and supports 32 & 64 bit.

1. [**Sign up on Google Play**](https://play.google.com/apps/publish/signup/) console in order to publish your app on Google PlayStore.  

#### Steps to publish your mobile app

1. Download the AAB file to your computer from the email you received from our support team, after creating your Mobile App.

1. Follow the instructions given [**here**](https://support.google.com/googleplay/android-developer/answer/113469?hl=en&ref_topic=7072031) to upload and publish your APK on the Google Play Store.

    > [!NOTE]
    > The steps to publish AAB files are similar to the steps used in publishing an APK file.

1. Once you have uploaded and published your AAB file, navigate to **Settings -> Users & Permissions**.
![Image of Google Play Console](../../media/image%2878%29.png)

1. Select “**Invite New User**”.
![Image of Users & permissions.](../../media/image%2885%29.png)

1. Enter the email address as **sangamdeployments@gmail.com**.
![Add user options.](../../media/image%2886%29.png)

1. Leave Access Expiry date as **Never**.

1. Select the role as **Release Manager**.

1. Choose your mobile app from **Choose an App** dropdown.

1. Select **Send Invitation**.

1. **Important**: Send an email note to the Microsoft Community Training team that the permission has been shared. You can reply to the  email chain in which AAB file was shared with you.

> [!NOTE]
>
> If there is any change/update in login type configuration on your instance then the mobile application needs to be updated.

> [!NOTE]
> * To use office files in PWA offline, we will be providing files to publish the application in Google Play store.
> * Users can request support by raising a ticket [**Microsoft Community Training Helpdesk**](https://go.microsoft.com/fwlink/?linkid=2104630).
