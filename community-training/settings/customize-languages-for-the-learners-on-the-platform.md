---
title: Customize languages on the platform
original-url: https://docs.microsoftcommunitytraining.com/docs/customize-languages-for-the-learners-on-the-platform
author: nikotha
ms.author: nikotha
description: By default, the Community Training platform is available in English language to the learners.
ms.prod: learning-azure
---

# Customize languages on the platform

By default, the Community Training platform is available in English to the learners. To support native learners, you can enable more languages and configure the default language for your platform instance.

> [!IMPORTANT]
> Language support is for system generated strings only, not the content. Content can be added in any language as per the training requirements.

In this article, you'll learn how to customize languages and set the default language for the management portal.

## Permissions Level

The Community Training platform provides role-based permission levels.  The table below shows which administrative roles can customize languages for the platform.

|Access Level| Customize profile information |
|---|---|
|Global Administrator| Yes |
|Organization Administrator |No|
|Category Administrator|No|
|Learning Path Administrator|No|
|Course Administrator|No|
|Group Administrator|No|

## Steps to add languages on the platform

1. Login to the Community Training portal and [**switch to administrator view**](../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal)

1. Select **Settings** from the left navigation panel then **General**  from **Organization Settings**.

    ![General from Settings tab](../media/image%28383%29.png)

1. From **Languages**, select the languages you want to enable on the platform

      > [!NOTE]
      > This will enable languages only for the Web Application. To enable languages on the MobileApp, follow the steps in this [**article**](../infrastructure-management/install-your-platform-instance/create-publish-mobile-app.md).

1. Hover over the language, and select '**Mark as Default**' to set the language as the default.

    ![Mark as Default](../media/image%28287%29.png)

1. Select **Apply Changes** to publish your changes.

      > [!CAUTION]
      > Ensure you click on Apply Changes. Otherwise, the changes you made will be lost.

1. The chosen languages will be available for learners to select before logging in. The "**Default**" language will be the first language in the list and the portal will be viewable to the learner initially in that language.
![Default](../media/image%28275%29.png)

1. You will also be able to access the administrator view of the platform in any of the languages selected in Step 3 above.
    :::image type="content" source="../media/admin_UI.PNG" alt-text="Admin localization":::

1. If the language of your choice is not available on the platform follow the steps in [**this article**](../settings/request-a-new-language.md) to add new languages for your platform instance
