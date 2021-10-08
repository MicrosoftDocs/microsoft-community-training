---
title: Setup automatic user enrollment for a group
original-url: https://docs.microsoftcommunitytraining.com/docs/setup-automatic-user-enrollment-for-a-group-1
author: nikotha
ms.author: nikotha
description: Group administrator can setup rule for a group to automatically add users to the specific group whenever the user's profile information matches the criteria of the rules.
ms.prod: azure
---

# Setup automatic user enrollment for a group

Group administrator can setup rule for a group to automatically add users to the specific group whenever the user's profile information matches the criteria of the rules.  

When a user registers on the portal and complete the profile information, the values entered are compared against the rule applied by administrators for different groups and users are added to all the groups where criteria matches.

> [!IMPORTANT]
> If **Organizations** are defined on the training platform, automatic enrollment will by default include the Group's organization as a criteria and group rules will act as next level of criteria match within the organization.

In this article, you will learn more about how to setup rule for a group to  automatically add users in the below section.

## Steps to add rule for a group

### Case 1: No rules added to the group before

1. Select a Group under Users tab to which you want to add rule.

2. On the group details page, Click or tap on the **Add User** button and select **Add Rule** option from the drop-down menu.

    ![Group details page](../../media/image%2860%29.png)

3. From automatically add users pop-up, select **If** custom field and choose the [**additional profile fields**](../../settings/add-additional-profile-fields-for-user-information.md) from the drop-down to create the rule.

    ![Auto Rule](../../media/AutoRule1.JPG)

4. Enter corresponding field value in **Is** field. The values entered must be a subset of the options specified for the additional profile field selected in the **If** field. For example, as shown in the example below:
    - **Country** and **Role** are selected as **If** field for which **South Africa** and **Marketing** are entered as values respectively.
    - This means all the existing and new users who has country as **South Africa** and role as **Marketing** will automatically get added to the group.

    ![Two Rules](../../media/TwoRules.JPG)

    > [!IMPORTANT]
    > Values given in **IS** field are case sensitive and should exactly match the values in the additional profile fields

5. Click or tap on the **Done** button to save the rule and users who matches the criteria will get added to the group.

6. Groups which have rule applied will be prefixed with both sign ![Groups which have rule](../../media/image%2861%29.png)

### Case 2: Group already has rules applied to it

1. Select the group where more rules are required to be added in addition to the existing rules.

2. On the group details page, Click on the "Rules applied" button to open the Automatic Enrollments pane.
:::image type="content" source="../../media/Add rules to Smart Group1.png" alt-text="Rules applied":::

3. In the "Automatic Enrollments" pane, you would find a list of all the existing rules applied to the group.
:::image type="content" source="../../media/Add rules to Smart Group2.png" alt-text="Existing Rules":::

4. Click on the "Add" button against the [**additional profile field**](../../settings/add-additional-profile-fields-for-user-information.md) where you would like to add value in the **Is** field.
:::image type="content" source="../../media/Add rules to Smart Group3.png" alt-text="Add new rule":::

5. In the **Automatically add users** pop-up, enter the values in the **Is** field as per your requirement and click on **Done**.
:::image type="content" source="../../media/Add rules to Smart Group4a.png" alt-text="Select Value":::

6. Click on **Done** in the **Automatic Enrollments** pane.
:::image type="content" source="../../media/Add rules to Smart Group5.png" alt-text="Save rules":::

>[!Warning]
>
>- At a given moment, you can add multiple values to just one single profile field.
>
>- If you want to **add values to multiple profile fields**, enter value for one profile field by following step 4 to step 6. Then repeat the process from Step 2 to Step 6 as mentioned above to add value to another profile field.

## Sample rules for groups

Here are the some examples of different ways in which administrator can add rule for a roup with one or more than one condition.

### Scenario 1: Only one IF condition and one value in the IS field

As shown in the image below,  there is only one IF field **‘Country’** which is set to **'South Africa’**. A group with this rule would imply that any user who has marked Country field as South Africa will get added to the group.

![Scenario 1](../../media/S1.JPG)

### Scenario 2: Only one IF condition but multiple values in the IS field

As shown in the image below,  there is only one IF field **‘Country’** which is set to **'South Africa’** or **'India’**. A group with this rule would imply that any user who has marked Country field as South Africa or India will get added to the group.

![Scenario 2](../../media/S2.JPG)

### Scenario 3: More than one IF condition but for each IF one value in the IS field

As shown in the image below,  there are two IF fields **‘Country’** and **‘City’** which are set to **'South Africa’** and **'Cape Town’** respectively. A group with this rule would imply that any user who has marked Country field as South Africa and City field as Cape Town will get added to the group.

![Scenario 3](../../media/S3.JPG)

### Scenario 4: More than one IF condition and for each IF multiple values in the IS field

As shown in the image below,  there are two IF fields.  **‘Country’** field is set to **'South Africa’** or **'India’** whereas **‘Department’** field is set to **'Sales’** or **'Marketing’**. A group with this rule would imply that any user who has marked Country field as South Africa or India and Department field as Sales or Marketing will get added to the group.

![Scenario 4](../../media/S4.JPG)

> [!IMPORTANT]
> Values given in **IS** field are case sensitive and should exactly match the values in the additional profile fields

## View existing rules applied

1. Select group that has bolt sign, which indicates the group that has a rule applied for auto enrollment

2. Click or tap **Rules applied** button on the details page, to view the existing rules that are configured to add users automatically.

> [!NOTE]
> **Rules cannot be edited or deleted**. To update existing rule, new group must be created and new rule must be set to the group
