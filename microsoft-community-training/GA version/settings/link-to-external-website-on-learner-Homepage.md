---
title: Link to External Website on Learner Home page
author: nikotha
ms.author: nikotha
description: This document details the flow to add a link to an external website on learner's home page on the Community Training platform.  
ms.service: azure
---

# Link to External Website on Learner Home page

Community Training enables you to provide a link to an external website on the learner’s homepage to facilitate quick access to a preferred website. This article describes how to configure this setting.

## Steps to configure external website link and name

1. Sign in to [Azure portal](https://www.portal.azure.com/) using your credentials.

1. Select **App Services** from the left side menu.

    :::image type="content" source="../media/EL-1.png" alt-text="External link 1":::

1. Select **App Services** for your Community Training instance.

1. Select **Configuration** under the **Settings** section from the available left side menu.

    :::image type="content" source="../media/EL2.png" alt-text="External link 2":::

1. Select the **Applications Settings** tab on the left side of the new pane.

    :::image type="content" source="../media/EL3.png" alt-text="External link 3":::

1. Select **New application setting** and enter the following values in the corresponding text boxes:

    * Name: **Features:ExternalWebsite:Name**
    * Value: Any name you want display (Example – Community Training)

    :::image type="content" source="../media/EL5.png" alt-text="External link 5":::

1. Select **OK** to proceed.

1. Select **New application setting** again, and provide the following values in the corresponding boxes:

    * Name: **Features:ExternalWebsite:URL**
    * Value: Provide the link to which it will be redirected (Example – [https://communitytraining.microsoft.com/](https://communitytraining.microsoft.com/))

1. Select **OK** to proceed then **Save**  to complete this process.

    :::image type="content" source="../media/EL6.png" alt-text="External link 6":::

1. Switch to the learner view on your instance and select the profile picture: you will be able to see the external link available on the panel as illustrated below (**visit Community Training**).

    :::image type="content" source="../media/el7.png" alt-text="External link 7":::

1. Select the available link (**Community Training**, as in the example above) and the web site opens as a new tab on your screen.

Please reach out to us [**via HelpDesk**](https://aka.ms/cthelpdesk) if you have any further queries.
