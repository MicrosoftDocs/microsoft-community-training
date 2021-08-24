---
title: Analytics & Reporting
original-url: https://docs.microsoftcommunitytraining.com/docs/analytics-reporting
author: nikotha
ms.author: nikotha
description: Microsoft Community Training allows organizations to track and stay updated on learner's progress and performance scores through quizzes and exams.
ms.prod: azure
---

# Analytics & Reporting

## Tracking learner progress and course completion

### How to track learner’s progress on the Microsoft Community Training platform?

Microsoft Community Training allows organizations to track and stay updated on learner's progress and performance scores through quizzes and exams. Customers can use the inbuilt analytics to track learners' engagements and progress. Also, individual learner’s progress can be tracked and downloaded.

For more information, [**refer here**](../analytics/in-built-reports/overall-summary.md).

### Do learners have to watch the whole video for the lesson to be considered complete?

Video lessons are marked complete only after the learners have watched the video for the entire duration. However, if videos are coming from external links such as YouTube, it is marked complete the moment learners play it.

### How does progress tracking work for videos and other content type uploaded on the platform?

Microsoft Community Training provides real-time course progress for both administrators and learners. However, tracking works differently based on the file type as explained below:

* **Videos uploaded to the platform** – A video lesson is marked as complete only when a learner watches the entire duration of the video file, skipping or fast forward is restricted.

* **Videos from external platforms such as YouTube** – Since videos are not hosted on our platform, it will be marked as complete as soon as the user opens or play the lesson.

* **Non-video content uploaded on the platform** – Contents such as audio, Word, PowerPoint, PDF etc. are marked as complete as soon as the content is opened.

* **Other external links** – Any other external links attached as a lesson or marked complete as soon as users open the external webpage and redirected.

**For the Learners**  
Learners can view their overall course progress on the home page as shown in Fig 1. Also, in the course details page, a Green tick as seen in Fig 2 represents lesson completion. The grey colored lesson number indications that the lesson is yet to be taken or completed.

![Lesson to be taken or completed](../media/image%28318%29.png)

**For the Administrator**  
Administrator can view overall learner progress and course completion from the management portal. Check out [**this article**](../analytics/analytics-overview.md) for more details.

### How is the course completion verified on the Microsoft Community Training?

Microsoft Community Training can track when any content is played/consumed and real-time analytics are provided on individual user's engagement and course completion. However, we recommend organizations to have quizzes and final exams to ensure and validate the learner’s understanding and issue certificates based on the assessment passing criteria.

### How learners progress will be tracked when learners are consuming content both of the web and mobile app?

Learner's progress is seamlessly tracked and sync across devices both on the web and mobile app.

**Web App**  
Learner using the platform via web are tracked in real-time as their course progresses.

Example: When a learner uses the platform via the web, the learners will be able to see his or her course progression percentage in real-time, also organizations will be able to track and view the learner’s progress and quizzes results.

**Mobile App**  
While the mobile platform works like the web, there are few changes to the tracking progress when learners download the video and consume then offline. The learner’s offline progress is stored locally and pushed to the server once they get connected to the internet

Example: When a learner downloads the course content and consume it offline, all the course progress which includes quizzes and exams are stored locally on the learner's mobile storage. Once the learner gets connected to the internet all his stored progress gets synced with our platform.

### How do I increase completion rate for my learners?

Follow the tips below to improve the completion rate of your learners:

1. Administrators can use Announcements to constantly communicate with their learners, encourage them to complete courses and incentivize them towards completion

2. Exams and certificates in courses incentivize learners to learn sincerely in order to get certified.

3. Encourage learners to share their certificate and achievements on their Facebook, WhatsApp or Instagram accounts using specific hashtags.

4. Incentivize learners to complete courses by rewarding them with prizes, vouchers or other monetary benefits.

5. Encourage and reward learners who share their positive testimonials on social media.

### Can the administrator reset a learner's course progress?

There's no provision to reset a learner's progress. However, you can achieve this by removing the user and enrolling them back to the course again.  This way past user's progress is purged and the user can start afresh.

### If I have previous data on the learner progress, can that be imported to Microsoft Community Training platform?

You can import existing learner progress and course completion data using a custom migration script. This feature isn't available out of the box and customers are required to write their own migration script based on their existing platform from where the data are coming. Microsoft can help customer with the migration.

