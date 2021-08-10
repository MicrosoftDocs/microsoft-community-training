---
title: Upload content to a course
original-url: https://docs.microsoftcommunitytraining.com/docs/upload-content-to-a-course
author: nikotha
ms.author: nikotha
description: Lesson is a single unit of learning content in the form of Video, PDF, Word or PPT file for a course.
ms.prod: azure
---

# Upload content to a course

Lesson is a single unit of learning content in the form of Video, PDF, Word or PPT file for a course. We can have one or more lessons for a course depending upon how admin decides to structure the course.

On the Microsoft Community Training Management Portal, there are two ways to upload content for a course. Admin can either upload content for each lesson manually or use bulk upload lesson feature to upload list of lessons at one go.

In this article, you will learn more about how to upload content to a course on the management portal in the respective sections:

## Permissions Level

The Microsoft Community Training
management portal provides role-based administration and depending upon the type of access level admins can perform an action on the portal. Table below shows administrative role which are allowed to upload content to a course in the portal:

| Access Level  | Upload content to a course |
| --- | --- |
| Global Administrator | Yes |
| Organization Administrator | Yes |
| Learning Path Administrator | Yes |
| Category Administrator | Yes|
| Course Administrator | Yes |
| Group Administrator | No |

## Option 1 Manually add content for each lesson in a course

You can manually upload the required content to a course using New Lesson option on the course details page.

1. On the Microsoft Community Training portal, login and [**switch to administrator view**](../../../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal).

2. Under Course tab, select the course under a category in the list  to which you want to upload the content.

    ![course selection](../../../media/course%20selection.png)

3. Select **New Lesson**, to create a new lesson for the course.

    ![New Lesson](../../../media/New%20Lesson.png)

4. Enter **Lesson Name**. The lesson name is the title of the lesson. For example, *What is Smart Farming*?

5. Add content to the lesson either by uploading content directly to the portal or embedding an external web link.

    a. **For uploading content** - Click or tap **Upload** button and choose the content file you want to upload for the lesson. The format of the content must be Video, Audio, PDF, EPUB, Word, Excel, PowerPoint or HTML.

    > [!NOTE]
    > Supported Lesson Content Formats
    >
    > **Video lessons**: MP4, 3GP, 3G2, 3GP2, AVI, MEPG, MPG, WMV, VOB, MKV, FLV, DV, TS, ASF, M4V, MOV
    > **Audio Lessons**: MP3 & OGG
    > **Other formats**: PDF, PPT, PPTX, DOCX, EPUB, HTML, External Links

    b. **For embedding external web link** - Paste the URL of the web page in the textbox available. The web page can be a YouTube video link or any other web link. For example: [Sample YouTube Video](https://youtu.be/hWY8t_QSOU4). **Learners will not be able to download this content from mobile app.**

    > [!NOTE]
    > Rich, Interactive and Dynamic Content
    >
    > To add rich, dynamic content such as interactive lessons and simulations as lessons either upload HTML content or embed an external web link on the portal.
    >
    > To add **HTML Content** as lesson,
    >
    > 1. Upload a ZIP file containing HTML resources such as HTML, CSS and JS files
    > 2. There must be an index.html file at the top level (root directory) within the ZIP file
    > 3. All resources referenced in the HTML pages must be relative and point to files included in the ZIP file
    >
    > To add **external web link** as lesson,
    >
    > 1. Paste the external web URL in the textbox in the lesson upload section
    > 2. Learners will not be able to download this content from mobile app
    > 3. Content other than videos (sources: YouTube, Vimeo etc.) will render in a new browser window on the web application
    > 4. Third party hosted content can also be embedded as web link

6. Enter tags in the **Add Tags** field to help learners search for the content using relevant keywords. You can add one or more tags for each lesson. For example – *Smart Farming, Internet of Things, Precision Farming*

7. Click or tap **Save**  icon the to upload the content for the lesson.

    ![Upload progress](../../../media/Upload%20progress.png)

    > [!IMPORTANT]
    > Click or tap the **Save** button to complete the add lesson operation. If you perform any other activity before clicking on the Save button, then all your progress will be lost.

8. For video content, after upload is completed, the system will start the encoding process to create multiple copies to optimize streaming on different devices and network quality. You can check the encoding status on the course page as shown below.

    ![Encoding status on the course page](../../../media/image%2849%29.png)

    > [!NOTE]
    > Depending upon the video size, it can take upto 20 minutes to complete the encoding process.

9. Repeat **Step 2 to Step 6 to continue to add more lessons** for the course.

**Next>** [**Add practice quiz and exams**](add-practice-quizzes-and-exam.md) to the course or [**publish the course**](publishing-course.md) for the learners

> [!TIP]
> Whenever you are performing content upload, [**scale up your platform configuration**](../../../infrastructure-management/configure-your-platform-infrastructure/4_scale-up-instance-configuration.md) to reduce the upload and processing time for the content)

