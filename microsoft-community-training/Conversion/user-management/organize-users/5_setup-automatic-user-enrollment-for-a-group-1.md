---
title: Setup automatic user enrollment for a group
original-url: https://docs.microsoftcommunitytraining.com/docs/setup-automatic-user-enrollment-for-a-group-1
---
Group administrator can setup rule for a group to automatically add users to the specific group whenever the user's profile information matches the criteria of the rules.  

When a user registers on the portal and complete the profile infromation, the values entered are compared against the rule applied by administrators for different groups and users are added to all the groups where criteria matches.

:::(Info) (Important)
If **Organizations** are defined on the training platform, automatic enrollment will by default include the Group's organization as a criteria and group rules will act as next level of criteria match within the organization.
:::

In this article, you will learn more about how to setup rule for a group to  automatically add users in the below section.

## Steps to add rule for a group

1.	Select a Group under Users tab to which you want to add rule. 

2.	On the group details page, Click or tap on the **Add User** button and select **Add Rule** option from the drop-down menu.
![image.png](../../media/image%2860%29.png){height="" width="150"}

3.	From automatically add users pop-up, select **If** custom field and choose the [**additional profile fields**](https://docs.microsoftcommunitytraining.com/docs/add-additional-profile-fields-for-user-information) from the drop-down to create the rule. 
![AutoRule1](../../media/AutoRule1.JPG){height="" width="400"}

4.	Enter corresponding field value in **Is** field. The values entered must be a subset of the options specified for the additional profile field selected in the **If** field. For example, as shown in the example below:
    * **Country** and **Role** are selected as **If** field for which **South Africa** and **Marketing** are entered as values respectively. 
    * This means all the existing and new users who has country as **South Africa** and role as **Marketing** will automatically get added to the group.
![TwoRules](../../media/TwoRules.JPG){height="250" width="400"}

@(Info)(Important)(Values given in **IS** field are case sensitive and should exactly match the values in the additional profile fields )

6.	Click or tap on the **Done** button to save the rule and users who matches the criteria will get added to the group.

7.	Groups which have rule applied will be prefixed with both sign ![image.png](../../media/image%2861%29.png){height="20" width="20"}

@(Info)(Important)(Once user gets added to group and later changes the profile information, he or she won't be removed previously added group. Administrator will have to remove such users from the group if required.)

## Sample rules for groups

Here are the some examples of different ways in which administraor can add rule for a roup with one or more than one condition.

#### Scenario 1: Only one IF condition and one value in the IS field
As shown in the image below,  there is only one IF field **‘Country’** which is set to **'South Africa’**. A group with this rule would imply that any user who has marked Country field as South Africa will get added to the group. 
![S1](../../media/S1.JPG){height="250" width="400"}

#### Scenario 2: Only one IF condition but multiple values in the IS field
As shown in the image below,  there is only one IF field **‘Country’** which is set to **'South Africa’** or **'India’**. A group with this rule would imply that any user who has marked Country field as South Africa or India will get added to the group. 
![S2](../../media/S2.JPG){height="250" width="400"}

#### Scenario 3: More than one IF condition but for each IF one value in the IS field 
As shown in the image below,  there are two IF fields **‘Country’** and **‘City’** which are set to **'South Africa’** and **'Cape Town’** respectively. A group with this rule would imply that any user who has marked Country field as South Africa and City field as Cape Town will get added to the group. 
![S3](../../media/S3.JPG){height="250" width="400"}

#### Scenario 3: More than one IF condition and for each IF multiple values in the IS field 
As shown in the image below,  there are two IF fields.  **‘Country’** field is set to **'South Africa’** or **'India’** whereas **‘Department’** field is set to **'Sales’** or **'Marketing’**. A group with this rule would imply that any user who has marked Country field as South Africa or India and Department field as Sales or Marketing will get added to the group. 
![S4](../../media/S4.JPG){height="250" width="400"}

@(Info)(Important)(Values given in **IS** field are case sensitive and should exactly match the values in the additional profile fields )

## View existing rules applied

1.	Select group that has bolt sign, which indicates the group that has a rule applied for auto enrollment 

2.	Click or tap **Rules applied** button on the details page, to view the existing rules that are configured to add users automatically. 

@(Info)(Note)(**Rules cannot be edited or deleted**. To update exisitng rule, new group must be created and new rule must be set to the group)
