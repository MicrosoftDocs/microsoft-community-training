---
title: Move Course content across training instance
original-url: https://docs.microsoftcommunitytraining.com/docs/move-course-content-across-training-instance
author: nikotha
ms.author: nikotha
description: If you are managing multiple instances of Community Training platform each catering to different target audiences but with overlapping course content -  there is an easy way for administrator to move content across instances* in a few simple clicks*.
ms.prod: learning-azure
---

# Move Course content across training instance

If you are managing multiple instances of the Community Training platform, each catering to different target audiences but with overlapping course content, there is an easy way for administrators to move content across instances.

Community Training allows you to download single or multiple courses within a category from one platform instance in a ready to use zip file that can be uploaded to another instance.

In this article, you will learn how to export course content from one training portal instance and import the same course content to another instance.

## Step 1 - Export course content from a training portal instance

1. Log on to the Community Training portal instance from where you want to download the course content then [**switch to administrator view**](../../../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal).

1. Under the **Courses** tab, select the Category or Course that you want to download.

    ![Select courses or category content tab.](../../../media/image%28219%29.png)

1. Select **(...) More** and choose **Download category/course content** from the pop-up menu.

1. On the file explorer, rename the zip file and click on the Save button to start the download progress. The time taken to download will vary depending on the file size and internet speed.

    ![Save.](../../../media/image%28220%29.png)

> [!TIP]
> Best Practices
>
> 1. If the courses for a given category are small in size (i.e. total size of category courses is less than 2 GB), then export all the courses for the category together i.e. select the category and choose the download category content option.
> 1. If the courses for a given category are large in size, then export courses individually under the category i.e. select a course under given category and choose the download course content.

> [!WARNING]
> Please do not edit the downloaded file as this can inadvertently corrupt the course content. Here is sample format of the zip file:
>
> ![Select zip file.](../../../media/image%28221%29.png)

## Step 2 - Import the course content to another training portal instance

1. Log on to the Community Training portal instance where you want to upload the course content and [**switch to administrator view**](../../../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal).

1. Under **Courses** tab, [**create a new category**](../../create-content/create-course-category/create-a-category.md) or select the existing category you want to upload the content to.

1. Select **(...) More** then **Bulk Upload courses** from the pop-up menu.

    ![Bulk Upload courses].(../../../media/image%28222%29.png)

1. Next, locate and open the downloaded zip file then select **Upload**.  As with the download, the time taken to upload will vary depending on the file size and internet speed.

1. Once the courses are imported successfully, you will see the courses in the new instance as an exact replica of the courses in the previous instance i.e. for each course, all the course details (like description, thumbnails, enrollment type, etc.) as well as the content (like lessons, non-graded assessments and graded assessments) will be same.
