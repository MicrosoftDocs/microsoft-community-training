---
title: Add multiple users to the group
original-url: https://docs.microsoftcommunitytraining.com/docs/add-multiple-users-to-the-group
author: nikotha
ms.author: nikotha
description: Group Administrators can use bulk upload users feature to save time and add multiple users to specific group in one go.
ms.prod: learning-azure
---

# Add multiple users to the group

Group Administrators can use the **Bulk Upload Users** feature to save time and add multiple users to specific group in one go.

In this topic, you will learn how to bulk upload users to a specific group on the management portal.

## Permissions Level

The Community Training portal provides role-based permission levels. The table below shows which administrative roles can add users to a group on the portal.

| Access Level    | Add multiple users to a Group |
| --- | --- |
| Global Administrator | Yes |
| Organization Administrator  | Yes |
| Learning Path Administrator | No |
| Category Administrator | No |
| Course Administrator | No |
| Group Administrator | Yes |

### Prerequisite for using Bulk Upload users feature

Before you start the bulk upload, ensure the users list is structured in the right format on your local machine. The steps below provide information on how to create and verify that the users list is in the correct format.

#### Step 1 - Download the sample CSV file

1. Select **Add user**  then **Bulk Upload Users** from the drop down.

1. In the bulk upload users panel, download the sample comma separated values (CSV) file.

    ![sample CVS](../../media/sample%20CVS.png)

#### Step 2 - Edit the sample CSV file to create your list

1. Open the sample csv file in Microsoft Excel.

1. Remove the sample users from the CSV file.

    > [!WARNING]
    > Do not remove the column headers from the file.

1. Start entering user details per row with the following information under each column header:
    - Country Code - Type the country code of the user phone number **without the Plus (+)** sign. For e.g. 91.
    - Phone Number – Type phone number of the user. For e.g. 9876XXXXXX.
    - First Name – Type First name of the user.
    - Last Name – Type last name of the user.

        ![user details](../../media/image%2857%29.png)

> [!NOTE]
> If the portal is setup with the login identity as **Social Account** or **Entra ID (Azure Active Directory)**  you will need to enter email address in the above step.

#### Step 3 – Add User Profile Data (optional)

1. Start adding additional column headers and values to the sample comma separated values (CSV) file.

1. The column headers and values for these columns should match with the [**additional profile fields**](../../settings/add-additional-profile-fields-for-user-information.md) created by the organization. For example: as shown in the image below:
    - Country and Department are added as two additional column headers to the CSV file. These column headers matches with the field names added in the additional profile fields.
    - For country column you can see **Sri Lanka** and **Bangladesh** as row values whereas for department column you can see Sales and Marketing as row values. These values match with the options specified for Country and Department fields in the additional profile fields section.
    - If an additional profile field allows multiple selection (i.e. Multiple choice field) then use **Semicolon aka (;)** as a delimiter for adding multiple values in the CSV file. For example, let's say there is an additional profile field named *Topics of Interest* with allow learners to select multiple options such Organic Farming, Smart Farming, Increasing Yield, etc.  When uploading CSV file, administrators can add multiple values for each user by adding text such as *Organic Farming;Smart Farming* ,  *Smart Farming;Increasing Yield*, etc. in each row against the Topics of Interest column.

        ![Add pro file fields 1](../../media/Addprofilefields1.JPG)

1. Once you have finished updating the user details, save the file with a new name.

> [!IMPORTANT]
> Column headers and values are case-sensitive and should exactly match the values available in the additional profile settings. Additional profile fields must be published for the csv file to be successfully uploaded.

#### Step 4 – Verify the CSV file before uploading

1. Open the users list csv file in Notepad - **Right Click > Open with > Notepad**.

1. Remove Word Wrap formatting from the tool bar - **Format > Word Wrap**.

1. Verify the structure of the file is correct by ensuring the following things:
    - For each user row, number of commas (,) is one less than number of columns i.e. Don't **use commas (,)** for values in the cell when updating sample csv file in Excel.
    - For each user, there should not be any line break i.e. one user must be contained in a single row.
    - For each user, there is no blank values for the choices.

1. Edit and correct any errors you find in the structure as described in the previous steps. Below is a screenshot of how a correct CSV file will look in Notepad

    ![How a correct CSV](../../media/image%2864%29.png)

## Steps to bulk upload users to specific group

1. From the group details page, select **Bulk Upload Users** from the **Add User** drop-down menu.

    ![Steps to bulk upload users to specific group](../../media/image%2858%29.png)

1. Alternatively, select **More (...)** to the right of the group name then **Bulk upload users** from the drop-down menu.

1. Select **Browse** and locate the CSV file containing the users list from your local machine.

    ![Users list from your local machine](../../media/image%2859%29.png)

    > [!NOTE]
    > Before you begin this step, please ensure that user list is in correct format. See detailed steps on [**how to a create user list**](#prerequisite-for-using-bulk-upload-users-feature).

1. Select **Upload** to upload the CSV file.

> [!IMPORTANT]
> There is a limit of 10000 users for each bulk upload operation. To upload more users, create multiple csv files.

> [!TIP]
> Bulk upload is a resource intensive operation and might take time to complete. If it is taking too long to import users, please [**scale up your platform instance**](../../infrastructure-management/configure-your-platform-infrastructure/scale-up-instance-configuration.md).
