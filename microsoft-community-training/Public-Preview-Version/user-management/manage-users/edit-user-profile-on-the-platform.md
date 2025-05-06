---
title: Edit user profile on the platform
author: nikotha
ms.author: nikotha
description: This document details the flow to edit learner profile on the Community Training platform.  
ms.prod: learning-azure
---

# Edit user profile on the platform

A user's profile on the training platform consists of mandatory fields first name, last name and unique identity (such as email, phone number or username) and additional profile fields defined by the Global Administrators.

In this topic, you will learn the simple steps to edit single and multiple user profiles on the platform.

>[!Warning]
>Once the administrator edits the profile field of any learner (via UI or json/csv API), the smart groups associated with that profile field value would be de-assigned and the new groups (if applicable) that are associated with the new value of that profile field would be assigned to the user.

This will therefore change the content assigned to the learner as defined in [this document](De-assigning-content-from-user.md).

## Permissions Level

The Community Training management portal provides role-based administration and depending upon the type of access level administrator can perform an action on the portal. Table below shows administrative role which are allowed to delete users from a group on the portal:

| Access Level | Edit user profile |
| --- | --- |
| Global Administrator | Yes |
| Organization Administrator | No |
| Learning Path Administrator | No |
| Category Administrator | No |
| Course Administrator | No |
| Group Administrator | Yes |

## Option 1 - Steps to edit a single user profile

1. On the Community Training portal, after login [**switch to administrator view**](../../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal)

2. Select **All Users** tab or a **Group** details page in the left-navigation page from Users module

3. Hover over any user in the list to see the pencil icon for **Edit Profile**
:::image type="content" source="../../media/image(483).png" alt-text="Hover over user list":::

4. Click on the pencil icon, to see the user's profile data. Edit the values as required and click on **Save**.
:::image type="content" source="../../media/image(484).png" alt-text="Click on the pencil icon":::

5. Confirm the **Save** action in the pop up.
:::image type="content" source="../../media/image(486).png" alt-text="Confirm the profile edit":::

>[!NOTE]
>The changes in the profile field will reflect in all places on the administrator and learner portal.

## Option 2 - Steps to edit multiple user profile(s)

1. On the Community Training portal, after login [**switch to administrator view**](../../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal)

2. Select **All Users** tab in the left-navigation page from Users module

3. Click on **Download List** to download a CSV with the set of users. You can also download the list of users from a Group Details page to download only a limited set of users.

4. In the downloaded CSV file, delete all the extra columns other than Email Address/Phone Number, First Name, Last Name and columns with additional profile field values.

    >[!WARNING]
    >Column headers of the profile field values
    >You will need to add the headers against the profile field values in the CSV file. The header values are case and space sensitive.

5. Edit the profile field values as required in the CSV file. Save the CSV file and upload it back on the platform by clicking on All Users Tab -> Add User -> Bulk upload users

>[!TIP]
>**Please verify the CSV file before uploading**
>
>1. Open the users list csv file in Notepad - Right Click > Open with > Notepad.
>2. Remove Word Wrap formatting from the tool bar - Format > Word Wrap.
>3. Verify the structure of the file is correct by ensuring the following things:
>
>    * For each user row, number of commas (,) is one less than number of columns i.e. Don't use commas (,) for values in the cell when updating sample csv file in Excel
>    * For each user, there should not be any line break i.e. one user must be contained in a single row
>    * For each user, there is no blank values for the choices
>
>4. In case you find any issues with the file, edit and correct the structure as described in the previous steps.
