---
title: Customize profile information for the learners on the platform
original-url: https://docs.microsoftcommunitytraining.com/docs/add-additional-profile-fields-for-user-information
author: nikotha
ms.author: nikotha
description: By default, learners will be asked for their first name, last name and profile photo on sign up. As an organization, you can capture additional information at the time of login and display privacy terms and conditions for the learners.
ms.prod: learning-azure
---

# Customize profile information for the learners on the platform

By default, learners will be asked for their first name, last name and profile photo on sign up. As an organization, you can capture additional information at the time of login and display privacy terms and conditions for the learners. This will be useful in managing and organizing users, assigning them courses and tracking analytics. Examples of additional information can be location, job role, language, topics of interest etc.

For example, a healthcare organization has different course content for different job roles: staff, admins, nurses and doctors. They would like to assign a respective course to every learner depending on their job role. To achieve this, they would create an additional profile field called Role and provide four values as options: staff, admin, nurse and doctor. When a learner signs up on the portal for the first time, she will be asked to fill her profile by populating the role field.

Learn how to auto-enroll users to a specific course based on their profile information via the below articles:

* [**Setup automatic user enrollment for a group**](../user-management/organize-users/setup-automatic-user-enrollment-for-a-group-1.md)
* [**Assign courses to users in the group**](../user-management/manage-users/assign-content-to-group-users.md)

In this article, you'll learn how to customize profile information by creating additional profile fields and adding privacy terms and conditions on the management portal.

## Permissions Level

The Microsoft Community Training management portal provides role-based administration and depending upon the type of access level administrator can perform an action on the portal.  Table below shows administrative roles that can customize profile information for learners.

|Access Level| Customize profile information |
|---|---|
|Global Administrator| Yes |
|Organization Administrator |No|
|Category Administrator|No|
|Learning Path Administrator|No|
|Course Administrator|No|
|Group Administrator|No|

## Steps to create additional profile fields

1. Login to the Microsoft Community Training portal and [**switch to administrator view**](../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal)

2. Click on **Settings tab** from the left navigation panel and select  Additional Profile fields options from the list

    :::image type="content" source="../media/Additional Profil Field - Main screen.PNG" alt-text="Add profile field":::

3. Select the type of profile field to add. Profile fields can be of three types:
   1. **Text field** - Use this type of field to capture information which are unique to every learners such as Email address, phone number,  employee/student ID, etc. You may add validation as well to this profile field value.
   2. **Single choice** -  Use this type of field when you want learners to choose 1 value among the finite set of options. Use this field to capture learner information such as Job Role, Department, Center Location, etc.
   3. **Multiple choice** - Use this type of field when you want learners to choose 1 or more values among the finite set of options. Use this field to capture learner information such as Topics of Interest, Learning Preferences, etc.

       > [!WARNING]
       >
       > * For Single and Multiple choice field, you can add as many options as you prefer.
       > * In total, you can add up to 15 additional fields.
       > * For Single/Multiple Choice - When list contains more than 10 options, use of **Upload List** Feature (explained below, in STEP 6) is recommended

4. **Set validation criteria** - This option is only available for **Text field** type of profile field.

    :::image type="content" source="../media/Profile Field - set validation.PNG" alt-text="set validation":::

    There are three validation criteria that can be selected using the this option:
    1. **Date**: This criteria will restrict the learner to add value only in the format DD/MM/YYYY.
    2. **Numerals**: This criteria will restrict the learner to add only numeric value to the profile field.
    3. **Regular Expression**: This format allows the Administrator to define the validation criteria from his end using the regular expression format.
    > [!Note]
    >
    > * Each criteria will allow the Administrator to enter the **description** in various languages. This description  is shown to the users in the text field input box in the profile panel.
    > * Each criteria will allow the Administrator to enter the **error messages** in various languages. This message will be shown to the users if they input any value that does not fulfil the validation criteria.
    > :::image type="content" source="../media/Profile Field - error message and description.PNG" alt-text="error msg and description":::

