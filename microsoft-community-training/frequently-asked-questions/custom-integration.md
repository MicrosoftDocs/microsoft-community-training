---
title: Platform Extensibility & Integration
original-url: https://docs.microsoftcommunitytraining.com/docs/custom-integration
author: cbms03
ms.author: cbrahmandam
description: Community Training do not inbuilt support for live training sessions.
ms.prod: learning-azure
---

# Platform Extensibility & Integration

## Live meetings and webinars

### Will I be able to conduct live training sessions using Community Training ?

Community Training does not have built-in support for live training sessions. However, we recommend customers use third-party applications such as Microsoft Teams, Zoom, etc., and embed the meeting link as a lesson in the course.

Post-session, to mark the completion, you can give learners assessment that they can attempt in order to validate their training progress and achieve a certificate.

![Achieve certificate](../media/image%28323%29.png)

Also, you can replace the live training link with the actual recording of the training session on the platform for people to view and consume the content later.

For more details, please reach out to us [**via HelpDesk**](https://aka.ms/cthelpdesk).

### Can I integrate Cisco WebEx, Microsoft Teams, Zoom, etc. with Community Training for live sessions?

Customers can have the meeting or webinar links added to Community Training as external URLs which will allow learners to simply redirect to the respective applications such as Microsoft Teams, Zoom, Google Meet, etc., and attend these sessions.

Having said that, for Microsoft Teams, the platform can be embedded as a tab where users can easily access the course contents within the Teams environment.

For more information on MS Teams integration, [**go here**](https://communitytraining.microsoft.com/teams/).

### Will I be able to deliver a webinar using this platform?

Community Training doesn’t provide inbuilt functionalities to host webinars but customers can add the meeting or webinar URLs as an external lesson on the platform. This will allow users to easily redirect to the respective application hosting the webinar and attend sessions. Refer to this documentation on [**setting up Webinars using MS Teams**](https://support.microsoft.com/office/schedule-a-webinar-in-microsoft-teams-0719a9bd-07a0-47fd-8415-6c576860f36a#:~:text=Create%20a%20webinar%201%20In%20the%20Teams%20calendar%2C,event%2C%20invites%20will%20be%20sent%20to%20attendees%20automatically.)

## Integration with external system

### Are there any out-of-the-box integrations with existing HRMS, CRM, etc. applications available in the market?

Community Training doesn't come with any out-of-box integrations with third-party HRMS & CRM applications. 

### Can I embed or integrate Community Training into an existing mobile application?

Yes, you can integrate Community Training to your existing mobile application.  
For example, you can add a Training button on the home screen, and clicking on the button will launch Community Training inside the existing app as a web view.

#### Embedding the webview of CT in your existing mobile app

Here are the steps to embed the webview of CT in your custom mobile application in case you have a B2C-based [**social login**](../infrastructure-management/install-your-platform-instance/configure-login-social-work-school-account.md#social-account-or-email-based-authentication) instance.

1. Set the following **configurations** in the Settings section on the application, if the secondary navigation bar is needed:
    * Features:Navbar:EnableCustomNavbar => true
    * Features:Navbar:EnableProfile => false

2. Set the following **configurations** in the Settings section on the application to true only if that specific functionality needs to be provided, else set it to false explicitly.

    * Features:Navbar:EnableLogo
    * Features:Navbar:EnableSearch
    * Features:Navbar:EnableLanguageSelection
    * Features:Navbar:EnableCustomProfile

3. In your Android Application, include a WebView element in the activity where you want to show the CT application. Set the source of the webview as the URL
    * `https://<DOMAIN>.azurewebsites.net/home/defaultsignin?whr=uri%3aB2C&referrer=basedomain&domain_hint=DOMAIN`
    * Where Domain is name of your instance. eg: if your instance url is `https://contoso.azurewebsites.net` then replace DOMAIN with 'contoso'

Contact us [**via HelpDesk**](https://aka.ms/cthelpdesk) to get help on the integration.

### Identity Mapping between external portal to CT (via ADB2C)

CT allows you to map identity with an external portal i.e. if you have an external portal where you want to authenticate users (via email, user name, local IDP) and then have them redirected to CT. This flow can be achieved by setting up custom policies in your B2C tenant as mentioned in the steps below:

* Setup [**ADB2C tenant**](/azure/active-directory-b2c/tutorial-create-tenant)
* You need to set custom policies in your ADB2C (here are [**sample codes**](https://github.com/MicrosoftDocs/microsoft-community-training/files/9594393/Sample.NCS.login.usecase.zip) for your reference) make necessary changes based on your login requirements
* **ADB2C Policies**
  * The sign-in page provides the option to sign in via a custom id
  * Upload the custom files in the order mentioned [**here**](/azure/active-directory-b2c/tutorial-create-user-flows?pivots=b2c-custom-policy#upload-the-policies)

<!---
**Function app**
  * The sample code has a feature to update a user’s FirstName and LastName via Service2Service auth on the user’s login.
  * This implies that CT will always have the same FirstName and LastName of the user as present in your external portal, and it will be updated automatically whenever the user logs in.
  * Please update the required params in the code following the documentation of S2S here[ Service-to-Service Authentication](/azure/industry/training-services/microsoft-community-training/rest-api-management/service-to-service-authentication) and then publish the function app.
* Here is a [sample recording](https://microsoft.sharepoint.com/:v:/t/BuildingSangam/EQZ7Z2zY7zdAuQY5leNYmwgBO7-ezdGFTUngJWdz70wmsA?e=YIITyN) for your reference.

Note  : THIS SECTION IS HIDDEN UNTIL THE S2S BECOMES AVAILABLE AGAIN
--> 

### Does Community Training provide any job-matching capabilities? How can I integrate Community Training with external job portals?

Community Training does not come with any job-matching capabilities out of the box. 

<!--However, it can be integrated with external job portals to push learner progress and course certificates using the REST APIs.

For more information, please reach out to us [**via HelpDesk**](https://aka.ms/cthelpdesk) on how to integrate the platform with external application.

Note  : THIS SECTION IS HIDDEN UNTIL THE APIs BECOME AVAILABLE
-->

### Is e-commerce and payment integration available on the platform? Can I use Community Training to sell courses directly to end users?

E-Commerce and Payment functionalities are not available on the platform out of the box.

## Alerts and reminders

### How to trigger periodic reminders for learners via email or SMS?

Whenever a new course is assigned or updated to the users by the administrator, an in-app notification is sent which can be viewed by users under the Notifications section identified by the icon.

Periodic email or SMS alerts to users such as information on new course additions or course completion reminders can be sent by integrating the platform with external services like Logic Apps, Microsoft Flow, etc.

<!--For example, customers can leverage the APIs and use third-party tools to extend platform capability and send emails to learners as required. These can be welcome emails when they first sign in to the platform or they can be update emails when a new course is assigned to them.
-->
For more details, reach out to us [**via HelpDesk**](https://aka.ms/cthelpdesk).

### Is there a feature to create additional notifications through emails?

Community Training does not have this function out of the box. 

### Can the administrators share a deep link of courses with learners?

Yes, the administrators can obtain the deep link of each course on the CT portal and share it with learners. To obtain the deep link of a course, the administrators need to follow the below steps:

1. Go to the Administrator view of your CT instance.
2. Go to the course for which you want to obtain the deep link.
3. Select "**View as Learner**" icon on the top-right pane of the course.

   ![Course options](https://user-images.githubusercontent.com/87796184/158620704-7b4044e3-f46a-4786-80c6-1fb187c4ef8f.PNG)
4. On this learner's view, copy the URL that is displayed on the browser.

This link obtained above is the deep link of the course and can be shared with learners.

<!--

Note  : THE BELOW SECTION IS HIDDEN UNTIL APIs ARE AVAILABLE



## Rest APIs

### Are there any Rest APIs available for integration with existing systems or applications?

Community Training  provides REST APIs to help you integrate the platform with your existing systems and consume training via custom endpoints such as your own mobile app or website.

### How can I sync/import users data from my existing system to Community Training?

Community Training  lets [global administrators](../user-management/add-users/add-an-administrator-to-the-portal.md#add-a-global-administrator-to-the-platform) import user progress from other learning portals which will enable a seamless experience for the learner.

#### Pre-requisites

* Proper mapping of content between CT and other portals from where user progress needs to be imported.
  * For example: In the external portal if there is a course with three lessons and five quizzes (graded or non-graded), then in CT there should be the course present with the same number of lesson/assessment placeholders in the same sequential order.

#### Steps to how to integrate APIs to import progress

The new APIs enable you to import the progress of a user. It comprises of the three components:

1. Obtaining Resource ID
2. Lesson Progress
3. Quiz Progress

##### Step 1: Obtaining the IDs of the Resources

The course content API mentioned in the URL below must be parsed to obtain the IDs of the resources (lessons, quizzes, and questions) for which the progress needs to be imported. The API response contains the complete details of all the resources present in the course. The specification of the APIs is given below:

| URL |  \<hostname\>/api/v4/Courses/${courseId}/Content |
| --- | ---|
| **Description**  | Get course content with course Id = courseId |
| **Supported verbs** | POST |
| **Request header contract** | Json: <br />“cookie”: [Required.Always] <br /> “requestVerificationToken”: [Required.Always] <br />OR <br/> S2S Token |
| **Response body contract** | Json: <br />{ …  <br /> &nbsp; "CourseItems": [ <br /> &nbsp;&nbsp;{ <br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; … <br /> &nbsp;&nbsp;"ItemType": "Lesson", <br /> &nbsp;&nbsp;&nbsp;"Data": &nbsp;{ <br/> &nbsp;&nbsp;&nbsp;"Id": &nbsp; 4143 <br/> &nbsp;&nbsp;} <br />}, <br/>{ <br/> &nbsp;&nbsp;&nbsp;&nbsp;… <br/> &nbsp;"CourseItemId": 4712,<br/> &nbsp;"ItemType": "Quiz",<br/>&nbsp;"Data": { <br/> &nbsp;&nbsp;&nbsp;"QuizData": { <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"Id": "476" <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;… <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;},<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Questions": [<br/>&nbsp;&nbsp;&nbsp;&nbsp;{ <br/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"Id": 4124<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;…<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;] <br/> &nbsp;&nbsp;} |
|**Response contract**  | 200 for successful response 400, 429, 403, 500, 503 for various error response.|

##### Step 2: Importing the Lesson Progress

The lesson progress of a particular user for a particular course can be imported by using the below API.<br/>Lesson ID can be obtained by Step 1. The specification of the APIs is: <br/><br/>

| URL |   \<hostname\>/api/v1/Course/${courseId}/Lesson/ImportProgress|
| --- | ---|
| **Description**  | Import progress of user with course Id = courseId |
| **Supported verbs** | PUT |
| **Request header contract** | Json: <br />“cookie”: [Required.Always] <br /> “requestVerificationToken”: [Required.Always] <br />OR <br/> S2S Token |
| **Response body contract** | Json: <br /> “userContact”: [Required.Always]<br />“lessonProgress”: [Required.Always]<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[ “lessonId”: [Required.Always]<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“lessonStatus”: [Required.Always]<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(notCompleted/completed)<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“lessonScore”:<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“LessonMetadata”:<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;]
| **Sample Request Body** | “userContact”: “+91 1234567890”<br /> “lessonProgress”: <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[ <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{ <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“lessonId”: 1 <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“lessonStatus”: “notCompleted” <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“lessonScore”: 60 <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“LessonMetadata”: “scorm.api.playback = 55..” <br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;},<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{ <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“lessonId”: 2 <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“lessonStatus”: “Completed” <br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;} <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;] |
| **Response contract** | 200 for successful response. <br/>400, 429, 403, 500, 503 for various error response. |

##### Step 3: Importing the Quiz Progress

The quiz progress of a particular user for a particular course can be imported by using the below API.
QuizId can be obtained by Step 1. The specification of the APIs is:

| URL | \<hostname\>/api/v1/Course/${courseId}/Quiz/ImportProgress|
| --- | ---|
| **Description**  | Import progress of user with course Id = courseId |
| **Supported verbs** | PUT |
| **Request header contract** | Json: <br />“cookie”: [Required.Always] <br /> “requestVerificationToken”: [Required.Always] <br />OR <br/> S2S Token |
| **Response body contract** | Json: <br /> “userContact”: [Required.Always]<br />“quizProgress”: [Required.Always]<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[ “quizId”: [Required.Always]<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“questionProgresss”: [Required.Always]<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[ “questionId”: [Required.Always]<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“isCorrect”: [Required.Always]<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;]<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;]
| **Sample Request Body** | “userContact”: “+91 6758493021”<br /> “quizProgress”: <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[ <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{ <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“quizId”: 1 <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"questionProgress": <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“questionId”: 1 <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“isCorrect”: “true”<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“answer”: “[4] (Option A \|Option B \|<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Option C)" <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;},<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“questionId”: 2<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; “isCorrect”: “false”<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; },<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;] <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;},<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“quizID”: 2<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"questionProgress": <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[<br/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“questionId”: 3 <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“isCorrect”: “true”<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;“answer”: “[2,3]" <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; },<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;] <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;},<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;]
| **Response contract** | 200 for successful response. <br/>400, 429, 403, 500, 503 for various error response. |

>[!WARNING]  
>
> * If you want Assessments to be evaluated in CT platform, please provide the Answer Strings in the request body.
> * In case if the Answer Strings is empty, isCorrect would be considered and assessment evaluation won't happen in
CT

#### Export Course content to other LMS

Community Training allows global administrators to export course content from CT to other learning portals, enabling reuse of content.

##### Steps on how to export course content by using API

Course content export can be done with the help of the API below. The specification of the APIs is:

| URL |  \<hostname\>/api/v4/Courses/${courseId}/Content |
| --- | ---|
| Description | Export courses |
| Supported verbs | POST |
| Request header contract | Json: <br />“cookie”: [Required.Always] <br /> “requestVerificationToken”: [Required.Always] <br />OR <br/> S2S Token |
| Response body contract | Json: <br /> “commaSeparatedIds”: [Required.Always] (CSV of course Ids)
| Response contract | 200 for successful response. <br/>400, 429, 403, 500, 503 for various error response. |
-->

Please reach out to us [**via HelpDesk**](https://aka.ms/cthelpdesk) if you have any further queries.