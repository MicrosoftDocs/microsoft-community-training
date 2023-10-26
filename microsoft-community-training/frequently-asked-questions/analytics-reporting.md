---
title: Analytics & Reporting
original-url: https://docs.microsoftcommunitytraining.com/docs/analytics-reporting
author: nikotha
ms.author: nikotha
description: Community Training allows organizations to track and stay updated on learner's progress and performance scores through quizzes and exams.
ms.prod: learning-azure
---

# Analytics & Reporting

## Tracking learner progress and course completion

### How to track learners’ progress on the Community Training

Community Training allows organizations to track and stay updated on learners' progress and performance scores through quizzes and exams. Customers can use the inbuilt analytics to track learners' engagements and progress. Also, individual learner’s progress can be tracked and downloaded.

For more information, [**go here**](../analytics/in-built-reports/overall-summary.md).

### Do learners have to watch the whole video for the lesson to be considered complete?

Video lessons are marked complete only after learners have watched the video for the entire duration. However, if videos come from external links such as YouTube, it is marked complete the moment learners play them.

### How does progress tracking work for videos and other content types uploaded on the platform?

Community Training provides real-time course progress for both administrators and learners. However, tracking works differently based on the file type as explained below:

* **Videos uploaded to the platform** – A video lesson is marked as complete only when a learner watches the entire duration of the video file, skipping or fast forward is restricted.

* **Videos from external platforms such as YouTube** – Since videos are not hosted on the platform, they will be marked as complete as soon as the user opens or plays the lesson.

* **Non-video content uploaded on the platform** – Contents such as audio, Word, PowerPoint, PDF, etc. are marked as complete as soon as the content is opened.

* **Other external links** – Any other external links attached as a lesson or marked complete as soon as users open the external webpage and are redirected.

**For learners**  
Learners can view their overall course progress on the home page as shown in Figure 1. Also, on the course details page, a green tick as seen in Figure 2 represents lesson completion. The grey-colored lesson number indicates that the lesson is yet to be taken or completed.

![Lesson to be taken or completed](../media/image%28318%29.png)

**For the Administrator**  
Administrators can view overall learner progress and course completion from the management portal. Check out [**this article**](../analytics/analytics-overview.md) for more details.

### How is the course completion verified on the Community Training?

Community Training can track when any content is played/consumed and real-time analytics are provided on individual user's engagement and course completion. However, we recommend organizations have quizzes and final exams to ensure and validate the learner’s understanding and issue certificates based on the assessment passing criteria.

### How will learner progress be tracked when learners are consuming content both on the web and mobile app?

Learner's progress is seamlessly tracked and synced across devices both on the web and mobile app.

**Web App**  
Learner using the platform via the web are tracked in real-time as their course progresses.

Example: When a learner uses the platform via the web, learners will be able to see their course progression percentage in real-time, also organizations will be able to track and view learner progress and quiz results.

**Mobile App**  
While the mobile platform works like the web, there are few changes to the tracking progress when learners download the video and consume then offline. The learner’s offline progress is stored locally and pushed to the server once they get connected to the internet.

Example: When a learner downloads the course content and consumes it offline, all the course progress which includes quizzes and exams is stored locally on the learner's mobile storage. Once the learner gets connected to the internet all his stored progress gets synced with the platform.

### How do I increase the completion rate for my learners?

Follow the tips below to improve the completion rate of your learners:

1. Administrators can use Announcements to constantly communicate with their learners, encourage them to complete courses, and incentivize them toward completion

2. Exams and certificates in courses incentivize learners to learn sincerely to get certified.

3. Encourage learners to share their certificates and achievements on their Facebook, WhatsApp, or Instagram accounts using specific hashtags.

4. Incentivize learners to complete courses by rewarding them with prizes, vouchers, or other monetary benefits.

5. Encourage and reward learners who share their positive testimonials on social media.

### Can the administrator reset a learner's course progress?

There's no provision to reset a learner's progress. However, you can achieve this by removing the user and enrolling them back to the course again.  This way past user's progress is purged and the user can start afresh.

### If I have previous data on learner progress, can that be imported to Community Training?

You can import existing learner progress and course completion data using a custom migration script. This feature isn't available out of the box and customers are required to write their own migration script based on their existing platform from where the data are coming. Microsoft can help you with the migration.

