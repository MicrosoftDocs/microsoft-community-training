---
title: Customize the certificate template for the platform
original-url: https://docs.microsoftcommunitytraining.com/docs/customize-the-certificate-template
author: nikotha
ms.author: nikotha
description: This document explains certificate template customization flow on the Microsoft Community Training platform. 
ms.prod: azure
---

# Customize the certificate template for the platform

By default, Microsoft Community Training platform uses a basic template to issue certificates to learners who have completed a course or passed an exam as shown below. Organization can customize the certificate template and put their own branding as required. You can create and assign multiple certificates appropriate to the course.

![Multiple certificates](../media/image%28324%29.png)

In this article, you will learn more about how to customize the certificate template on the platform:

## Steps to customize your certificate template

Here are the simple steps to customize the certificate template on the platform:

1. Login to the Microsoft Community Training portal and [**switch to administrator view**](../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal)

2. Click on **Settings tab** from the left navigation panel → select  **Certificate Templates** and click on  **New Template** to toggle the customization process.

    ![certificate selection](../media/certificate%20selection.png)

3. Click on the "Select Language" dropdown to select the language of the certificate, the content printed by the platform will be made available in the selected language (default certificate language is "English").

4. Download the certificate template by clicking on **Download PowerPoint Template** button under Certificate Template and open the template in PowerPoint. [sample-certificate-template (6).pptx](https://github.com/MicrosoftDocs/microsoft-community-training/files/6938903/sample-certificate-template.6.pptx)

5. Follow the instructions on the first slide of the PowerPoint template to edit the certificate.

6. Some samples of customized certificate templates are provided.

7. Create a PDF format of the certificate template and upload it by clicking on 'Upload Custom PDF Template' or clicking on the File Name if you have already uploaded a template before.

    > [!WARNING]
    > The certificate template PDF file can be of maximum 1 MB size.

8. Click on Customize Certificate Text to add custom text on the certificate. The [certificate text can be customized](#customize-certificate-text) to include standard and custom profile fields, course completion details and platform details.

9. Click on the **Preview** button to view a certificate sample with the uploaded template and click on **Save Button** to save the template

    > [!CAUTION]
    > Ensure you click on the **Save button**. Otherwise, the changes you made will be lost.

10. You can add multiple number of certificates as required and assign them to the specific courses. [Click here](../settings/enable-course-level-certificate.md) to learn more on enabling course level certificate.

11. Please visit [**Microsoft Community Training Help desk**](https://go.microsoft.com/fwlink/?linkid=2104630) to log a support ticket if you wish to edit the templates of previously issued certificates.

> [!TIP]
> We recommend using separate templates for Course and Learning Path when using custom certificates.

## Customize Certificate Text

The above default certificate text HTML can be customized to alter the text, existing data fields and including custom profile fields. The default certificate text on the platform is as follows,

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
    offered by [Instance Name] on [Course Completion Date] with a score of [Exam Score]%.
</div>
</div>
```

### Standard Placeholders

The Standard Placeholders are the data fields that can be used by default on any instance of the platform. The fields enabled for the certificate template are,

|Placeholders for Course certificate| Placeholders for Learning Path certificate|
|---|---|
|[First Name]|[First Name]|
|[Last Name]|[Last Name]|
|[Unique Identity]|[Unique Identity]|
|[Course Name]|[Learning Path Name]|
|[Course Completion Date]|[Learning Path Completion Date]|
|[Instance Name]|[Instance Name]|
|[Exam Score]|N/A|

### Custom Placeholders

The Custom Placeholders are the data fields for the Additional Profile fields that are created custom on any instance of the platform.

To include **additional profile fields**, the placeholder should be as **[Field:{Additional Profile field name}]**. For example: For the profile field name "Country", the placeholder should be [Field:Country]

An additional profile field can be,

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

Once the certificate text is updated, you can click on **preview** to view the certificate.
