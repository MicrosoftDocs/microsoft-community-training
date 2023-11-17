---
title: Edit user profile on the platform
author: nikotha
ms.author: nikotha
description: This document details the flow to edit a learner profile on the Community Training platform.  
ms.prod: learning-azure
---

# Edit user profile on the platform

A user's profile on the training platform consists of the mandatory fields first name, last name and unique identity (such as email, phone number or username) and additional profile fields defined by a Global Administrator.

In this topic, you will learn how to edit single and multiple user profiles on the platform.

> [!WARNING]
> Once the administrator edits the profile field of any learner (via UI or csv), the smart groups associated with that profile field value will be de-assigned and the new groups (if applicable) that are associated with the new value will be assigned, therefore, the content assigned to the learner will change as defined in [this document](De-assigning-content-from-user.md).

## Permissions Level

The Community Training portal provides role-based permission levels. The table below shows which administrative roles can delete users from a group.

| Access Level | Edit user profile |
| --- | --- |
| Global Administrator | Yes |
| Organization Administrator | No |
| Learning Path Administrator | No |
| Category Administrator | No |
| Course Administrator | No |
| Group Administrator | Yes |

## Option 1 - Steps to edit a single user profile

1. Log on to the Community Training portal and [**switch to administrator view**](../../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal).

1. Select **All Users** or a **Group** in the left-navigation page from the Users module.

1. Hover over any user in the list to see the pencil icon for **Edit Profile**.
:::image type="content" source="../../media/image(483).png" alt-text="Hover over user list":::

1. Select the pencil icon to see the user's profile data. Edit the values as required and select **Save**.
:::image type="content" source="../../media/image(484).png" alt-text="Click on the pencil icon":::

1. Select **Save** in the pop up to confirm.
:::image type="content" source="../../media/image(486).png" alt-text="Confirm the profile edit":::

> [!NOTE]
> The changes in the profile field will reflect in all places on the administrator and learner portal.

## Option 2 - Steps to edit multiple user profile(s)

1. Log on to the Community Training portal and [**switch to administrator view**](../../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal)

1. Select **All Users** tab in the left-navigation page from Users module

1. Click on **Download List** to download a CSV with the set of users. You can also download the list of users from a Group Details page to download only a limited set of users.

1. In the downloaded CSV file, delete all the extra columns other than Email Address/Phone Number, First Name, Last Name and columns with additional profile field values.

    > [!WARNING]
    > Column headers of the profile field values
    > You will need to add the headers against the profile field values in the CSV file. The header values are case and space sensitive.

1. Edit the profile field values as required in the CSV file then save the file and upload it back on to the platform by selecting **All Users > Add User > Bulk upload users**.

> [!TIP]
>**Please verify the CSV file before uploading**
>
>1. Open the users list csv file in Notepad - Right Click > Open with > Notepad.
>1. Remove Word Wrap formatting from the tool bar - Format > Word Wrap.
>1. Verify the structure of the file is correct by ensuring the following things:
>
> - For each user row, the number of commas (,) is one less than the number of columns i.e. Don't use commas (,) for values in the cell when updating the sample CSV file in Excel.
> - For each user, there should not be any line breaks i.e. one user must be contained in a single row.
> - For each user, there is no blank values for the choices.
>
>If you find any issues with the file, edit and correct the structure as described in the previous steps.
