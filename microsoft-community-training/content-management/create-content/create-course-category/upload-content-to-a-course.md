---
title: Upload content to a course
original-url: https://docs.microsoftcommunitytraining.com/docs/upload-content-to-a-course
author: nikotha
ms.author: nikotha
description: Lesson is a single unit of learning content in the form of Video, PDF, Word or PPT file for a course.
ms.prod: learning-azure
---

# Upload content to a course

A Lesson is a single unit of content included in a course and can be a video, PDF, Word or Powerpoint file. You can have one or more lessons for a course, depending on the complexity of the subject.

On the Community Training Portal, there are two ways to upload content for a course:

1. Upload the content for each lesson manually.
1. Use the bulk upload feature to upload multiple lessons at one go.

In this article, you will learn how to upload content to a course on the management portal.

## Permissions Level

The CT management portal provides role-based permission levels. The table below shows which administrative roles can upload content to a course in the portal.

| Access Level  | Upload content to a course |
| --- | --- |
| Global Administrator | Yes |
| Organization Administrator | Yes |
| Learning Path Administrator | Yes |
| Category Administrator | Yes|
| Course Administrator | Yes |
| Group Administrator | No |

## Option 1: Manually add content for each lesson in a course

You can manually upload the required content to a course using the New Lesson option on the course details page.

1. Log in to the Community Training portal and [**switch to administrator view**](../../../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal).

1. Under the **Course** tab, select the course from the category you want to upload content to.

    ![course selection](../../../media/course%20selection.png)

1. Select **New Lesson**, to create a new lesson for the course.

    :::image type="content" source="../../../media/New Lesson v2.PNG" alt-text="New lesson":::

1. Enter the title of the lesson as the **Lesson Name**, for example, *What is Smart Farming?*.

