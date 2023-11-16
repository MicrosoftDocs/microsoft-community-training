---
title: Platform Setup and Installation
original-url: https://docs.microsoftcommunitytraining.com/docs/faqs-installation-and-setup
author: Charan Brahmandam
ms.author: cbms03
description: There are a number of prerequisites such as having a valid subscription type, access policy etc. before you can get started with the platform installation and setup.
ms.prod: learning-azure
---

# Platform Setup and Installation

### What are the prerequisites to deploy the Community Training?

There are a number of prerequisites such as having a valid subscription type, access policy, and more you need to consider before you can get started with the platform installation and setup.

To know the list of all the prerequisites [**see this article**](../infrastructure-management/install-your-platform-instance/detailed-step-by-step-installation-guide.md#before-you-begin).

### How do I create a Microsoft Azure subscription?

You can create a new Azure subscription by visiting [**this link**](https://azure.microsoft.com/pricing/purchase-options/pay-as-you-go/).

### Which devices or platforms is Community Training available on?

Community Training is an endpoint-agnostic solution that allows learners to consume learning content hosted on the platform in the following manner:

1. For standalone web and mobile applications [**Click here**](../learner-experience/web-app.md) for more details.

    | Device Platform | How to access the portal? |
    | --- | --- |
    | PC (Windows or Mac) | Use browser to access the web app |
    | Android | Use the PWA app or use mobile browser to access the web app|
    |iOS| Use mobile browser to access the web app|  

2. For inside Microsoft Teams [**Click here**](../infrastructure-management/install-your-platform-instance/create-teams-app-for-your-training-portal.md) for more details.

### How do I enable Single-Sign-On (SSO) for Community Training? In other words, I wanted my learners to use their existing credentials for logging into the Community Training portal.

Currently, Community Training supports SSO out-of-box for scenarios where users are managed via Azure AD or customers are using Azure AD B2C for authentication in their existing system.

However, the platform supports SSO with any OAuth 2.0, OpenID Connect, or SAML-based authentication provider. To enable SSO in such scenarios, please contact us via **[Helpdesk](https://go.microsoft.com/fwlink/?linkid=2104630)** and leave your requirements in the ticket description.

### Are there REST APIs available for integration? How can organizations integrate Community Training with their internal systems and existing applications?

The REST APIs are under development and will be made available soon, broadly expanding the capabilites of the Community Training.

### How many languages are supported by Community Training?

At present Community Training supports 60+ languages.

*Afrikaans (South Africa), *Amharic (Ethiopia), *Arabic (Saudi Arabia), *Assamese (India), *Bulgarian (Bulgaria)Bengali (India), *Bosnian (Latin,  Bosnia & Herzegovina), *German (Germany), *English (United States), *Spanish (Spain,  International Sort), *Finnish (Finland), *Filipino (Philippines), *French (France), *Gujarati (India), *Hebrew (Israel), *Hindi (India), *Croatian (Croatia), *Hungarian (Hungary), *Indonesian (Indonesia), *Italian (Italy), *Japanese (Japan), *Kazakh (Kazakhstan), *Khmer (Cambodia), *Kannada (India), *Lao (Laos), *Lithuanian (Lithuania), *Malayalam (India), *Marathi (India), *Malay (Malaysia), *Dutch (Netherlands), *Odia (India), *Punjabi (India), *Polish (Poland), *Portuguese (Brazil), *Romanian (Romania), *Russian (Russia), *Slovak (Slovakia), *Albanian (Albania), *Serbian (Cyrillic,  Serbia), *Serbian (Cyrillic,  Bosnia and Herzegovina), *Serbian (Latin,  Serbia), *Swedish (Sweden), *Tamil (India), *Telugu (India), *Thai (Thailand), *Ukrainian (Ukraine), *Urdu (Pakistan), *Vietnamese (Vietnam)Chinese (Simplified,  China), *Chinese (Traditional,  Taiwan), *Uzbek (Latin,  Uzbekistan), *Welsh (United Kingdom), *Kinyarwanda, Kiswahili (Kenya), *Kurdish, *Kyrgyz, *Pashto (Afghanistan), *Persian (Afghanistan), *Portuguese (Mozambique), *Romansh, Sindhi, Somali, Tajik, Tetum

For more information, [**go here**](../settings/customize-languages-for-the-learners-on-the-platform.md).

### Can I create and maintain more than one instance of Community Training for my organization?

Yes, customers can create multiple instances of Community Training,  and each of them can be configured and managed independently.

### Does Community Training support multi-tenancy?

Currently, there is no multi-tenant support for Community Training. Each instance of the platform is separate (i.e. no sharing of data and compute resources) and deployed on the customer’s own Azure subscription. You can use the Organizations feature for achieving this

<!--ADD ORG FEature link-->

For more details, please the [**installation overview article**](../infrastructure-management/install-your-platform-instance/installation-overview.md).

### What kind of technical capability is required to deploy and set up  Community Training? Do I need an implementation partner to help with the platform configuration and setup implementation?

Community Training is designed to be easily deployed and managed by the customers with minimal IT overhead. Customers can [**set up the platform**](../infrastructure-management/install-your-platform-instance/installation-guide-detailed-steps.md) on their Azure subscription on their own in a few simple clicks.

Your IT admin or cloud administrator responsible for managing the [**Azure Portal**](https://portal.azure.com/) can deploy the platform on your Azure subscription. Once the platform is deployed, the training manager can [**start configuring the platform and upload training content**](../get-started/step-by-step-configuration-guide.md). No coding is required.

You do not need a technical team or a developer to implement the platform.
<!-- unless you want to extend platform capabilities usingtheAPIs or integrate the platform with your existing system. HIDING UNTIL APIs are available-->

### Do you have partners behind the implementation of Community Training? Which type of partners?

We are building up a community of learning partners who can assist the organizations in implementing and configuring the platform for their training scenarios.

For further information on the partner ecosystem, please reach out to us [**via help desk**](https://go.microsoft.com/fwlink/?linkid=2104630).

### What should I do if I no longer need the platform? How can I download the training content and data before terminating?

You can delete the resource group where the platform is deployed.  

Before deleting the resource group, we recommend you create a copy of content and user data from the Azure portal.

#### How are platform updates pushed to my platform instance when new features are rolled out by Microsoft?

When new features and security updates are available, Microsoft will push the updates to the web portal and mobile app at a regular cadence without any manual intervention from the customers. Customers will be notified via e-mail with regards to the update. We will also be constantly publishing new rollouts on [**our documentation portal**](../whats-new-in-microsoft-community-training/whats-new-in-microsoft-community-training.md).


## Teams Integration

### How does Community Training integration with Microsoft Teams work?

Organizations can enable Microsoft Teams as an endpoint for the Community Training. Once it is enabled, learners can consume training content within Microsoft Teams (Web, Desktop, and Mobile) and no separate application is needed.

In the case of a Microsoft Team's setup, all the existing groups/teams will be automatically imported and synced to the Community Training to make it easy for administrators and Teams owners to assign courses and track completion.

For more details, please visit [**teams integration page**](https://communitytraining.microsoft.com/products/teams/).

### How do I enable Community Training for Learning inside Microsoft Teams?

Community Training allows organizations to enable self-paced learning inside Microsoft Teams across web, mobile, and desktop apps.

For more details, visit [**our website**](https://communitytraining.microsoft.com/teams/) to know how Community Training platform integrates with Microsoft Teams, visit the website.

In case you already have an instance deployed, follow these steps to create the [**Teams app for your training instance**](../infrastructure-management/install-your-platform-instance/create-teams-app-for-your-training-portal.md).

## Mobile App

### How can I request for the mobile app? Who publishes the mobile app?

Once your platform instance is deployed, you can request the mobile app through the help desk. The mobile app must be published by customers using their own Google Play Store. For more information, [**go here**](../infrastructure-management/install-your-platform-instance/create-publish-mobile-app.md).


### What is the minimum device specification required for installing the Android application?

Here is the minimal device configuration needed for the Community Training mobile app to run:

1. Android Version: Android 5.0 and up
2. App Size: ~ 30 MB
3. Storage: Minimum 100 MB free space
4. RAM: 1 GB
5. CPU Speed: 1.2 GHz

### Is there an app available for the IOS platform?

Currently, we do not have a native application for the IOS platform,however, the application can be accessed on the iOS devices by accessing via the browser.

<!-->
In the meantime, as a workaround, you can convert the existing mobile-optimized web app into an iOS app using [**GoNative**](https://gonative.io/).
-->
### Is there an app available for the Windows platform?

While there is no app available for the Windows platform, you can use any web browser such as Microsoft Edge or Google Chrome to access the web portal.

### How to create a Google Store account for uploading an Android app

If you have a Google account, it can be used to sign in with the Google Store. For further details [**go here**](https://support.google.com/googleplay/answer/2521798?hl=en).

### How to upload my Android app on the Google Play Store

[**Here**](../infrastructure-management/install-your-platform-instance/create-publish-mobile-app.md) is a step-by-step guide on publishing your mobile application.  

If you require further assistance, contact us [**via helpdesk**](https://go.microsoft.com/fwlink/?linkid=2104630).
