---
title: Create and Publish your Mobile App
original-url: https://docs.microsoftcommunitytraining.com/docs/create-publish-mobile-app
---

# Create and Publish your Mobile App

In this article, we will learn about how to create and publish the Mobile App (available only for Android platform) for your training portal.  

![image77.png](../../media/image%2877%29.png)
    
For setting up the mobile app for your training portal, you will need to request for a mobile APP (APK) from Microsoft and setup your Google Playstore account.  You’ll also be required to share release manager access with Microsoft to enable automatic updates to the mobile app. 

## Steps to create Mobile App for the training portal

1.	Visit [**Microsoft Community Traininig Helpdesk**](https://go.microsoft.com/fwlink/?linkid=2104630).
![image76.png](../../media/image%2876%29.png)

2.	Click on **Sign in** on the top-left corner of the homepage. Use your Azure AD or Social accounts to register and sign in.

3.	Click on **Create Support Ticket** and enter the following values:
    | Field	| Description |
    |---|---|
    | Title |	Enter "Request a Mobile App" |
    |Type |	Select "Request” |
    |Subject | Select "Mobile App" |
    |Description |Check Step 4 |
 
 4. Provide the following information in the **Description** section of the **Support Ticket** -
    * Application Color Code (HEX format) - This color will be used in the mobile app as shown in the image at the start of the article. For eg, Orange 
    * Portal URL - This is the instance of the platform for which the mobile app will be generated 
    * Application Name - This is the name of the mobile app when published on playstore
    * Supported Languages - This is the list of languages supported in the mobile app
:::(Info) (Sample Description Content)
1. Application Color Code - #FFA500
2. Portal URL - https://contoso.azurefd.net/ 
3.  Application Name - Contoso Learning Center  
4.  Language - English, Spanish, Telugu

:::

 5. Create a zip file with the following assets and attach it to the form. 
    * App icon with the following dimensions (in pixels): 24x24, 36x36, 48x48, 72x72, 96x96, 144x144. The icon on the phone screen used to launch the app is the app icon. **App icon must have transparent background**.
    * Splash screen logo with the following dimensions (in pixels): 150x150, 225x225, 300x300, 450x450. The screen that appears when the app opens is the splash screen, shown below. 
    ![image21.png](../../media/image%2821%29.png)
    * Here is sample zip file for reference.
    @(Embed)(../../media/mobile-assets.zip)

6. That's all! You’ll receive a link on your contact email address to download the mobile AAB & APK files from our support team (in 4-5 business days).

## Steps to publish your mobile app to the playstore

### Before you begin

1.	Follow the steps above for creating your mobile app and ensure you have received the download link to your Mobile APK & AAB files from Microsoft.


2.	We provide two files i.e., the APK & AAB file, you can use the APK file to test your app before publishing and to publish you may use the AAB bundle which contains support to multiple android versions and supports 32 & 64 bit.


3.	[**Sign up on Google Play**](https://play.google.com/apps/publish/signup/) console in order to publish your app on  Google Playstore.  


### Steps to publish your mobile app

1.	Download the AAB file to your computer from the email you received from our support team, after creating your Mobile App.

2.	Follow the instructions given [**here**](https://support.google.com/googleplay/android-developer/answer/113469?hl=en&ref_topic=7072031) to upload and publish your APK on the Google Play Store.

:::(Info) (Please note: )
The steps to publish AAB files are similar to the steps used in publishing an APK file.
:::

3.	Once you have uploaded and published your AAB file, navigate to **Settings -> Users & Permissions**. 
![image78.png](../../media/image%2878%29.png){height="" width="300"}

4.	Click on “**Invite New User**”. 
![image85.png](../../media/image%2885%29.png){height="" width="600"}

5.	Enter the email address as **sangamdeployments@gmail.com**.
![image86.png](../../media/image%2886%29.png){height="" width="600"}

6.	Leave Access Expiry date as **Never**.

7.	Select the role as **Release Manager**.

8.	Choose your mobile app from **Choose an App** dropdown. 

9.	Click on **Send Invitation**. 

10. **Important**: Send an email note to MCT team that the permission has been shared. You can reply to the  email chain in which AAB file was shared with you. 
