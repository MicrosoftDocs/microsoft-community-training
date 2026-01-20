---
title: Customize the certificate template for the platform
original-url: https://docs.microsoftcommunitytraining.com/docs/customize-the-certificate-template
author: nikotha
ms.author: nikotha
description: This document explains certificate template customization flow on the Community Training platform. 
ms.service: azure
---
> [!IMPORTANT]  
> Community Training will reach end of support on Tuesday, April 7, 2026. No new deployments are available at this time. Existing Community Training customers will continue to receive security updates and technical support through Tuesday, April 7, 2026 at 11:59 pm. For more information or support, please reach out to our team here: https://aka.ms/cthelpdesk
# Customize the certificate template for the platform

By default, Community Training uses a basic template to issue certificates to learners who have completed a course. Organization can customize the certificate template and put their own branding as required. You can create and assign multiple certificates appropriate to the course. Here's an example of a certificate:

![Multiple certificates](../media/image%28324%29.png)

In this article, you will learn how to customize the certificate template on the platform.

## Steps to customize your certificate template

To customize the certificate template on the platform follow these steps:

1. Sign in to the Community Training portal and [**switch to administrator view**](../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal)

1. Select **Settings** from the left navigation panel then **Certificate Templates** followed by **New Template**.

    ![certificate selection](../media/certificate%20selection.png)

1. Enter a name for the certificate template then select the language from the **Select Language** dropdown list. The content printed by the platform will be made available in the selected language (the default certificate language is English).

1. Select **Download PowerPoint template** under Certificate Template to download the certificate template and open the template in PowerPoint. Here's a sample file: [sample-certificate-template (6).pptx](https://github.com/MicrosoftDocs/microsoft-community-training/files/6938903/sample-certificate-template.6.pptx)

1. Follow the instructions on the first slide of the PowerPoint template to edit the certificate.

1. Some samples of customized certificate templates are provided.

1. Create a PDF format of the certificate template and select **Upload Custom PDF Template** to upload it or select the File Name to upload a new version of an existing template.

    > [!WARNING]  
    > The maximum size for a certificate template PDF file is 1MB.

1. Select **Customize Certificate Text** to add custom text on the certificate. The [certificate text can be customized](#customize-certificate-text) to include standard and custom profile fields, course completion details and platform details.

1. Select **Preview** to view a sample of the certificate with the uploaded template then select **Save**.

    > [!CAUTION]  
    > Ensure you select the **Save** button. Otherwise, the changes you made will be lost.

1. You can add multiple certificates as required and assign them to specific courses. [Click here](../settings/enable-course-level-certificate.md) to learn more on enabling course level certificates.

> [!Note]  
> Please visit [**Community Training Help desk**](https://aka.ms/cthelpdesk) to log a support ticket if you wish to edit the templates of previously issued certificates.

> [!TIP]  
> We recommend using separate templates for Courses when using custom certificates.

## Customize Certificate Text

The above default certificate text HTML can be customized to alter the text, existing data fields and including custom profile fields. The default certificate text on the platform is as follows:

```Default Certificate Text
<div style='text-align:center;font-size:1em;line-height:1.7em'>
This is to certify that
<div style='font-size:1.2em'>
    <b>[First Name] [Last Name]</b>
</div>
<div>
    has successfully completed the course
</div>
<b>[Course Name]</b>
<div>
    offered by [Instance Name] on [Course Completion Date] with a score of [Average Exam Score]%.
</div>
</div>
```

### Standard Placeholders

The Standard Placeholders are the data fields that can be used by default on any instance of the platform. The fields enabled for the certificate template are:

|Placeholders for Course certificate| Placeholders for Learning Path certificate|
|---|---|
|[First Name]|[First Name]|
|[Last Name]|[Last Name]|
|[Unique Identity]|[Unique Identity]|
|[Course Name]|[Learning Path Name]|
|[Course Completion Date]|[Learning Path Completion Date]|
|[Instance Name]|[Instance Name]|
|[Average Exam Score]|N/A|
|[Maximum Exam Score]|N/A|

### Custom Placeholders

The Custom Placeholders are the data fields for the Additional Profile fields that are created on an instance of the platform.

To include **additional profile fields**, the placeholder should be as **[Field:{Additional Profile field name}]**. For example: For the profile field name "Country", the placeholder should be [Field:Country]

An additional profile field can be:

* **Text field** -  The Text field placeholder will be replaced with the field value. Example: “[Field:City]” will be replaced with “Hyderabad” on the certificate for the learner.
* **Single Choice field** - The Single Choice field placeholder will be replaced with the field value. Example: “[Field:Color]” will be replaced with “Blue” on the certificate for the learner.
* **Multiple Choice field** – The Multiple Choice field placeholder will be replaced with comma separated values. Example: “[Field:Interests]” will be replaced with “Music, Football, Reading” on the certificate for the learner.

```Sample Certificate Text with Additional Profile Field 'Country'
<div style='text-align:center;font-size:1.5em;line-height:1.7em'>
This is to certify that
<div style='font-size:1.2em'>
    <b>[First Name] [Last Name]</b>
</div>
<div>
    from [Field:Country] has successfully completed the course
</div>
<b>[Course Name] </b>
<div>
offered by [Instance Name] on [Course Completion Date].
</div>
</div>
```

Once the certificate text is updated, you can select **preview** to view the certificate.

Please reach out to us [**via HelpDesk**](https://aka.ms/cthelpdesk) if you have any further queries.