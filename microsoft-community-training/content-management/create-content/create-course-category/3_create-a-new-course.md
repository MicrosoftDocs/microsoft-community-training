---
title: Create a new course
original-url: https://docs.microsoftcommunitytraining.com/docs/create-a-new-course
---

# Create a new course

A Course is a collection of lessons and assessments. Once a course is created, you can upload content and add practice quizzes and exam in a structured format for learners to consume the course content through the web portal or mobile application.  

During course creation, the course administrator will have complete control over configuration options like course description, enrollment and certification.

In this article, you will learn more about how to create single and multiple course(s) on the platform in the respective sections:

### Permissions Level
The Microsoft Community Training management portal provides role-based administration and depending upon the type of access level the administrators can perform an action on the portal.

The table below shows administrative role which are allowed to create courses in the portal:

| Access Level  | Create a new course |
| --- | --- |
| Global Administrator | Yes |
| Organization Administrator | Yes |
| Learning path Administrator | Yes |
| Course Administrator | No |
| Category Administrator  | Yes |
| Group Administrator | No |

## Option 1 - Create a single course in a category

In this topic, you will learn  simple steps to create a single course in the Microsoft Community Training  platform. Before executing the below steps, [**switch to administrator view**](https://microsoftindia.document360.io/docs/configure-platform#step-2--switch-to-administrator-view-of-the-portal) on the training portal:

1.	Click  on ![Plus icon](../../../media/Plus%20icon.png) or  **More (...)** icon on the category list pane to create course under a category.
![New course drop down menu\(1\)](../../../media/New%20course%20drop%20down%20menu%281%29.png)
2.	Click or tap **New Course**. Skip this step if you choose ![Plus icon](../../../media/Plus%20icon.png) option in step1.
![image.png](../../../media/image%28253%29.png)

3.	Enter the **Course Name**. The course name is the course title that learners would see on the web portal and mobile app.  For example: *AI for Agriculture.*

4.	Enter the **Course Description**. The course description is a short summary which informs a learner about course content at the time of registration. For example: *Farming in Agriculture*.

5.	Choose **Enable certificate**. This option enables the administrator to award certificate to learners after the course completion.

> [!NOTE]
> Organizations can [**customize the certificate template**](https://microsoftindia.document360.io/v1/docs/configure-the-certificate-template) awarded to the learners at the time of course completion.

6.	Choose **Restrict lesson ordering**. This option enables the administrator to restrict the learners to consume the lessons in sequence. Learners will NOT be allowed to skip lessons within a course if this option is enabled.
> [!TIP]
>  You can use restrict lesson ordering to **create learning paths** on the platform to cutomize the learning experience for each learner.
For example, trainers can pre-assess a learner's existing knowledge of the topic in the initial lessons and practice quiz and then guide the learner to continue in the current course or advice to first complete another course(s) on the platform before returning to the current course.

7.	The administrator can configure the Learner Enrollment type for the course. We have three enrollment types available for the online courses that can be uploaded to the portal: 

    * **Automatically enroll all learners**: This option ensures that all the registered learners are automatically registered to a course when logged in and it enables the administrator to mandate some of the courses to the learners.

    * **Self-enroll (Allow users to enroll on their own)**: This option allows the administrator to create courses that allow the learners to search and self-register to the course.

    * **Only admin can enroll learners**: This option allows the administrator to keep the content private while the content is still being prepared. Administrators reserve the right to register learners and to make the courses available for a wider audience. Admin only courses are not shown in the course library.

> [!TIP]
> All the mandatory courses should be marked as auto-enrolled. Also, if there are advance courses on any topics, then mark them as Admin enrolled and assign the course manually to the  learners who have completed the basic course.

8.	Click or tap **Upload** to upload option to open file picker and select an image file as Course Thumbnail. 

9. Click or tap **Create** button to create the course.

**Next>** Once a course is created, the administrator can start [**uploading the content for the course**](../create-course-category/4_upload-content-to-a-course)

> [!WARNING]
> Best Practices
> 
> Use numbering as prefix like  01, 02, 03, 04, 05 etc in the course name as they are alphabetically stacked. Order of courses can be changed by editing the name or numbers in edit course dialogue box.

## Option 2 - Create multiple courses in a category

The easiest way to create courses and upload content in the learning portal is to leverage the **Bulk Upload Courses**  feature. Administrators can save time by creating multiple courses and uploading content at once using the Bulk Upload Courses functionality. 

In this topic, we will learn the simple steps to create multiple courses under a category in the management portal. Before executing the below steps, [**switch to administrator view**](https://microsoftindia.document360.io/docs/configure-platform#step-2--switch-to-administrator-view-of-the-portal) on the learning portal:

### Prerequisite for using Bulk Upload Courses feature

Before you start doing the bulk upload of courses under a category, you need to make sure the course content is structured correctly and available in the required file format <!--([**Sample bulk upload course file**](../../../media/bulk-upload-sample-courses.zip))--> on your local machine. The steps below provide information on how to get your content ready for bulk upload courses:

1.	Create a folder on your local machine with the course name you want to create on the portal.

2.	Copy the content you want to add as lessons to the course inside the folder created in **Step 1**.

3.	If required, repeat #1 and #2 above to create and upload multiple courses together .

4.	Ensure that there are no sub-folders inside any folder with course names. Folders with course names should only contain lessons file as shown in the image below:
![Course format](../../../media/Course%20format.png)

5.	Select all the folders you want to upload and compress them into a ZIP file. **Right click > Send to > Compressed (zipped) folder**.

6.	Once the ZIP file is created, your content is ready for bulk upload. You can rename the ZIP file if required. 

> [!IMPORTANT]
> Course Details (like thumbnail, description, enrollment type, etc.), Practice quizzes and exams cannot be added to the courses via bulk upload functionality unless [**you are exporting courses from one instance to another**](../../manage-content/manage-course-category/6_move-course-content-across-training-instance). The admins have to add them manually later.
### Steps for bulk upload courses to the portal

1.	Click or tap **More (...)** icon on the category list pane to bulk upload the courses under a category.
![Bulk uplod courses drop down](../../../media/Bulk%20uplod%20courses%20drop%20down.png)

2.	Click or tap **Bulk Upload Course (Preview)** from the drop-down menu.

3.	Using the file picker, **select the ZIP** file which contains course content for bulk upload.
![Upload course window](../../../media/Upload%20course%20window.png)

4.	Wait for file upload operation to be completed. **Do not close the browser window at this point**.
![Upload complete course](../../../media/Upload%20complete%20course.png)

> [!NOTE]
> Depending upon your network connectivity and size of the ZIP file, it can take some time to complete the upload operation.

5.	After upload, you will see the following message on the top-right corner which  indicates that content file was successfully uploaded to the portal for processing.

![Bulk upload successful](../../../media/Bulk%20upload%20successful.png)

> [!WARNING]
>Error
> 
> If there are issues with the content or structure of the zip file then the upload operation will fail.)

6. On the course details page, progress status will be updated at regular interval. Refresh (Press F5) the page in case you don't see the newly uploaded courses on the portal.

> [!NOTE]
> For video content, processing can take hours depending upon the number of videos, size and configuration of media service end point. This processing is a non-blocking operation and admins are allowed to do other tasks)

7.	Once the content is processed, you can add course description, change enrollment type, enable certificate, etc. as per your requirement. By default, course details are set to following:
    ``` Shell
    a.	Course Name – Folder Name 
    b.	Lesson Name – File Name
    c.	Course Description – Null
    d.	Course Thumbnail - Null 
    e.	Enable certificate – unchecked
    f.   Restrict lesson ordering - unchecked
    g.	Enrollment type – Self enrollment
    ```

**Next>** Once the course is uploaded, you can [**add assessments**](https://microsoftindia.document360.io/docs/create-practice-course-and-exam)  or [**publish the course**](https://microsoftindia.document360.io/docs/publishing-course) for learners to consume the content via the web portal or mobile application.

> [!TIP]
> When performing bulk upload course operations,  [**scale up your platorm configuration**](../../infrastructure-management/configure-your-platform-infrastructure/4_scale-up-instance-configuration) to reduce the upload and processing time for the content.)

<!---
Alternatively, you can check the step by step video tutorial for bulk upload content:
 @(Embed)(../../../media/Bulk%20Upload%20Content(1).mp4) 
--->
