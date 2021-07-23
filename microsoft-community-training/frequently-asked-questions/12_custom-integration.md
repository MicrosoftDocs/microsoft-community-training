---
title: Platform Extensibility & Integration
original-url: https://docs.microsoftcommunitytraining.com/docs/custom-integration
author: nikotha
ms.author: nikotha
description: Microsoft Community Training do not inbuilt support for live training sessions.
ms.prod: azure
---

# Platform Extensibility & Integration

## Live meetings and webinars 

### Will I be able to conduct live training sessions using Microsoft Community Training platform?
Microsoft Community Training do not inbuilt support for live training sessions. However, we recommend customers use third-party applications such as Microsoft teams, Zoom, etc. and embed the meeting link as lesson in the course. 

Post session, to mark the completion, you can give learners quizzes which they can attempt in order to validate their training progress and achieve certificate. 

![Achieve certificate](../media/image%28323%29.png)

Also, you can replace the live training link with the actual recording of the training session on the platform for people to view and consume the content later.

For more details, please reach out to us [**via helpdesk**](https://go.microsoft.com/fwlink/?linkid=2104630). 

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

Alternatively, you can also use [**REST APIs**](../infrastructure-management/install-your-platform-instance/6_apis.md) to create your own learning experience within your existing app/service. 

Please  contact us [**via Helpdesk**](https://go.microsoft.com/fwlink/?linkid=2104630) to get help on the integration.

### Does Microsoft Community Training provide any job matching capabilities? How can I integrate Microsoft community training with external job portals?
Microsoft Community Training does not come with any job matching capabilities out of the box. However, the platform can be integrated with external job portals to push learner progress and course certificate using the REST APIs. 

For more information, please reach out to us [**via helpdesk**](https://go.microsoft.com/fwlink/?linkid=2104630) on how to integrate the platform with external application. 

### Is e-commerce and payment integration available on the platform?Can I use Microsoft Community Training platform to sell courses directly to end users? 
E-Commerce and Payment  functionalities are not available on our platform out of the box. However, customers can build these functions using our APIs.

Example: You will be able to integrate our APIs with your catalog page, whenever someone purchases a course, the learner can be enrolled to the respective courses. 

For more details, reach out to us [**via helpdesk**](https://go.microsoft.com/fwlink/?linkid=2104630).

## Alerts and reminders

### How to trigger periodic reminders for learners via email or SMS?
Whenever a new course is assigned or updated to the users by the administrator, an in-app notification is sent which can be viewed by users under the Notifications section identified by the  icon.

Periodic email or SMS alerts to users such as information on new course addition or course completion reminders can be sent by integrating our platform with external services like Logic Apps, Microsoft Flow, etc.

For Example: Customers can leverage our APIs and use 3rd party tools to extend platform capability and send emails to the learners as required. It can be welcome emails when they first login to the platform or it can be update email  when a new course is assign to them. 

For more details, reach out to us [**via helpdesk**](https://go.microsoft.com/fwlink/?linkid=2104630).

### Is there a feature to create additional notifications through emails?
Microsoft community training does not have this function out of the box. However, customers can achieve this by using our APIs. 

For more details, reach out to us [**via helpdesk**](https://go.microsoft.com/fwlink/?linkid=2104630).

## Rest APIs

### Are there any Rest APIs available for integration with existing systems or applications?
Microsoft Community Training platform provides REST APIs to help organization integrate the platform with the existing system and consume training via custom endpoints such as your own mobile app or website. 

For more information, [**refer here**](../infrastructure-management/install-your-platform-instance/6_apis.md).

### How can I sync / import users data from my existing system to Microsoft Community Training?	
Contact us via **[Helpdesk](https://go.microsoft.com/fwlink/?linkid=2104630)** and leave your requirements in the ticket description. Our support team will reach out to you in 2-3 business days and help you with your syncing/importing users data from your existing system to your portal.