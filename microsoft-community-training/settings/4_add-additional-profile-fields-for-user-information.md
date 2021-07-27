---
title: Customize profile information for the learners on the platform
original-url: https://docs.microsoftcommunitytraining.com/docs/add-additional-profile-fields-for-user-information
author: nikotha
ms.author: nikotha
description: By default, learners will be asked for their first name, last name and profile photo on sign up. As an organization, you can capture additional information at the time of login and display privacy terms and conditions for the learners.
ms.prod: azure
---

# Customize profile information for the learners on the platform

By default, learners will be asked for their first name, last name and profile photo on sign up. As an organization, you can capture additional information at the time of login and display privacy terms and conditions for the learners. This will be useful in managing and organizing users, assigning them courses and tracking analytics. Examples of additional information can be location, job role, language, topics of interest etc. 

For example, a healthcare organization has different course content for different job roles: staff, admins, nurses and doctors. They would like to assign a respective course to every learner depending on their job role. To achieve this, they would create an additional profile field called Role and provide four values as options: staff, admin, nurse and doctor. When a learner signs up on the portal for the first time, she will be asked to fill her profile by populating the role field.

Learn how to auto-enroll users to a specific course based on their profile information via the below articles:
* [**Setup automatic user enrollment for a group**](../user-management/organize-users/5_setup-automatic-user-enrollment-for-a-group-1.md)
* [**Assign courses to users in the group**](../user-management/manage-users/2_assign-content-to-group-users.md)

In this article, you'll learn how to customize profile information by creating additional profile fields and adding privacy terms and conditions on the management portal.

### Permissions Level
The Microsoft Community Training management portal provides role-based administration and depending upon the type of access level administrator can perform an action on the portal.  Table below shows administrative roles that can customize profile information for learners.

|Access Level	| Customize profile information |
|---|---|
|Global Administrator| Yes |
|Organization Administrator |No|
|Category Administrator	|No|
|Learning Path Administrator|No|
|Course Administrator	|No|
|Group Administrator	|No|

## Steps to create additional profile fields

1. Login to the Microsoft Community Training portal and [**switch to administrator view**](../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal)

2. Click on **Settings tab** from the left navigation panel and select  Additional Profile fields options from the list

![Settings tab](../media/image%28380%29.png)

3. Select the type of profile field to add. Profile fields can be of three types:
   1. **Text field** - Use this type of field to capture information which are unique to every learners such as Email address, phone number,  employee/student ID, etc.  
   2. **Single choice** -  Use this type of field when you want learners to choose 1 value among the finite set of options. Use this field to capture learner information such as Job Role, Department, Center Location, etc. 
   3. **Multiple choice** - Use this type of field when you want learners to choose 1 or more values among the finite set of options. Use this field to capture learner information such as Topics of Interest, Learning Preferences, etc.
        
   > [!WARNING]
   > - For Single and Multiple choice field, you can add as many options as you prefer.
   > - In total, you can add up to 15 additional fields.

4. Toggle the required option to mark each profile field as either, 
   1. **Mandatory**: Learners are compulsorily required to fill in mandatory fields after logging in.
   2. **Hidden**: Learners will not be able to view this field, such fields can be used by administrators for internal management.
   3. **Read-only**: Learners will be able to view the profile field but not edit it. 
   ![Read-only](../media/image%28327%29.png)
   > [!NOTE]
   > Any change in a new or existing profile field will be applicable to new and existing leaners on the platform.
 
5. Once you have added the fields, click on **Publish**. You’ll be asked to confirm by typing Publish again.

> [!CAUTION]
> Ensure you click on Publish. Otherwise, the changes you made will be lost.

## Add Privacy Terms and Conditions 
You can include a link to privacy terms that will be shown to users on the portal when they view their profile information post login.

1. Login to the Microsoft Community Training portal and [**switch to administrator view**](../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal)

2. Click on **Settings tab** from the left navigation panel and select **General** from the list

3. Enable the **Show Privacy Terms** toggle button and add a link to your organizations privacy terms and conditions. An example of Microsoft Corporation’s privacy terms is [**here**](https://privacy.microsoft.com/privacystatement).

  ![Show Privacy Terms](../media/image%28381%29.png)

4. Once you have made the changes, click on **Publish**. You’ll be asked to confirm by typing Publish again.

  > [!CAUTION]
  > Ensure you click on Publish. Otherwise, the changes you made will be lost.

5. The privacy terms along with the profile fields will be accessible by the learner by clicking on the User Image on top right corner and selecting **My Profile** 
  ![My Profile](../media/image%28271%29.png)
