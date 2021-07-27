---
title: Platform Setup and Installation
original-url: https://docs.microsoftcommunitytraining.com/docs/faqs-installation-and-setup
author: nikotha
ms.author: nikotha
description: There are a number of prerequisites such as having a valid subscription type, access policy etc. before you can get started with the platform installation and setup.
ms.prod: azure
---

# Platform Setup and Installation

## Marketplace Deployment

### What are the prerequisites to deploy Microsoft Community Training platform?	
There are a number of prerequisites such as having a valid subscription type, access policy etc. before you can get started with the platform installation and setup. 

To know the list of all the prerequisites **[see this article](../infrastructure-management/install-your-platform-instance/3_installation-guide-detailed-steps.md#before-you-begin)**.

### How to create an Microsoft Azure subscription?
You can create a new Azure subscription by visiting [**this link**](https://azure.microsoft.com/en-in/pricing/purchase-options/pay-as-you-go/). 

### Which devices or platforms is Microsoft Community Training available on? 
Microsoft Community Training is an end-point agnostic solution which allows learners to consume learning content hosted on the platform in the following manner: 

1.	Standalone web and mobile application. [**Click here**](../learner-experience/2_web-app.md) for more details.

    | Device Platform | How to access the portal? |
    | --- | --- |
    | PC (Windows or Mac) | Use browser to access the web app |
    | Android | Use the native app or use mobile browser to access the web app|
    |iOS| 	Use mobile browser to access the web app|  

2.	Inside Microsoft Teams. [**Click here**](../infrastructure-management/install-your-platform-instance/7_create-teams-app-for-your-training-portal.md) for more details.

3.	Custom end point i.e. integrate the learner experience inside your own application. Refer **[this](../infrastructure-management/install-your-platform-instance/6_apis.md)** article to learn more.

### How do I enable Single-Sign-On (SSO) for Microsoft Community Training platform? In other words, I wanted my learners to use their existing credentials for logging into the Microsoft Community Training portal?	
Currently, Microsoft Community Training supports SSO out of box for scenarios where users are managed via Azure AD or customers are using Azure AD B2C for authentication in their existing system.

However, the platform supports SSO with any OAuth 2.0, OpenID Connect or SAML based authentication provider. To enable SSO in such scenarios, please contact us via **[Helpdesk](https://go.microsoft.com/fwlink/?linkid=2104630)** and leave your requirements in the ticket description.

### Are there REST APIs available for integration? How can organization integrate Microsoft Community Training with their internal systems and existing application?
Microsoft Community Training platform provides REST APIs to help organization build custom experience, integrate the platform with their existing system or consume training content via custom endpoints.

For e.g. Organization can use Microsoft Flow, Logic Apps, etc. to integrate the platform with their HRMS and CRM systems to import/sync users to the platform or export course progress and completion status.  

For more information, please  **[refer this article](../infrastructure-management/install-your-platform-instance/6_apis.md)** .

### I am not able to deploy the application from the Azure marketplace. 
The [**platform deployment**](../infrastructure-management/install-your-platform-instance/2_installation-overview.md) can fail for multiple reasons such as incorrect details entered during setup, invalid subscription, azure services not available in the chosen data center and many more.  

Refer to the [**troubleshooting guide**](../infrastructure-management/install-your-platform-instance/9_troubleshooting.md) and see how to fix the common deployment error. 

If you didn't find the solution in the troubleshooting guide, please contact us via [**helpdesk**](https://go.microsoft.com/fwlink/?linkid=2104630).

### How many languages are supported by Microsoft Community Training?
At present Microsoft Community Training currently supports 28 languages which are Albanian, Arabic, Bengali, Chinese (Simplified), Chinese (Traditional, Dutch, English, Finnish, French, Hindi, Kinyarwanda, Kurdish, Lao, Lithuanian, Malay, Oriya, Portuguese, Serbian (Cyrillic), Somali, Spanish, Swedish, Swedish, Tajik, Telugu, Tetum, Thai, Ukranian, Vietnamese.

For more information, [**refer here**](../settings/7_customize-languages-for-the-learners-on-the-platform.md). 

### Can I create and maintain more than one instance of Microsoft Community Training for my organization?
Yes, customers can create multiple instances of Microsoft Community Training platform and each of them can be configured and managed independently.

### Does Microsoft Community Training platform support multi-tenancy? 
Currently, there is no multi-tenant support for Microsoft Community Training. Each instance of Microsoft Community Training platform is separate (i.e. no sharing of data and compute resources) and deployed on customer’s own Azure subscription. 

For more details, please the [**installation overview article**](../infrastructure-management/install-your-platform-instance/2_installation-overview.md). 

### What kind of technical capability is required to deploy and setup Microsoft Community Training Platform? Do I need a implementation partner to help with the platform configuration and setup implementation?
Microsoft community training is designed to be easily deployed and managed by the customers with minimal IT overhead. Customers can [**set up the platform**](../infrastructure-management/install-your-platform-instance/3_installation-guide-detailed-steps.md) on their Azure subscription on their own in a few simple clicks. 

Your IT admin or cloud administrator responsible for managing the [**Azure Portal**](https://portal.azure.com/) can deploy the platform on your Azure subscription. Once the platform is deployed, the training manager can [**start configuring the platform and upload training content**](../get-started/step-by-step-configuration-guide.md). No coding required. 

You do not need a technical team or a developer  to implement the platform unless you want to extend platform capabilities using our APIs or integrate the platform with your existing system.

### Do you have partners behind the implementation Microsoft community training solution? Which type of partners?
We are building up a community of learning partners who can assist the organizations in implementing and configuring the platform for their training scenarios. 

For further information on the partner ecosystem, please reach out to us [**via help desk**](https://go.microsoft.com/fwlink/?linkid=2104630).

### What should I do if I no longer need the platform? How can I download the training content and data before terminating?
Since there is no licensing fee and customers are only paying for the Azure consumptions, you just need to go ahead and delete the resource group where the platform is deployed.  

Before delete the resource group, we recommend you to create a copy of content and user data from the azure portal.

#### How are platform updates pushed to my platform instance when new features are rolled out by Microsoft?
When new features and security updates are available, Microsoft will be pushing the updates to the web portal and mobile app at a regular cadence without any manual intervention from the customers. Customers will be notified via e-mail with regards to the update. We will also be constantly publishing new rollouts on [**our documentation portal**](../whats-new-in-microsoft-community-training/2_whats-new-in-microsoft-community-training.md). 

### How can I change or reset by Azure SQL Database password for the application?

You can reset your database password by visiting the Azure SQL Database resource in Azure Portal created during installation.  

If you need further assistance, reach out to us [**via helpdesk**](https://go.microsoft.com/fwlink/?linkid=2104630).


## Teams Integration

### How does Microsoft Community Training integration with Microsoft Teams work?
Organization can enable Microsoft Teams as an end point for the Microsoft Community Training platform. Once it is enabled, learners can consume training content within the Microsoft Teams (Web, Desktop and Mobile) and no separate application is needed. 

In case of Microsoft Team's setup, all the existing groups/teams will be automatically imported and synced to the Microsoft Community Training platform to make it easy for administrators and teams owners to assign courses and track completion. 

For more details, please visit [**teams integration page**](https://communitytraining.microsoft.com/products/teams/).

### How to enable Microsoft Community Training for Learning inside Microsoft teams? 
Microsoft Community Training allows organizations to enable self-paced learning inside Microsoft Teams across web, mobile and desktop app. 

For more details, visit [**our website**](https://communitytraining.microsoft.com/teams/) to know how Microsoft Community Training platform integrates with Microsoft Teams, visit our website. 

In case you already have instance deployed, follow this steps to create the [**Teams app for your training instance**](../infrastructure-management/install-your-platform-instance/7_create-teams-app-for-your-training-portal.md). 

## Mobile App

### How can I request for the mobile app? Who publishes the mobile app?
Once your platform instance is deployed, you can request for the mobile app through our help desk. The mobile app must be published from by customers using their own Google Play Store. For more information, [**refer here**](../infrastructure-management/install-your-platform-instance/5_create-publish-mobile-app.md).

Please note: Microsoft Community Training  comes only with a native app for Android platform. For iOS, we recommend to use mobile browser to access the web app or convert the web app into a native iOS app using [**online tool such as GoNative**](https://gonative.io/).

### What is the minimum device specification  required for installing the Android application?
Here is the minimal device configuration needed for the Microsoft Community Training mobile app to run:
1.	Android Version: Android 5.0 and up
2.	App Size: ~ 30 MB
3.	Storage: Minimum 100 MB free space
4.	RAM: 1 GB
5.	CPU Speed: 1.2 GHz

### Is there an app available for IOS platform? 
Currently, we do not have a native application for the IOS platform, but it is on our product roadmap. 

In the meantime, as a workaround, you can convert our existing mobile- optimized web app into  an iOS app using [**GoNative**](https://gonative.io/).

### Is there an app available for the Windows platform? 
There is no app available for windows platform, you can use any web browsers such as Microsoft Edge or Google Chrome to access the web portal.

### How to create a google store account for uploading android app? 
If you have a google account, the same can be used to login with google store. For further details [**refer here**](https://support.google.com/googleplay/answer/2521798?hl=en).

### How to upload my Android app on the Google playstore?
[**Here**](../infrastructure-management/install-your-platform-instance/5_create-publish-mobile-app.md) is a step by step guide on publishing your mobile application.  

If you require further assistance, contact us [**via helpdesk**](https://go.microsoft.com/fwlink/?linkid=2104630).