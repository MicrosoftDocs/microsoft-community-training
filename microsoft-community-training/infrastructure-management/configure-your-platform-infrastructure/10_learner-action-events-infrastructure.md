---
title: Learner Action Events Infrastructure
original-url: https://docs.microsoftcommunitytraining.com/docs/learner-action-events-infrastructure
---

# Learner Action Events Infrastructure

Microsoft Community Training enables events infrastructure via the Azure Service Bus to enable you to track dynamic learner actions on the training platform. The events allow you to build accurate learner action journeys on the platform. 

## Azure Service Bus Setup
### What is Azure Service Bus?
Azure Service Bus is a cloud messaging as a service which enables you to subscribe and capture the learner action events raised by the Microsoft Community Training platform. To read more about the Azure Service Bus infrastructure, check [this document](https://azure.microsoft.com/en-in/services/service-bus/). 

### Steps to add Azure Service Bus to your Subscription

1. Create a Service Bus Instance from Azure Portal following [this documentation](https://docs.microsoft.com/en-us/azure/service-bus-messaging/service-bus-quickstart-topics-subscriptions-portal), with Topic Name : MCTEvents 

2. Assign the user (for running locally), AppService (for running in App service) Azure Service Bus Data Owner role in "Access control (IAM) -> Role assignments" tab of the service bus instance; here is a [Reference Document](https://docs.microsoft.com/en-us/azure/service-bus-messaging/service-bus-managed-service-identity#to-assign-azure-roles-using-the-azure-portal).

3. Copy the Host name from the overview tab and update ServiceBusNamespaceFQDN in appsetting.json

### Sample code to consume MCT Events
[Refer this document](https://docs.microsoft.com/en-us/azure/service-bus-messaging/service-bus-dotnet-how-to-use-topics-subscriptions) to access sample code for setting Azure Service Bus Integration to consume the events raised by the Microsoft Community Training platform. 

[Refer this document](https://docs.microsoft.com/en-us/azure/service-bus-messaging/private-link-service) to implement Azure Service Bus using private link. 

#### Sample event from MCT 
```
Course Completion Event
{
"EventType": "COURSE_COMPLETION",
"MessageBody": {
"FirstName" : String, // First Name of the user
"LastName" : String, // Last Name of the user
"UserId" : Integer, // UserId of the user
"Contact" : String, // Contact of the user
"ContactType" : String, //"Email" or "Phone" or "AzureAD"
"CourseName" : String, // Name of the course
"CourseId" : Integer, // Id of the course
"CompletionDate": String, // Course completion date
"ExamPercentage": String, // Exam percentage, "Not Applicable" if no exam present.
}
```
## Events Infrastructure
### Events Enabled 

Microsoft Community Training has enabled 4 types of events for customers to track dynamic learner actions on their training instance,  

1. **Login Event**: This will be called when the user explicitly signs in by clicking the Sign In URL in MCT during On-boarding or the AD B2C token of the learner is expired (generally every 90 days) when accessing via the Driver’s app. 
2. **Course Start Event**: This will be called when a learner starts a course, this is same as lesson starting since Grab only has 1 video lesson in the system (at least with the current migration) 
3. **Module Completion**: This will be the completion of either the lesson or the exam in the course 
4. **Course Completion**: This will be the Course Completion event sent once the Exam is passed 

### Application Configurations

To enable these configurations, following Application Settings must be enabled. Refer [this document](../../settings/11_configurations-on-the-training-platform#steps-to-set-the-configurations-on-the-platform) to check the steps to enable these configurations from your Azure portal. 

1. **Features:Events:Login** : Application Settings for subscribing to login event 
2. **Features:Events:CourseStart** : Application Settings for subscribing to course start event
3. **Features:Events:ModuleCompletion** : Application Settings for subscribing to module completion event
4. **Features:Events:CourseCompletion** : Application Settings for subscribing to course completion event

### Sample Sequence of Events
Following will be the sequence of event for a learner accessing a course in MCT with 1 video and 1 lesson. 
1. LOGIN: When the learner clicks on Sign In button in MCT explicitly 
2. COURSE_START: Start of the Course which is equivalent to start of the Lesson or the Exam
3. MODULE_COMPLETION: End of Video Completion
4. MODULE_COMPLETION: Exam completed
5. COURSE_COMPLETION: Course completed
6. COURSE_START: UI re-rendering post exam completion
7. COURSE_START: UI re-rendering post course completion

Sample Events in Sequence
```
Received: {
  "EventType": "LOGIN",
  "MessageBody": {
    "FirstName": "Test",
    "LastName": "test",
    "UserId": 13273,
    "Contact": "mctsangam@outlook.com",
    "ContactType": "Email",
    "LoginTime": "2021-02-28T17:26:45.2810916Z "
  }
}

Received: {
  "EventType": "COURSE_START",
  "MessageBody": {
    "FirstName": "Test",
    "LastName": "test",
    "UserId": 13273,
    "Contact": "mctsangam@outlook.com",
    "ContactType": "Email",
    "CourseName": "course7",
    "CourseId": 2475,
    "StartDate": "2021-02-28T17:27:45.2810916Z"
  }
}
Received: {
  "EventType": "MODULE_COMPLETION",
  "MessageBody": {
    "FirstName": "Test",
    "LastName": "test",
    "UserId": 13273,
    "Contact": "mctsangam@outlook.com",
    "ContactType": "Email",
    "CourseName": "course7",
    "CourseId": 2475,
    "CourseItemId": 8977,
    "ModuleType": "Lesson",
    "CompletionDate": "2021-02-28T17:27:45.5333333",
    "ExamPercentage": "Not Applicable"
  }
}
Received: {
  "EventType": "MODULE_COMPLETION",
  "MessageBody": {
    "FirstName": "Test",
    "LastName": "test",
    "UserId": 13273,
    "Contact": "mctsangam@outlook.com",
    "ContactType": "Email",
    "CourseName": "course7",
    "CourseId": 2475,
    "CourseItemId": 8976,
    "ModuleType": "Exam",
    "CompletionDate": "2021-02-28T17:28:00.94",
    "ExamPercentage": "50"
  }
}
Received: {
  "EventType": "COURSE_COMPLETION",
  "MessageBody": {
    "FirstName": "Test",
    "LastName": "test",
    "UserId": 13273,
    "Contact": "mctsangam@outlook.com",
    "ContactType": "Email",
    "CourseName": "course7",
    "CourseId": 2475,
    "CompletionDate": "2021-02-28T17:28:00.94",
    "ExamPercentage": "50"
  }
}
Received: {
  "EventType": "COURSE_START",
  "MessageBody": {
    "FirstName": "Test",
    "LastName": "test",
    "UserId": 13273,
    "Contact": "mctsangam@outlook.com",
    "ContactType": "Email",
    "CourseName": "course7",
    "CourseId": 2475,
    "StartDate": "2021-02-28T17:28:02.8614374Z"
  }
}
Received: {
  "EventType": "COURSE_START",
  "MessageBody": {
    "FirstName": "Test",
    "LastName": "test",
    "UserId": 13273,
    "Contact": "mctsangam@outlook.com",
    "ContactType": "Email",
    "CourseName": "course7",
    "CourseId": 2475,
    "StartDate": "2021-02-28T17:28:10.193248Z"
  }
}
```

