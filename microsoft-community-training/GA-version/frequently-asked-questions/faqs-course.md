---
title: Content and Course management
original-url: https://docs.microsoftcommunitytraining.com/docs/faqs-course
author: cbms03
ms.author: cbrahmandam
description: Microsoft provides course content around Digital Literacy, Office 365, etc. which organizations can upload and use in their Community Training platform instance.
ms.service: azure
---
> [!IMPORTANT]  
> Community Training will reach end of support on Tuesday, April 7, 2026. No new deployments are available at this time. Existing Community Training customers will continue to receive security updates and technical support through Tuesday, April 7, 2026 at 11:59 pm. For more information or support, please reach out to our team here: https://aka.ms/cthelpdesk
# Content and Course management

## Content Library

#### Does the platform come with any out-of-box content for an organization to kickstart the training program?

Microsoft provides course content around Digital Literacy, Office 365, etc., which organizations can upload and use in their Community Training platform instances.MS learn courses are also integrated as links

Contact us via **[HelpDesk](https://aka.ms/cthelpdesk)** if you’d like to make any courses from the catalog available in your training portal instance.

#### Can we use any of the content from the catalog?

Yes, all the content hosted in our course catalog is available for customers to use in their own training platform instance.

You can contact us via **[HelpDesk](https://aka.ms/cthelpdesk)** if you have any questions on how to make any courses from the catalog available in your training portal instance.

Please note - all content hosted in the content library is free of charge and provided under a Creative Common license. So, you can tweak and change the content as per your requirements.

## Content Format

### Can I upload my own content to be hosted on Community Training?

Organizations can upload & host unlimited content and courses on Community Training. This will allow you to utilize the platform as the centralized repository for all your content.

The platform supports the following types of formats:

* **Video formats**: MP4, 3GP, 3G2, 3GP2, AVI, MPEG, MPG, WMV, VOB, MKV, FLV, DV, TS, ASF, M4V, MOV
* **Audio formats**: MP3 & OGG
* **Other formats**: SCORM 1.2, PDF, PPT, PPTX, DOCX, HTML, ePUB
* **Hyperlinks**: Paste link in the upload lesson dialogue box (Example: Video URLs from YouTube, Microsoft Learn, etc.)

For more information, check the article on [**how to manage course content**](../content-management/content-management-overview.md) on Community Training.  

### How to download content from my training portal?

Community Training allows administrators to download/export courses and categories as ZIP files. These zip files can be uploaded on the same instance to copy content or to another instance to transfer the content. Refer to [**this article**](../content-management/manage-content/manage-course-category/move-course-content-across-training-instance.md) to learn more.

### How to create a new course category?

You can create, edit, or delete a category from the administrator portal. Refer to [**this article**](../content-management/create-content/create-course-category/create-a-category.md) for detailed steps.  

### How to bulk upload lessons?

Community Training provides a bulk upload lesson feature to add more than one lesson at a time within a course. [**Refer to this article**](../content-management/create-content/create-course-category/upload-content-to-a-course.md) for the detailed steps.  

### What is the size of the files I can upload on the CT platform?

The platform can accept file sizes depending on the upload size limit as specified below.

| Format | Upload size limit |
| --- | --- |
| Video lessons: MP4, 3GP, 3G2, 3GP2, AVI, MPEG, MPG, WMV, VOB, MKV, FLV, DV, TS, ASF, M4V, MOV | No limit |
| Audio Lessons: MP3 & OGG | No limit |
| PDF, HTML, External Links, ePUB | No limit |
| PPT, PPTX, DOCX | 100 MB |
| Excel | 5 MB |

>[!Note]  
>The [**App Service plan**](https://azure.microsoft.com/pricing/details/app-service/windows/) for your instance might restrict total upload size (multiple uploads across different devices for the same instance) at a time. For App Service plan:
>
>* P1V2 - maximum upload size is 18GB
>* P2V2 - maximum upload size is 56GB
>
>Refer [**here**](https://github.com/projectkudu/kudu/wiki/Understanding-the-Azure-App-Service-file-system) for more information.

### Will I be able to link videos from external platforms like YouTube and Vimeo?

Yes, customers can embed videos from any external platforms such as YouTube, Microsoft Learn, etc. on the Community Training portal.  However, learners will not be able to download such content on the mobile app for offline consumption.

>[!Note]  
> For Vimeo videos, they do not allow their videos to get embedded directly on any other platform. In order to get the embed URL for any video, you need to follow the below steps:
>
> * In your Vimeo video player, click on the share button, under the Embed sectio,n copy the code highlighted as below, and you can paste this as external url for a lesson in CT
> :::image type="content" source="../media/viemoshare.png" alt-text="sharevimeo":::
>
> * If receive any playback error while playing a Vimeo video in CT, you need to update [**privacy settings**](https://vimeo.zendesk.com/hc/articles/115015677227-Troubleshoot-player-error-messages) in your Vimeo account.


### How can I allow external videos to play inside Community Training?

Please reach out to our [**HelpDesk**](https://aka.ms/cthelpdesk) for support on this request. 

<!--
1. Login to the Azure portal.
2. Go to App Services from the left menu.

    ![Select App Service.png](../media/Select%20App%20Service%281%29.png)

3. Select the app service belonging to your Community Training instance.
4. Select Configuration under settings from the left menu.

    ![Select Configurations.png](../media/Select%20Configurations%281%29.png)

5. Go under the Applications Settings tab.

    ![Select Application Settings.png](../media/Select%20Application%20Settings.png)

6. Select the setting **AllowEmbedDomains** and update it with the value of the domain you wish to add, as shown in the image below (for example, dailymotion.com).

    ![Allow Embed Domains](../media/AllowEmbedDomains.png)

    ![Allow Embed Domains Editing](../media/AllowEmbedDomainsEditing.png)

    > [!Note]    
    > You can add as many domains as you want separated by comma.

7. Click on save.

    ![Save Application Settings](../media/Save%20Application%20Settings%281%29.png)

    -->

### Does Community Training support SCORM content?

Community Training supports uploading SCORM (version 1.2) packages.

SCORM (Sharable Content Object Reference Model) is a set of technical standards for eLearning software products. SCORM tells programmers how to write their code so that it can “play well” with other eLearning software. It is the de facto industry standard for eLearning interoperability. Learn more about [**SCORM**](https://scorm.com/scorm-explained/one-minute-scorm-overview/)

[**How to upload content to a course**](../content-management/create-content/create-course-category/upload-content-to-a-course.md#option-1-manually-add-content-for-each-lesson-in-a-course)

:::image type="content" source="../media/SCORMupload.png" alt-text="scormuploadimag1":::

### Does Community Training support HTML content?

Yes, rich, dynamic, and interactive HTML content is supported on the platform.  

To add **HTML content** as lesson,

1. Upload a ZIP file containing HTML resources such as HTML, CSS, and JS files.
2. There must be an index.html file at the top level (root directory) within the ZIP file.
3. All resources referenced in the HTML pages must be relative and point to files included in the ZIP file.

    > [!Note]    
    > If interactive content is available as a single HTML file then you directly upload it to the platform. No need to create a zip file.

You can also host rich, dynamic, and interactive content as a web page and add the external web link as a lesson on the portal.

To add **external web link** as a lesson,

1. Paste the external web URL in the textbox in the lesson upload section
2. Learners will not be able to download this content from the mobile app
3. Video content (sources: YouTube, Video, etc.) will render in an inline frame on the portal, the rest of the external web links will open in a new browser window on the web application
4. Third-party hosted content can also be embedded as weblink

To learn what other types of content are supported, refer to the [**Course Management Overview**](../content-management/content-management-overview.md) article.

### Does Community Training support interactive course content?

Yes, any interactive content in HTML format can be added as a lesson in the platform.

### Can I use a Word file as lesson content?

Yes, you can use Word files for lessons. To learn what other types of content is supported, refer to the [**Course Management Overview**](../content-management/content-management-overview.md) article.

### Can I use an Excel file as lesson content?

Yes, you can use Excel files for lessons. To learn what other types of content are supported, refer to the [**Course Management Overview**](../content-management/content-management-overview.md) article.

### Can I use a PowerPoint file as lesson content?

Yes, you can use PowerPoint files for lessons. To learn what other types of content are supported, refer to the [**Course Management Overview**](../content-management/content-management-overview.md) article.

### Can I use eBook as lesson content?

Yes, you can use eBooks in ePUB file format for lessons. To learn what other types of content are supported, refer to the [**Course Management Overview**](../content-management/content-management-overview.md) article.

### Can I upload a PDF file as lesson content?

Yes, you can use PDF files for lessons. To learn what other types of content are supported, refer to the [**Course Management Overview**](../content-management/content-management-overview.md) article.

### Can I upload a Flash file as lesson content?

No, flash-based content is not supported on the platform. To learn what other types of content are supported, refer to the [**Course Management Overview**](../content-management/content-management-overview.md) article.

### Can we add a .swf file as lesson content?

No,  SWF files are not supported on the platform. You will need to convert SWF files to video format before they can be uploaded to the platform.

### Can we upload an audio file such as MP3, WAV, etc. as lesson content?

Yes, you can use audio files for lessons. To learn what other types of content are supported, refer to the [**Course Management Overview**](../content-management/content-management-overview.md) article.

### Can I add multiple language subtitles to a video file?

Community Training allows administrators to add subtitles to videos in more than 180 languages. This additional feature is great for multilingual organizations. [**For adding subtitles**](../content-management/create-content/create-course-category/add-subtitles-or-captions-to-video-content.md) to your video, select the language from the drop-down menu and upload the VTT file that includes the subtitles you want to add. Subtitles must be in the VTT format.

To learn more about the VTT standard, please read it [**here**](https://en.wikipedia.org/wiki/WebVTT).

### What are the different support file formats for video content on the platform?

Community Training supports the following file formats for video content:

MP4, 3GP, 3G2, 3GP2, AVI, MPEG, MPG, WMV, VOB, MKV, FLV, DV, TS, ASF, M4V, MOV

### What are the different support file formats for audio content on the platform

Community Training supports the following file formats for  audio  content:

MP3 & OGG

## Non-graded assessments and graded assessments

### What is the difference between non-graded assessments and graded assessments?

The platform provides two types of assessments in the form of a graded and non-graded assessment containing one or more multiple-choice questions, fill the blanks, true or false or multi answer, multiple choice questions:

- **Non-Graded Assessment** - This serves as a refresher for learners and facilitates revision of a particular lesson. There is no limit to the number of non-graded assessments you can add to a course.

- **Graded Assessment** - This is used to evaluate learners on their proficiency and knowledge in a particular course to measure learning outcomes. Unlike a non-graded assessment, a graded assessment has a limited number of attempts and a passing percentage as specified by the trainer.

Learn more [**here**](../content-management/create-content/create-course-category/add-assessments-to-a-course.md).

### How many graded and non-graded assessments can be there for a course?

There is no limit to the number of non-graded assessments you can add to a course.

### Can we set passing criteria and limit the number of attempts for assessments?

You can define the passing percentage and number of attempts a learner can take the assessment at the time of creation.

For detailed steps, **[go here](../content-management/create-content/create-course-category/add-assessments-to-a-course.md)**.

## Content Download / Upload

### Can learners download course content that is in Word and PowerPoint through web browsers?

Yes, learners will be able to download Office 365 documents such as Word and PowerPoint through the browser.

Please note that video, audio, and other formats can only be downloaded from the mobile app.

### Where can I find the format of Bulk Upload courses?

To use the Bulk Upload course feature, you need to adhere to a specific content structure. Refer to **[this article](../content-management/create-content/create-course-category/upload-content-to-a-course.md#option-2---bulk-upload-lessons)** to learn about the format required for Bulk Upload courses.

### What is the maximum video size that one can upload?

The maximum video size you can upload for a particular lesson is 2 GB.

### Why does the platform encode videos at the time of uploading?

Video encoding is the process of compressing and potentially changing the format of video content, so that it consumes less bandwidth during playback, especially in low connectivity scenarios. Therefore, we encode the video content to allow video streaming in low connectivity scenarios.

### Why does it take time to upload video content in the portal?

Uploading video content includes the process of encoding the content and converting it into multiple resolutions to enable playback in low connectivity scenarios. This process usually takes time and partially depends on your internet speed and platform configuration.

#### How to import my existing course content to Community Training

A: You can bulk upload your existing course contents to Community Training.

For more information, [**go here**](../content-management/create-content/create-course-category/create-a-new-course.md).

### How can one bring content from external websites into Community Training?

The recommended approach is to download the content from external websites and upload it to the Community Training instance.

In case the content on the external website is not owned by the organization or cannot be downloaded, then you can paste the content URL as a lesson in the platform. The content will then be accessible to learners as follows:

1. If the content is hosted on a video-sharing platform like YouTube and Vimeo, learners will be able to view the content inline similar to the uploaded content. However, learners will not be able to download this content and administrators will not be able to track consumption as the lesson will be marked as completed as soon as the learner opens the lesson.

2. All the other content will open in a new browser window (except in mobile applications, where the content will still open inline). learners will see the following message on opening the lesson. When they click on **View Lesson**, the content will open in a new browser window. This is the behavior for content from external sources such as [**Microsoft Learn training**](/training/) and [**Khan Academy**](https://www.khanacademy.org/test-prep/iit-jee-subject/iit-jee-topic).

    ![View lesson](../media/image%28255%29.png)

### What is the difference between uploading videos to the platform versus embedding video links from other sites?

If the video is hosted on external platforms like YouTube then the below features will be compromised:

1. Learners will not be able to download the content on the mobile application and access it when they are offline.

2. Video consumption cannot be tracked by the platform i.e. lesson will be marked as completed as soon as they click on the video irrespective of whether they actually watched the video lessons later or not.

### What is the difference between uploading content v/s linking content from public resources such as YouTube, Microsoft Learn, etc.?

When content is uploaded to the portal, learners get the advantage of features such as offline consumption on mobile apps, auto-optimization based on data bandwidth, detailed analytics, etc. which are not available for content from external sources. Also, external content is marked as completed once it is opened or redirected.

> [!Note]    
> Video content from YouTube platform will be embedded and rendered within the application, other external web links such as Microsoft Learn and LinkedIn Learning will open in a new browser window.

### How do I show language-specific content for a course to learners?

For scenarios when you have a course available in multiple languages, you can automatically assign relevant courses to learners based on their preferred language. Please follow the steps mentioned below:

1) Create multiple versions of the course each containing content in a different language.
  
2) Add a custom field as part learner's profile information to capture a learner's preferred language. Learn how to do it from **[this article](../settings/add-additional-profile-fields-for-user-information.md)**.

3) Next, create a group of users corresponding to each language of your content. You can do so by adding a rule while creating the group. Refer to **[this article](../user-management/organize-users/setup-automatic-user-enrollment-for-a-group-1.md)** to learn how.

4) Finally, assign the language-specific course to each group based on that group's preferred language. Refer to **[this article](../user-management/manage-users/assign-content-to-group-users.md)** to learn how.

### How can an organization create content for  Community Training?

You can create content as per the needs of your training program, using any tool of your choice. Microsoft can help you with your content creation by advising you on best practices and tips to create engaging content for your audience.

Contact us via [**HelpDesk**](https://aka.ms/cthelpdesk) and leave your requirements in the ticket description.  

### I am not able to bulk upload content on the training portal or bulk upload content is failing

Depending upon your network connectivity and the size of the ZIP file, it can take some time to complete the upload operation.  Additionally, if there are issues with the content format or structure of the ZIP file then the system will throw an error message.

Follow the instructions given in **[this article](../content-management/create-content/create-course-category/upload-content-to-a-course.md#option-2---bulk-upload-lessons)** to learn how to properly bulk upload content.

### Bulk upload courses feature is extremely slow and often getting timed out

Depending upon your network connectivity and the size of the ZIP file, it can take some time to complete the upload operation.  Additionally, if there are issues with the content format or structure of the ZIP file then the system will throw an error message.

Follow the instructions given in **[this](../content-management/create-content/create-course-category/upload-content-to-a-course.md#option-2---bulk-upload-lessons)** article to learn how to properly upload content in bulk.

## Edit/Update Courses

### How many courses and lessons can I upload on the platform?

Community Training does not set any numeric limits. Customers can have any number of courses and lessons as required.

### How to 'Add Tags' after a course is published?

You can add/remove the tags even after the course is published, but once you add/remove after publishing the course, you need to click the save option for the changes to replicate.

 :::image type="content" source="../media/add_tag.png" alt-text="Select_offline_sync":::

>[!Note]  
>
>The Add Tags field helps learners search for the content using relevant keywords. You can add one or more tags for each lesson. For example – Smart Farming, Internet of Things,  and Precision Farming.

### Can I restrict learners to go through lessons and courses in a particular sequence like a learning path?

You can define the learning sequence within a course via the restricted lesson ordering feature.

By default, learners can jump to any lesson or assessments throughout a course freely. But there are often when you may need learners to go through the course items in a sequence. This setting will allow you to restrict lesson ordering when creating or editing a course. This ensures that Learners can only consume lessons in sequence. Skipping will not be permitted.

However, setting sequencing paths across courses is not currently supported on the platform. Example: You can force users to complete Course A before Course B is enabled for consumption. Currently, this is something we have on the product roadmap.

### Is there any limit to the Categories and Courses that the administrator can create or upload?

No. There is no limit to the number of categories and courses that the administrator can create or upload. You can upload as many as you like.

### How can I assign a due date for a course on the platform?

 Currently, Community Training doesn’t support the functionality to assign due dates on the platform. But this is something on the product roadmap.

#### How can I track and view learner progress on the platform?

You will be able to track and view user progress from the analytics tab on the admin dashboard.  For further information please visit [**this article**](../analytics/analytics-overview.md).

### How can I add additional resources or exercises as part of a course?

Currently, Community Training doesn't support attaching additional content or exercises as part of courses out-of-the-box. However, customers can achieve this by using third-party tools such as Microsoft Forms or attaching exercise files in Word and embedding them as a lesson in a course.

Example: You can attach Microsoft Forms as an external URL as a lesson with exercises or assignment questionnaires for your learners. On the form, you can enable file upload as required for learners to complete their assignments and easily attach their work. Alternatively, you can share instructions via a Word document attached as a lesson and ask learners to email their work.

### Will I be able to attach downloadable course materials or resources for a course?

Course administrators can have the downloadable links copied to the Word file and attach the document as a lesson for a course. Here are the detailed steps:

* Upload the necessary course materials to services like One Drive, Google Drive, Dropbox, etc.
* Copy the respective shareable links and paste them into a Word file.
* Upload the Word file to the platform as a lesson and title it as Downloadable resources or Exercise file.

### Can we unpublish a course?

Once the course is published on the platform, you can't unpublish it but you can hide it from the course library by changing its Learner Enrollment type to "Only admin can enroll learners". This will ensure that the course is not available or listed in the course library. For more details, see step 6 in [**this article**](../content-management/create-content/create-course-category/create-a-new-course.md#option-1---create-a-single-course-in-a-category).  

> [!IMPORTANT]    
> In case there are users who are already enrolled for the course, they will continue to see the course on the My Course Page.

### What happens to existing learners’ certificates when I update content for a course?

When a new lesson is added to a course, the completion percentage of learners for that course will decrease and their completion status for the course will be changed to ‘not completed’. If the certificate is enabled, then it would have already been generated for learners who had completed the course before, and they will still be able to see their certificates even after the addition of the new lesson.

When a lesson is removed from the course, the completion percentage of learners for that course will increase and the status of the course will be changed to completed accordingly. If the certificate is enabled, all learners will receive the certificate - if they have completed all the lessons.

### How does updating or changing content affect course completion for existing learners?

There are multiple scenarios that could alter a learner’s progress:

1. **When content gets deleted**: Overall course weightage is derived based on the number of lessons in a course. When existing lessons are deleted, based on the weightage, the course progress percentage will be automatically modified. For learners who have already completed the course, there won't be any changes to their course completion.

2. **When new content is added**: When new content is added to a course, the overall course progress percentage will be altered. For learners who have already completed the course and obtained their certificate, their certificate will be locked and no longer be available. In order to re-obtain their certificate learners must go through the required assessment criteria based on the newly added contents.

Example: Cathy enrollees a course, completes the assessment, and obtains a certificate. After a few days when new lessons and assessments are added to the course, Cathy's certificate is automatically blocked and in order to re-obtain the certificate, Cathy is required to complete the newly added assessment criteria.

### Can I change the order of lessons in a course?

Yes, you can change the order of the lessons by using drag and drop functionality on the course details page. For more details, refer to [**this article**](../content-management/create-content/create-course-category/publishing-course.md).

### Can I add content in multiple languages for the same course on the platform?

Yes, you can upload the content in more than one language to make it available for the learner in the language they desire. 

### Can we use language subtitles in a video lesson?

Yes, you may insert language subtitles in the video itself and upload it as a lesson.

### Can we set a due date for the course completion?

Currently, the platform doesn't have a concept of assigning a due date for a course but it is on the product roadmap.

### Can we restrict a user from moving from one lesson to the next unless they have finished the previous lesson?

Yes, you can enable Lesson Sequencing while creating or editing a course. This will ensure that the next lesson is enabled for the user only once he/she goes through the previous lesson.

### Can we restrict users from moving from one course to another unless they have finished the current course?

Currently, there is no restriction on the sequence of the courses a learner has to go through. A learner can go through the enrolled courses in their preference order. We have plans to add a functionality in the future to restrict learners to go through courses in a particular sequence as defined by the administrator i.e. learners will not be allowed to go to Course #2 unless Course #1 is completed.  

In the meantime, as a workaround, admins can name courses under a category such that learners can logically follow the sequence (e.g. 01 – Work with computers, 02 – Access online, etc.) or they can mark courses as admin only to ensure learners will be enrolled to a new course only when existing courses are complete. For more details, see step 6 in [**this article**](../content-management/create-content/create-course-category/create-a-new-course.md#option-1---create-a-single-course-in-a-category).

### How to delete a course on the platform?

Organization administrators and category administrators can delete a course from the Course Tab on the management portal.  Refer to the image below for an illustration of the process.

![Delete a course](../media/image%28314%29.png)



Please reach out to us [**via HelpDesk**](https://aka.ms/cthelpdesk) if you have any further queries.