## Option 2 - Bulk Upload lessons

Similar to the [**Bulk Upload Courses**](create-a-new-course.md#steps-for-bulk-upload-courses-to-the-portal), administrator can use the Bulk Upload Lessons feature to save time and add multiple lessons and upload content for a course at once.

In this topic, you will learn the simple steps to add multiple lessons for a course in the management portal.

### Prerequisite for using Bulk Upload Lessons feature

Before you start doing the bulk upload of lessons for a course, you need to make sure the content for the lessons is structured correctly and available in the required file format <!-- ([**Sample bulk upload lessons file**](../../../media/bulk-upload-sample-lessons.zip)) --> on your local machine. The steps below provide information on how to get your content ready for bulk upload lessons:

1. Copy the content files which you want to upload as lessons for a course on your local machine.

2. Select all the files you want to upload and compress them into a ZIP file. **Right click > Send to > Compressed (zipped) folder**.

3. Ensure there are no folders and unsupported content files inside the ZIP file

> [!NOTE]
> Practice quizzes and exams cannot be added to the course via bulk upload functionality unless [**you are exporting courses from one instance to another**](../../../content-management/manage-content/manage-course-category/move-course-content-across-training-instance.md).
>
> The admins have to add them via [**add quiz and exam workflow**](../../../content-management/create-content/create-course-category/add-practice-quizzes-and-exam.md).

### Steps for bulk upload lessons for a course

1. On the Microsoft Community Training  platform, login and [**switch to administrator view**](../../../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal).

2. Click or tap **More (...)** icon to the right of the course name to bulk upload lessons for a course.

    ![Bulk upload lesson drop down](../../../media/Bulk%20uplod%20lesson%20drop%20down.png)

3. Click or tap **Bulk Upload Lessons (Preview)** from the drop-down menu.

4. Using the file picker, select the ZIP file which contains course content for bulk upload.

    ![Bulk upload lesson window](../../../media/Bulk%20uplod%20lesson%20window.png)

5. Using the file picker, select the ZIP file which contains content for uploading lessons in bulk.

6. Wait for file upload operation to be completed. **Do not close the browser window at this point.**

    ![Upload successful](../../../media/Upload%20successful.png)

    > [!NOTE]
    > Depending upon your network connectivity and size of the ZIP file, it can take some time to complete the upload operation.

7. After upload, you will see the following message on the top-right corner which indicates that content file was successfully uploaded to the portal for processing.

    ![Bulk upload successful](../../../media/Bulk%20upload%20successful.png)

    > [!WARNING]
    > If there are issues with the content format or structure of the ZIP file then the system will throw an error message.

8. Once the upload is completed, you can enter tags in the **Add Tags** field to help learners search for the content using relevant keywords. You can add one or more tags for each lesson.

9. Click on the **Save** icon to update the tags for the lessons in a course.

**Next>** Once the lessons are uploaded, you can [**add assessment**](add-practice-quizzes-and-exam.md) or [**publish course**](publishing-course.md) for learners to consume the content via the web portal or mobile application.  

> [!NOTE]
> For video content, processing can take hours depending upon the number of videos, size and configuration of media service end point. This processing is a non-blocking operation and admins are allowed to do other tasks.
