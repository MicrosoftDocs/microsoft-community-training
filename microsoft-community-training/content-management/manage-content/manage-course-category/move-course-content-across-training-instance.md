---
title: Move Course content across training instance
original-url: https://docs.microsoftcommunitytraining.com/docs/move-course-content-across-training-instance
author: nikotha
ms.author: nikotha
description: If you are managing multiple instances of Microsoft Community Training platform each catering to different target audiences but with overlapping course content -  there is an easy way for administrator to move content across instances in few simple clicks.
ms.service: azure
---

# Move Course content across training instance

If you are managing multiple instances of Microsoft Community Training platform each catering to different target audiences but with overlapping course content -  there is an easy way for administrator to move content across instances in few simple clicks.

Microsoft Community Training allows you to download single or multiple courses within a category from one platform instance in a ready to use zip file that can be uploaded on another instance.

In this article, you will learn more about how to export course content from one training portal instance and import the same course content to another instance.

## Step 1 - Export course content from a training portal instance

1. On the Microsoft Community Training portal instance from where you want to download the course content, after login [**switch to administrator view**](../../../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal).

2. Under **Courses** tab, select the Category or Course that you want to download.

    ![Under courses tab](../../../media/image%28219%29.png)

3. Click or tap on the **(...) More** option and choose **Download category/course content** from the pop-up menu.

4. On the file explorer, rename the zip file and click on the Save button to start the download progress. Depending upon the size of the content and internet speed, download time will wary.

    ![Save](../../../media/image%28220%29.png)

> [!Tip]
> Best Practices
>
> 1. If the courses for a given category are small in size (i.e. total size of category courses is less than 2 GB), then export all the courses for the category together i.e. select the category and choose the download category content option
> 2. If the courses for a given category are large in size, then export courses individually under the category i.e. select a course under given category and choose the download course content

> [!WARNING]
> Please do not edit the downloaded file to inadvertently corrupt the course content. Here is sample format of the zip file:
>
> ![Sample zip](../../../media/image%28221%29.png)

## Step 2 - Import the course content to another training portal instance

1. On the Microsoft Community Training portal instance where you want to upload the course content, after login [**switch to administrator view**](../../../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal).

2. Under Courses tab, [**create a new category**](../../create-content/create-course-category/create-a-category.md) or select an existing category where you want to upload the content

3. Click or tap on the **(...) More** option and choose **Bulk Upload courses** from the pop-up menu.

    ![Bulk Upload courses](../../../media/image%28222%29.png)

4. Next, choose the previously downloaded zip file as part of the bulk upload course workflow. See detailed steps [**here**](../../create-content/create-course-category/create-a-new-course.md#option-3---create-multiple-courses-in-a-category).

    > [!IMPORTANT]
    > For step 4, skip the prerequisite part and directly jump to the actual steps of bulk uploading courses to the platform.

5. Once the courses are imported successfully, you will see the imported courses in the new instance to be exact replica of the courses in the previous instance i.e. for each course,  all the course details (like description, thumbnails, enrollment type, etc.) as well as the content (like lessons, practice quiz and exam) will be same.
