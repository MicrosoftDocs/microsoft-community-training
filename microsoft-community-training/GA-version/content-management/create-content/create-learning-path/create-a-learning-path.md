---
title: Create a Learning path
original-url: https://docs.microsoftcommunitytraining.com/docs/create-a-learning-path
author: nikotha
ms.author: nikotha
description: A Learning Path is a defined sequence of courses on the training platform to administer guided training paths to the learners.
ms.service: azure
---
> [!IMPORTANT]  
> Community Training will reach end of support on Tuesday, April 7, 2026. No new deployments are available at this time. Existing Community Training customers will continue to receive security updates and technical support through Tuesday, April 7, 2026 at 11:59 pm. For more information or support, please reach out to our team here: https://aka.ms/cthelpdesk
# Create a Learning path

A **Learning Path** is a defined sequence of courses providing guided training paths to the learners and the ability for instructors to control the way these courses are assigned to them, offering a clear-cut road-map to what they should achieve.

A Learning Path references courses from different Categories on the training platform which learners can be guided to complete in an specified order. A Learning Path can be assigned by the administrators to a individual or a group of users.

In this article, you will learn how to create Learning Path(s) on the Community Training platform.

## Permissions Level

The Community Training portal provides role-based permission levels. The table below shows which administrative roles are allowed to create Learning Paths on the portal:

| Access Level  | Create Learning Path |
| --- | --- |
| Global Administrator | Yes |
| Organization Administrator | Yes |
| Learning Path Administrator | Yes |
| Course Administrator | No |
| Category Administrator | No |
| Group Administrator | No |

## Steps to create a Learning Path

1. Log on to the Community Training portal and [**view as andministrator**](../../../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal).

1. Select the **Content** menu on the left bar and click on the  **Learning Path** tab

    ![Content on left bar](../../../media/image%28388%29.png)

1. Select **New Learning path** on the bottom-left of the page.

    ![Select New Learning Path](../../../media/image%28390%29.png)

1. Enter the **Learning Path Name**. This is the title that learners will see on the web portal and mobile app. For example: Microsoft Office.

    :::image type="content" source="../../../media/LP_cert.PNG" alt-text="LearningPathCertificate":::

    1. If you have [multiple languages](../../../settings/customize-languages-for-the-learners-on-the-platform.md#customize-languages-on-the-platform) enabled for your instance, then you can add translations for your Learning Path fields.

        :::image type="content" source="../../../media/LPloccreate.png" alt-text="LPlocalization":::

1. Enter the **Learning Path Description**, a short summary to inform learners about course content at the time of registration.

1. Choose  **Upload**  to browse and select an image file as the Learning Path Thumbnail.

1. Choose **Enable certificate**. This option enables the administrator to award certificate to learners after completing the learning path.

    >[!Note]  
    >Administrator can [**customize the certificate template**](../../../settings/customize-the-certificate-template.md#customize-the-certificate-template-for-the-platform) awarded to the learners.

1. Choose **Restrict Ordering** to forces the learners to complete the courses in Learning Path in a specific order. Learners will NOT be allowed to skip courses within a Learning Path if this option is enabled.

1. Select the **Organization** for the Learning Path to assign to a different organization from the default.

    > [!Note]  
    > If your instance is Multi-Tenant enabled, refer [Enabling Global Content across organizations](../../content-management-overview.md#enabling-global-content-across-organizations), to have common Learning paths enabled across organizations.

1. Click or tap **Create** button to create the Learning Path.

Once a Learning Path is created, you can start [**adding content to the Learning Path.**](add-course-to-a-learning-path.md)


Please reach out to us [**via HelpDesk**](https://aka.ms/cthelpdesk) if you have any further queries.