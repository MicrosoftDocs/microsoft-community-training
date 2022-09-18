---
title: Platform Extensibility & Integration
original-url: https://docs.microsoftcommunitytraining.com/docs/custom-integration
author: nikotha
ms.author: nikotha
description: Microsoft Community Training do not inbuilt support for live training sessions.
ms.prod: learning-azure
---

# Platform Extensibility & Integration

## Live meetings and webinars

### Will I be able to conduct live training sessions using Microsoft Community Training platform?

Microsoft Community Training do not inbuilt support for live training sessions. However, we recommend customers use third-party applications such as Microsoft teams, Zoom, etc. and embed the meeting link as lesson in the course.

Post session, to mark the completion, you can give learners quizzes which they can attempt in order to validate their training progress and achieve certificate.

![Achieve certificate](../media/image%28323%29.png)

Also, you can replace the live training link with the actual recording of the training session on the platform for people to view and consume the content later.

For more details, please reach out to us [**via HelpDesk**](https://go.microsoft.com/fwlink/?linkid=2104630).

### Can I integrate Cisco WebEx, Microsoft Teams, Zoom etc. with Microsoft Community Training for live sessions?

Customers can have the meeting or webinar links added to the Microsoft Community Training platform as external URLs which will allow learners to simply redirect to the respective application such as Microsoft Teams, Zoom, Google Meet, etc. and attend these sessions.

Having said that, for Microsoft Teams, the platform can be embedded as a tab where users can easily access the course contents within the team's environment.

For more information on MS Teams integration, [**refer here**](https://communitytraining.microsoft.com/teams/).

### Will I be able to deliver webinar using this platform?

Microsoft Community Training doesn’t provide inbuilt functionalities to host webinars but customers can add the meeting or webinar URLs as an external lesson on our platform. This will allow users to easily redirect to the respective application hosting the webinar and attend the sessions.

## Integration with external system

### Are there any out of the box integration with existing HRMS, CRM, etc. application available in the market?

Microsoft Community Training doesn't come with any out of box integrations with 3rd party HRMS & CRM applications. However, customers and partners can use our APIs to integrate with other systems.

### Can I embed or integrate Microsoft Community Training to our existing mobile application?

Yes, Customers can integrate Microsoft Community Training platform to their existing mobile application.  
For example, you can add a 'Training' button on the home screen and clicking on the button will launch the Microsoft Community Training platform inside the existing app as a web view.

#### Embedding webview of MCT in your existing mobile app

Steps to embed webview of MCT in your custom mobile application in case you have a B2C based [social login](../infrastructure-management/install-your-platform-instance/configure-login-social-work-school-account.md#social-account-or-email-based-authentication) instance.

1. Set the following [**configurations**](../settings/configurations-on-the-training-platform.md#configurations-on-the-training-platform) in the App Service Configuration, if the secondary navigation bar is needed:
    * Features:Navbar:EnableCustomNavbar => true
    * Features:Navbar:EnableProfile => false

2. Set the following feature [**configurations**](../settings/configurations-on-the-training-platform.md#configurations-on-the-training-platform) to true only if that specific functionality needs to be provided, else set it false explicitly.

    * Features:Navbar:EnableLogo
    * Features:Navbar:EnableSearch
    * Features:Navbar:EnableLanguageSelection
    * Features:Navbar:EnableCustomProfile

3. In your Android Application, include a WebView element in the activity where you want to show the MCT application. Set the source of the webview as the URL
    * `https://<DOMAIN>.azurewebsites.net/home/defaultsignin?whr=uri%3aB2C&referrer=basedomain&domain_hint=DOMAIN`
    * Where Domain is name of your instance. eg: if your instance url is `https://contoso.azurewebsites.net` then replace DOMAIN with 'contoso'

Alternatively, you can also use [**REST APIs**](../infrastructure-management/install-your-platform-instance/apis.md) to create your own learning experience within your existing app/service.

Please  contact us [**via HelpDesk**](https://go.microsoft.com/fwlink/?linkid=2104630) to get help on the integration.

### Identity Mapping between external portal to MCT (via ADB2C)

MCT allows you to map identity with external portal i.e., if you have an external portal where you want to authenticate users (via email, User name, local IDP) and then have them redirected to MCT. This flow can be acheived via setting up custom policies in your B2C tenant as mentioned in steps below:

* Setup [ADB2C tenant](https://learn.microsoft.com/azure/active-directory-b2c/tutorial-create-tenant)
* You need to set custom policies in your ADB2C (we are sharing [sample codes](https://github.com/MicrosoftDocs/microsoft-community-training/files/9594393/Sample.NCS.login.usecase.zip) for your reference) please make necessary changes based on your login requirements 
* **ADB2C Policies** 
   * The sign-in page has the option to login only via custom id
   * Upload the custom files in the order mentioned [here](https://learn.microsoft.com/azure/active-directory-b2c/tutorial-create-user-flows?pivots=b2c-custom-policy#upload-the-policies)
* **Function app**
   * The sample code has feature of updating user’s FirstName and LastName via Service2Service auth on user’s login.
   * This implies that MCT will always have the same FirstName and LastName of the user as present in your external portal, and it will be updated automatically whenever the user logs in.
   * Please update the required params in code following the documentation of S2S here Service to [Service Authentication](https://learn.microsoft.com/azure/industry/training-services/microsoft-community-training/rest-api-management/service-to-service-authentication) and then publish the function app.
* Here is a [sample recording](https://microsoft.sharepoint.com/:v:/t/BuildingSangam/EQZ7Z2zY7zdAuQY5leNYmwgBO7-ezdGFTUngJWdz70wmsA?e=YIITyN) for your reference. 

### Does Microsoft Community Training provide any job matching capabilities? How can I integrate Microsoft community training with external job portals?

Microsoft Community Training does not come with any job matching capabilities out of the box. However, the platform can be integrated with external job portals to push learner progress and course certificate using the REST APIs.

For more information, please reach out to us [**via HelpDesk**](https://go.microsoft.com/fwlink/?linkid=2104630) on how to integrate the platform with external application.

### Is e-commerce and payment integration available on the platform?Can I use Microsoft Community Training platform to sell courses directly to end users?

E-Commerce and Payment  functionalities are not available on our platform out of the box. However, customers can build these functions using our APIs.

Example: You will be able to integrate our APIs with your catalog page, whenever someone purchases a course, the learner can be enrolled to the respective courses.

For more details, reach out to us [**via HelpDesk**](https://go.microsoft.com/fwlink/?linkid=2104630).

## Alerts and reminders

### How to trigger periodic reminders for learners via email or SMS?

Whenever a new course is assigned or updated to the users by the administrator, an in-app notification is sent which can be viewed by users under the Notifications section identified by the  icon.

Periodic email or SMS alerts to users such as information on new course addition or course completion reminders can be sent by integrating our platform with external services like Logic Apps, Microsoft Flow, etc.

For Example: Customers can leverage our APIs and use 3rd party tools to extend platform capability and send emails to the learners as required. It can be welcome emails when they first login to the platform or it can be update email  when a new course is assign to them.

For more details, reach out to us [**via HelpDesk**](https://go.microsoft.com/fwlink/?linkid=2104630).

### Is there a feature to create additional notifications through emails?

Microsoft community training does not have this function out of the box. However, customers can achieve this by using our APIs.

For more details, reach out to us [**via HelpDesk**](https://go.microsoft.com/fwlink/?linkid=2104630).

### Can the administrators share deep link of courses with the learners?

Yes, the administrators can obtain the deep link of each course on the MCT portal and share the same with the learners. To obtain the deep link of a course, the administrators need to follow the below steps:

1. Go the Administrator view of your MCT instance.
2. Go to the course for which you want to obtain the deep link.
3. Click on "**View as Learner**" icon on the top-right pane of the course.

   ![Course options](https://user-images.githubusercontent.com/87796184/158620704-7b4044e3-f46a-4786-80c6-1fb187c4ef8f.PNG)
4. On this learner's view, copy the URL that is displayed on the browser.

This link obtained above is the deep link of the course and can be shared with the learners.

## Rest APIs

### Are there any Rest APIs available for integration with existing systems or applications?

Microsoft Community Training platform provides REST APIs to help organization integrate the platform with the existing system and consume training via custom endpoints such as your own mobile app or website.

For more information, [**refer here**](../infrastructure-management/install-your-platform-instance/apis.md).

### How can I sync / import users data from my existing system to Microsoft Community Training?

Contact us via **[HelpDesk](https://go.microsoft.com/fwlink/?linkid=2104630)** and leave your requirements in the ticket description. Our support team will reach out to you in 2-3 business days and help you with your syncing/importing users data from your existing system to your portal.