For more information, contact us [**via the HelpDesk**](https://go.microsoft.com/fwlink/?linkid=2104630).

## Inbuilt analytics and custom reporting

### What are the inbuilt analytical metrics offered by Microsoft community training?

To provide a rich out of the box experience to an admin, Microsoft Community Training platform provides different views, designed to facilitate tracking learner progress and program monitoring at various levels:

1. [**Overall Summary**](../analytics/in-built-reports/overall-summary.md) - Provides a high-level picture of learner enrollments and course completion

2. [**Category Analytics**](../analytics/in-built-reports/category-view-report.md) - Allows an admin to track the progress of various courses in a category

3. [**Course Analytics**](../analytics/in-built-reports/course-view-report.md) - Allows an admin to track the course progress

4. [**Group Analytics**](../analytics/in-built-reports/group-view-report.md) - Allows an admin to view the progress of a group of users

5. [**Individual Learner’s Report Card**](../analytics/in-built-reports/learner-report-card-view.md) - Allows an admin to view the progress of a learner in all the different courses

### How to check the number of learners enrolled in a course and course completion percentage?

Category/Course Analytics provides admin a glance at the learner enrollments, learner engagement, and course completion for the courses. It provides insights on content quality, facilitates comparative analytics across courses, and brings to admins notice things that require attention.

To access the course and category analytics, you can either select the View Analytics option from (…) More menu for a Category / Course under the Courses tab or select a specific row from the Category grid in the overall summary view page.

For more information, please [**refer here**](../analytics/analytics-overview.md).

### How to view individual learners average quiz scores, courses enrolled, and completed?

From the group view grid you will be able to see user’s progress and quiz scores. Please [**refer here**](../analytics/in-built-reports/group-view-report.md) for more information.

### How is the course completion  percentage computed for a learner?

Course completion percentage is computed based on the course items (including lesson, quizzes and exams) completed for a given course by the learners. For e.g. if we have 5 lessons in a course then post completion of each lesson course progress will be increased by 20%.

> [!NOTE]  
> Every course items in a course has equal weightage i.e. if there are 20 items for a course (including lesson, practice quiz and exams) then completion of each item will increase the course completion by 5%.

### How to view and download individual learners progress?

Learner Report Card View provides administrators to monitor and track each learner’s progress and performance across all the enrolled courses. This information helps administrators (especially group admins) track course completion and follow up with learners to drive adoption of the training program.

To access the Learner Report Card View, you need to select a user from the group details page or All users list page. For more information, [**refer here**](../analytics/in-built-reports/learner-report-card-view.md).

### What is the available file format to download the analytics?

Currently, administrators can download analytics in CSV format, Admins can also make use of Power BI integration to manipulate data as per their requirement.

If you observe, that the data fields are not rendering correctly in the CSV downloaded file this is because of Unicode encoding in the file. We recommend to change the settings in the file to ensure that Arabic or other language values are displayed as expected in the document after export.

Please use [this link](https://www.nextofwindows.com/how-to-display-csv-files-with-unicode-utf-8-encoding-in-excel) for details and also the steps to change the settings.

### How to view and export users from Microsoft Community Training platform?

You can view and export all users on the portal from the administrator view, click on the user's tab, and select all users. By clicking on the download list, you will be able to export all the users on the portal. Refer below the image for clarity:

![View and export users](../media/image%28319%29.png)

### How can I create custom report relevant to my organization?

You can create reports and dashboards using visualization tool such as Power BI. All you have to do is connect to Azure SQL database and pull relevant data from the tables required for your reports.

For more information, reach out to us [**via HelpDesk**](https://go.microsoft.com/fwlink/?linkid=2104630).

## Usage report and metrics

### Can I view the data on number of  unique visitors, active users, average time spent by learners  on the Microsoft Community Training platform?

Microsoft Community Training platform leverages [**Azure Application Insights**](/azure/azure-monitor/app/app-insights-overview) to capture telemetry and track aggregate traffic / usage data across all the learners on web and mobile app.  To access these data points:

1. You can login to the [**Azure Portal**](https://portal.azure.com/) can go the Azure Application Insight service created under the resource group where Microsoft Community Training  platform is deployed.

2. Now open the Application Insights service and start viewing data around user sessions, funnel, etc. You will be able to view and track and view events such as which pages are most popular, at what times of day, and where your users are etc.

For more information, reach out to us [**via HelpDesk**](https://go.microsoft.com/fwlink/?linkid=2104630).

### Is there a possibility to get statistics to see the “Popular” hours on which the learners frequently access the training portal? I want to know average browsing time and unique users account  every week

Microsoft Community Training platform leverages [**Azure Application Insights**](/azure/azure-monitor/app/app-insights-overview) to capture telemetry and track aggregate traffic / usage data across all the learners on web and mobile app.  To access these data points:

1. You can login to the [**Azure Portal**](https://portal.azure.com/) can go the Azure Application Insight service created under the resource group where Microsoft Community Training platform is deployed.

2. Now open the Application Insights service and start viewing data around user sessions, funnel, etc. You will be able to view and track and view events such as which pages are most popular, at what times of day, and where your users are etc.

For more information, reach out to us [**via helpdesk**](https://go.microsoft.com/fwlink/?linkid=2104630).
