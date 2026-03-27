---
title: Link to External Website on Learner Home page
author: nikotha
ms.author: nikotha
description: This document details the flow to add a link to an external website on learner's home page on the Microsoft Community Training platform.  
ms.prod: learning-azure
---

# Link to External Website on Learner Home page

Microsoft community training enables you to provide a link to an external website on the learner’s homepage for allowing the learners quick access to a preferred website. This article describes how to configure the same and serve the purpose.

## Steps to configure external website link and name

1. Login to [Azure portal](https://www.portal.azure.com/) using your credentials.

2. Select the **App Services** icon from the left side menu.

    :::image type="content" source="../media/EL-1.png" alt-text="External link 1":::

3. Click or tap on the **App Services** icon belonging to your Microsoft Community Training instance.

4. Select **Configuration** button under the **Settings** section from the available left side menu.

    :::image type="content" source="../media/EL2.png" alt-text="External link 2":::

5. Select the **Applications Settings** tab on the left side of the new panel.

    :::image type="content" source="../media/EL3.png" alt-text="External link 3":::

6. Click on **New application setting** icon and enter the following values in the corresponding text boxes:

    * Name: **Features:ExternalWebsite:Name**
    * Value: Any name you want display (Example – Microsoft Community Training)

    :::image type="content" source="../media/EL5.png" alt-text="External link 5":::

7. Click or tab on **Ok** icon to proceed.

8. Again, click on the **New application setting** and provide the following values in the corresponding boxes:

    * Name: **Features:ExternalWebsite:URL**
    * Value: Provide the link to which it will be redirected (Example – [https://communitytraining.microsoft.com/](https://communitytraining.microsoft.com/))

9. Click on **Ok** icon to proceed.

10. Click or tap on **Save** icon to complete this process.

    :::image type="content" source="../media/EL6.png" alt-text="External link 6":::

11. Switch to the learner’s view on your instance and click on profile picture. Now you would be able to see the external link available on the panel, as shown in image below (**visit Microsoft Community Training**):

    :::image type="content" source="../media/el7.png" alt-text="External link 7":::

12. Click or tap on the available link (**Microsoft Community Training**, as in the example above) and the web site opens up instantly as a new tab on your screen.
