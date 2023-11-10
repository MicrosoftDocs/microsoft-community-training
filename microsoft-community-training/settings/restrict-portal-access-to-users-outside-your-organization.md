---
title: Restrict portal access to learners outside your training program
original-url: https://docs.microsoftcommunitytraining.com/docs/restrict-portal-access-to-users-outside-your-organization
author: nikotha
ms.author: nikotha
description: When the platform is setup with Phone Number or Email Address (aka Social Account) as login identity, by default, anyone with a valid phone number or email address can login to the portal and access the learning content.
ms.prod: learning-azure
---

# Restrict portal access to learners outside your training program

When the platform is setup with a phone Number or email address as an identity, anyone with a valid phone number or email address can sign in to the portal and access the learning content by default. There are often scenarios when a training program needs to restrict portal access to internal workforces, identified communities, or an existing list of learners.

For example, suppose a large manufacturing company has product training courses for their sales and services workforce in the company. Suppose it has set up the platform with phone number as a valid identity for the training program. Since these training courses are meant only for internal employees, administrators can use the **Restricted User Access** setting in the management portal to prevent users outside the company from signing in into the portal.  

When this setting is enabled, only users that are added or imported to the portal by the company will be allowed to access the portal.

> [!IMPORTANT]
> This functionality is not relevant when the portal is setup with **Azure Active Directory** as a sign-in identity.

## Change Restricted User Access settings  

1. Sign in to the Community Training portal and [**switch to administrator view**](../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal).

1. Select **Settings** on the left-navigation panel.  

    > [!IMPORTANT]
    > This option is available at the **Global Administrator Level** only.

1. Select **General** from the settings list.

1. Toggle the **Restricted User Access** settings flag. The default value for this setting is set to **Disabled**.
    ![A screenshot showing the Restricted User Access setting.](../media/Test%20Picture.png)

1. Select **Apply Changes** to commit the changes,

> [!IMPORTANT]
> Whenever this flag is set to **Enabled**, it will apply only to new users signing in to the portal. Users who have previously signed up will continue to have access to the portal. Admins will have to remove users manually from All Users list to disable their access.

## Error message for unauthorized user

When an unauthorized learner (such as a user who was not added to the portal by the admin) tries to access the web portal or mobile app using their phone number or email address, the following **error message** will appear:

 ![A screenshot showing the error message for unauthorized users.](../media/Settings%20screen.png)