1. Add content to the lesson either by uploading directly to the portal or embedding an external web link.

    1. **To upload content** - Click **Upload** and choose the content file you want to upload. The format of the content must be Video, Audio, PDF, EPUB, Word, Excel, PowerPoint or HTML.
    1. **For embedding external web link** - Paste the URL of the web page in the textbox available. The web page can be a YouTube video link or any other web link. For example: [Sample YouTube Video](https://youtu.be/hWY8t_QSOU4). **Learners will not be able to download this content from mobile app.**

    >[!Note]  
    >You can also **upload a SCORM file** in .zip format. After attaching the zip file for the SCORM content, please mark the check box as well to ensure successful validation of the file.:::image type="content" source="../../../media/New Lesson SCORM.PNG" alt-text="SCORM upload":::

1. Enter tags in the **Add Tags** field to help learners search for the content using relevant keywords. You can add one or more tags for each lesson. For example – *Smart Farming, Internet of Things, Precision Farming*

1. If you have uploaded content from your computer, the files would be visible in the **Attached files** section. You can click on **Replace file** if you wish to upload another file.
:::image type="content" source="../../../media/New Lesson replace file.PNG" alt-text="replace uploaded content":::

1. Click or tap **Save**  icon the to upload the content for the lesson.

    ![Upload progress](../../../media/Upload%20progress.png)

    > [!IMPORTANT]  
    > Click or tap the **Save** button to complete the add lesson operation. If you perform any other activity before clicking on the Save button, then all your progress will be lost.

1. For video content, after upload is completed, the system will start the encoding process to create multiple copies to optimize streaming on different devices and network quality. You can check the encoding status on the course page as shown below.

    ![Encoding status on the course page](../../../media/image%2849%29.png)

    > [!Note]  
    > Depending upon the video size, it can take upto 20 minutes to complete the encoding process.

1. Repeat Steps 2 to 6 to add more lessons to the course.

### Supported Lesson Content Formats

The following formats are supported:
>*  **Video lessons**: MP4, 3GP, 3G2, 3GP2, AVI, MEPG, MPG, WMV, VOB, MKV, FLV, DV, TS, ASF, M4V, MOV
> **Audio Lessons**: MP3 & OGG
>*  **Other formats**: PDF, PPT, PPTX, DOCX, EPUB, HTML, External Links
>*  **SCORM content**: Content compliant to  ***SCORM v1.2*** is supported on the platform. Make sure your folder is .zip and it also has **`imsmanifest.xml`** file

Community Training does not have [file size restrictions on upload](../../../frequently-asked-questions/faqs-course.md) for most formats but the [App Service plan](https://azure.microsoft.com/pricing/details/app-service/windows/) for your instance might restrict the total upload size (multiple uploads across different devices for the same instance) at a time:
* Standard - maximum upload size is 18GB
* Premium - maximum upload size is 56GB

Refer [here](https://github.com/projectkudu/kudu/wiki/Understanding-the-Azure-App-Service-file-system) for more information.
> [!Note]  
> **Rich, Interactive and Dynamic Content**
>
> To add rich, dynamic content such as interactive lessons and simulations as either upload HTML content or embed an external web link on the portal.
>
> To add **HTML Content** as a lesson:
>
> 1. Upload a ZIP file containing HTML resources such as HTML, CSS and JS files
> 1. There must be an index.html file at the top level (root directory) within the ZIP file
> 1. All resources referenced in the HTML pages must be relative and point to files included in the ZIP file

To include external content as a lesson, add an **external web link**.

1. Paste the external web URL in the textbox in the lesson upload section.
1. Learners will not be able to download this content from mobile app.
1. Content other than videos (sources: YouTube, Vimeo etc.) will render in a new browser window on the web application.
1. Third party hosted content can also be embedded as web link.

Once you have completed uploading lessons, you can [**Add assessments**](add-assessments-to-a-course.md) or [**publish the course**](publishing-course.md) making it available to learners.


## Option 2 - Bulk Upload lessons

Similar to the [**Bulk Upload Courses**](create-a-new-course.md#steps-for-bulk-upload-courses-to-the-portal), you can use the Bulk Upload Lessons feature to save time and upload multiple lessons for a course in one action.

In this topic, you will learn how to add multiple lessons for a course in the management portal.

### Prerequisites

The content for the lessons must be structured correctly and available in the required file format <!-- ([**Sample bulk upload lessons file**](../../../media/bulk-upload-sample-lessons.zip)) --> on your local machine. The steps below provide information on how to get your content ready for bulk upload lessons:

1. Copy the content files which you want to upload as lessons for a course on your local machine.

1. Select all the files you want to upload and compress them into a ZIP file. **Right click > Send to > Compressed (zipped) folder**.

1. Ensure there are no folders and unsupported content files inside the ZIP file

> [!Note]  
> Assessments can't be added to the course via bulk upload functionality unless [**you are exporting courses from one instance to another**](../../../content-management/manage-content/manage-course-category/move-course-content-across-training-instance.md). You will need to add them via [**an assessement workflow**](../../../content-management/create-content/create-course-category/add-assessments-to-a-course.md).

### Steps for bulk upload lessons for a course

1. Login  to the CT portal and [**switch to administrator view**](../../../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal).

1. Select the **More (...)** icon to the right of the course name to bulk upload lessons for a course.

1. Select **Bulk Upload Lessons (Preview)** from the drop-down menu.
    ![Bulk upload lesson drop down](../../../media/Bulk%20uplod%20lesson%20drop%20down.png)

1. Using the file picker, select the ZIP file which contains the content to upload.

    ![Bulk upload lesson window](../../../media/Bulk%20uplod%20lesson%20window.png)

1. Wait for file upload operation to be completed. **Do not close the browser window at this point.**

    ![Upload successful](../../../media/Upload%20successful.png)

    > [!Note]  
    > Depending upon your network connectivity and size of the ZIP file, it can take some time to complete the upload operation.

1. After upload, you will see the following message on the top-right corner which indicates that content file was successfully uploaded to the portal for processing.

    ![Bulk upload successful](../../../media/Bulk%20upload%20successful.png)

    > [!WARNING]  
    > If there are issues with the content format or structure of the ZIP file then the system will throw an error message.

1. Once the upload is complete, you can enter tags in the **Add Tags** field to help learners search for the content using relevant keywords. You can add one or more tags for each lesson.

1. Click the **Save** icon to update the tags for the lessons in a course.

Once the lessons are uploaded, you can [**add assessment**](add-assessments-to-a-course.md) or [**publish course**](publishing-course.md) for learners to consume the content via the web portal or mobile application.  

> [!Note]  
> For video content, processing can take hours depending upon the number of videos, size and configuration of media service end point. This processing is a non-blocking operation and admins are allowed to do other tasks.


Please reach out to us [**via HelpDesk**](https://aka.ms/cthelpdesk) if you have any further queries.