For more information, contact us [**via the HelpDesk**](https://go.microsoft.com/fwlink/?linkid=2104630).

## Inbuilt analytics and custom reporting

### What are the inbuilt analytical metrics offered by Community Training?

To provide a rich out of the box experience to an admin, Community Training provides different views, designed to facilitate tracking learner progress and program monitoring at various levels:

1. [**Overall Summary**](../analytics/in-built-reports/overall-summary.md) - Provides a high-level picture of learner enrollments and course completion.

2. [**Category Analytics**](../analytics/in-built-reports/category-view-report.md) - Allows an admin to track the progress of various courses in a category.

3. [**Course Analytics**](../analytics/in-built-reports/course-view-report.md) - Allows an admin to track the course progress.

4. [**Group Analytics**](../analytics/in-built-reports/group-view-report.md) - Allows an admin to view the progress of a group of users.

5. [**Individual Learner’s Report Card**](../analytics/in-built-reports/learner-report-card-view.md) - Allows an admin to view the progress of a learner in all the different courses.

### How to check the number of learners enrolled in a course and course completion percentage

Category/Course Analytics provides admin a glance at the learner enrollments, learner engagement, and course completion for the courses. It provides insights on content quality, facilitates comparative analytics across courses, and enables admins to notice things that require attention.

To access the course and category analytics, you can either select the **View Analytics** option from (…) More menu for a Category / Course under the Courses tab or select a specific row from the Category grid in the overall summary view page.

For more information, please [**go here**](../analytics/analytics-overview.md).

### How to view an individual learner's average quiz scores, courses enrolled, and completed?

From the group view grid, you will be able to see the user’s progress and quiz scores. Please [**go here**](../analytics/in-built-reports/group-view-report.md) for more information.

### How is the course completion percentage computed for a learner?

Course completion percentage is computed based on the course items (including lessons, quizzes, and exams) completed for a given course by learners. For example, if we have five lessons in a course, then post-completion of each lesson course progress will be increased by 20%.

> [!NOTE]  
> Every course item in a course has equal weightage i.e. if there are 20 items for a course (including lessons, practice quizzes, and exams) then completion of each item will increase the course completion by 5%.

### How to view and download individual learners' progress?

Learner Report Card View allows administrators to monitor and track each learner’s progress and performance across all the enrolled courses. This information helps administrators (especially group admins) track course completion and follow up with learners to drive adoption of the training program.

To access the Learner Report Card View, you need to select a user from the group details page or All Users list page. For more information, [**go here**](../analytics/in-built-reports/learner-report-card-view.md).

### What is the available file format to download the analytics?

Currently, administrators can download analytics in CSV format, admins can also make use of Power BI integration to modify data as per their requirements.

If you observe, that the data fields are not rendering correctly in the CSV downloaded file this is because of Unicode encoding in the file. We recommend changing the settings in the file to ensure that Arabic or other language values are displayed as expected in the document after export.

Please use [this link](https://www.nextofwindows.com/how-to-display-csv-files-with-unicode-utf-8-encoding-in-excel) for details and also the steps to change the settings.

### How to view and export users from Community Training

You can view and export all users on the portal from the administrator view, select the user's tab, and select all users. By selecting the download list, you will be able to export all the users on the portal. Refer to the below image for clarity:

![View and export users](../media/image%28319%29.png)

### How can I create custom report relevant to my organization?

You can create reports and dashboards using visualization tools such as Power BI. All you have to do is connect to Azure SQL Database and pull relevant data from the tables required for your reports.

For more information, reach out to us [**via HelpDesk**](https://go.microsoft.com/fwlink/?linkid=2104630).

## Usage report and metrics

### Can I view the data on number of  unique visitors, active users, average time spent by learners  on the Community Training?

Community Training platform leverages [**Azure Application Insights**](/azure/azure-monitor/app/app-insights-overview) to capture telemetry and track aggregate traffic/usage data across all learners on the web and mobile app.  To access these data points:

1. You can sign in to the [**Azure Portal**](https://portal.azure.com/) can go to the Azure Application Insight service created under the resource group where Community Training is deployed.

2. Now open the Application Insights service and start viewing data around user sessions, funnel, etc. You will be able to view and track and view events such as which pages are most popular, at what times of day, where your users are, and more.

For more information, reach out to us [**via HelpDesk**](https://go.microsoft.com/fwlink/?linkid=2104630).

### Is there a possibility to get statistics to see the “Popular” hours on which learners frequently access the training portal? I want to know the average browsing time and unique users accounts every week

Community Training leverages [**Azure Application Insights**](/azure/azure-monitor/app/app-insights-overview) to capture telemetry and track aggregate traffic/usage data across all learners on the web and mobile app.  To access these data points:

1. You can sign in to the [**Azure Portal**](https://portal.azure.com/) can go to the Azure Application Insight service created under the resource group where Community Training is deployed.

2. Now open the Application Insights service and start viewing data around user sessions, funnel, etc. You will be able to view and track and view events such as which pages are most popular, at what times of day, where your users are, and more.

For more information, reach out to us [**via helpdesk**](https://go.microsoft.com/fwlink/?linkid=2104630).
