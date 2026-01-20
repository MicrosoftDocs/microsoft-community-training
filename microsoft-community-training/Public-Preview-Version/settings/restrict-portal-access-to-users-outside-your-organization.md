---
title: Restrict portal access to learners outside your training program
original-url: https://docs.microsoftcommunitytraining.com/docs/restrict-portal-access-to-users-outside-your-organization
author: nikotha
ms.author: nikotha
description: When the platform is setup with Phone Number or Email Address (aka Social Account) as login identity, by default, anyone with a valid phone number or email address can login to the portal and access the learning content.
ms.prod: learning-azure
---

# Restrict portal access to learners outside your training program

When the platform is setup with Phone Number or Email Address (aka Social Account) as login identity, by default, anyone with a valid phone number or email address can login to the portal and access the learning content. But there are often scenarios when a training program wants to restrict portal access only to their internal workforces, identified communities or an existing list of learners.  

For example, a large manufacturing company has created product training courses for their sales and services workforce in the company. They have setup the platform with Phone Number as identity for the training program. Since these training courses are meant only for internal employees, administrators can use the Restricted User Access setting in the management portal to prevent users outside of the company from logging into the portal.  

When this setting is enabled, only users that are added or imported to the portal by the company will be allowed to access the portal.

> [!IMPORTANT]
> This functionality is not relevant when the portal is setup with **Azure Active Directory** as login identity

## Change Restricted User Access settings  

1. On the Microsoft Community Training portal, after login [**switch to administrator view**](../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal).

2. Select the **Settings** module on the left-navigation panel  

    > [!IMPORTANT]
    > This option is available at the **Global Administrator Level** only.

3. Select the **General** option from the settings list

4. Toggle the **Restricted User Access** settings flag. The default value for this setting is set to **Disabled** state
    ![Test Picture](../media/Test%20Picture.png)

5. Click on the **Apply Changes** button to commit the changes  

> [!IMPORTANT]
> Whenever this flag is set to Enabled state, it will apply only to new users logging into the portal. Users who have previously signed up on the portal before this setting was enabled will continue to have access to the portal. Admin will have to remove those users manually from All Users list.)

## Error message for unauthorized user

When an unauthorized learner (i.e. user who was not added to the portal by the admin) tries to access the web portal or mobile app using his/her Phone Number or Email Address, a following **error message** will appear on the screen:

 ![Settings screen](../media/Settings%20screen.png)