5. **Add localization to Profile field name** - The Administrator can add translations to the profile field name using the Edit option to the right side of the profile field.

    :::image type="content" source="../media/Profile Field - name translation.PNG" alt-text="Edit name":::

    Enter the translated string along with the language.

    :::image type="content" source="../media/Profile Field - save translation.PNG" alt-text="enter translation":::

6. **Upload/Download List** - This option is only available for **Single Choice** and **Multiple choice** type of profile fields. Using this option, the Administrator can add a large number of values to any specific profile field.

    :::image type="content" source="../media/Profile Field - download-upload list.PNG" alt-text="upload-download-list":::

    > [!Note]
    > You can download the sample .csv file using the download list option and modify the same file and upload with the new values.

7. Toggle the required option to mark each profile field as either,
   1. **Mandatory**: Learners are compulsorily required to fill in mandatory fields after logging in.
   2. **Hidden**: Learners will not be able to view this field, such fields can be used by administrators for internal management.
   3. **Read-only**: Learners will be able to view the profile field but not edit it.
   ![Read-only](../media/image%28327%29.png)
   > [!NOTE]
   > Any change in a new or existing profile field will be applicable to new and existing learners on the platform.

8. Once you have added the fields, click on **Publish**. You’ll be asked to confirm by typing Publish again.

> [!CAUTION]
>
> * Ensure you click on Publish. Otherwise, the changes you made will be lost.
> * Note that, while making any change in existing profile field data, this could impact learner association with smart group (if present)

## Associated Profile Fields

Microsoft Community Training supports adding associated profile fields. Associated profile fields will help in defining relationship and create dependencies between profile fields. Selection of a particular profile field value will determine the options in dependent profile field.

For example, if there are two profile fields ‘State’ and ‘City’ and if city is a dependent on State, then selecting a particular State will show the Cities specific to that State.

### Steps to create Associated profile fields

1. Login to the Microsoft Community Training portal and [**switch to administrator view**](../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal)

2. Click on **Settings** tab from the left navigation panel and select ‘Additional Profile fields’ from the list

3. To make association between profile fields:

    1. Select an existing profile field or [create new additional profile fields](#steps-to-create-additional-profile-fields)
    2. Click on **Add Dependency** checkbox

    :::image type="content" source="../media/assocfiled.png" alt-text="Associatedfiled":::

    >[!Warning]
    >
    > Please note while changing/adding associations to an existing field would result in loss of profile data for users.

    >[!Note]
    >
    > * By default, associated profile fields can be set with a dependency of up to two levels.
    > * Only Single Choice type profile fields can be chosen as dependency fields
    >
    > **For example**, if an organization wants to have the `City`, `State` and `Country` to be associated then below are the steps:
    >
    > * `Country` – `State` - `City` is a two-level hierarchy of associated profile field.
    > * First create a Single choice profile field for `Country`
    > * Now, create a field for `State` by choosing `Country` as dependency
    > * Now create a profile field for `City` by choosing `State` as dependency field.

4. From the **Choose dependency** drop down list, select the profile field which this profile field should be dependent on.

    :::image type="content" source="../media/choosedep.png" alt-text="choosingdependency":::

5. After selecting the dependent profile field, choose the profile field option from the dropdown list, to add associated field options.

    :::image type="content" source="../media/depchooseoptions.png" alt-text="chooseoptions":::

    >[!NOTE]
    >
    >Associated field options can also be added through bulk upload flow via csv file with the options listed as example format given below for associating State with Country
    > :::image type="content" source="../media/depassocupload.png" alt-text="uploaddependency":::

6. Add the associated profile field option(s) under the selected dependency profile field option, click on **Add Option**

    :::image type="content" source="../media/depassocaddoption.png" alt-text="uploadoption":::

    >[!Caution]
    >
    > The combined option count that you can add via UI for a dependent field is capped at 10, for adding more than 10 options use bulk upload option.

7. Follow the step 5 to add associated profile field options for all the dependency field options.

8. Once all associated options added for a dependent profile field, click on Publish.

>[!Caution]
>
> Associated profile fields cannot be edited/updated/deleted once they are published

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
