---
title: Portal Branding & Customization
original-url: https://docs.microsoftcommunitytraining.com/docs/portal-branding-customization
author: nikotha
ms.author: nikotha
description: Currently, we support 28 languages on the platform.
ms.prod: azure
---

# Portal Branding & Customization

## Platform customization

### How do I customize languages for the platform?	
Currently, we support 28 languages on the platform. You can enable languages for your training instance and set a default language, refer **[this article](../settings/7_customize-languages-for-the-learners-on-the-platform.md)** for the steps to add new languages on the platform.

### How do I change the look and feel of the portal?	
You can change the look and feel according to your brand. Refer **[this article](../settings/2_configure-the-look-and-feel-of-your-portal.md)** to customize the look and feel of your portal.

### How do I customize the name and icon of training tab in MS Team?	
You can customize the name and icon of training tab in MS Teams as per your requirements. Refer to [this article](../infrastructure-management/configure-your-platform-infrastructure/10_customize-the-name-and-icon-of-the-training-tab-in-ms-teams.md) to follow the steps for customization.

### We run programs for different centers in various locations, and often need a different front end to match the branding of the specific program. Is this possible?

Microsoft Community Training doesn't support multiple homepages out of the box. However, you can customize and develop multiple standalone HTML pages (one for each program) with a link to login to the Learner view. Course assignment can be controlled by prompting the user to choose the employment center / program during the one-time sign up process.

For more information and support on how to enable this, please contact us via [**Helpdesk**](https://go.microsoft.com/fwlink/?linkid=2104630).

### Can the landing page or homepage have a different design?
You can customize the landing page with a custom theme color, banner image and welcome text. Refer [**this article**](../settings/2_configure-the-look-and-feel-of-your-portal.md) to learn more.

Alternatively, you can create your own landing page and direct users to the training instance from the landing page.

For more information and support on how to enable this, please contact us via [**Helpdesk**](https://go.microsoft.com/fwlink/?linkid=2104630).

### Is it possible to hide courses shown on the home page when web portal is opened?
Yes, it is possible and  can be achieved in two ways.

* **Method 1** : All the courses enrollment on the portal must be set to “Only admins can enroll users”. This way courses that are set to admin only will not be displayed on the home page.

* **Method 2** : You can have your own custom homepage and simply set redirection triggers to the sign-in page, which allows the customers to bypass our default homepage.

For more information and support on how to enable this, please contact us via [**Helpdesk**](https://go.microsoft.com/fwlink/?linkid=2104630).

### How to upload Privacy Statement & Terms and Conditions for users to read at the time of sign up?
You can upload your own privacy statement by logging in as an administrator to the management portal and follow the below steps:
1. Go to Settings -> General 
2. Enable the Show Privacy Terms toggle button 
3. Add a link to your organization's privacy terms and conditions. 

For detailed steps,  [**refer here**](../settings/4_add-additional-profile-fields-for-user-information.md#add-privacy-terms-and-conditions).

### How many profile fields can I configure as an administrator to capture learner details ?
Microsoft Community Training allows adding upto 15 additional profile fields to capture learners information. The value of these fields can be changed both by learners and administrator. 

### Can I customize the profile information I want to capture for each learner? 
By default, learners will be asked for their first name, last name, and profile photo on sign up. As an organization, you can capture additional information at the time of login and display privacy terms and conditions for the learners. This will be useful in managing and organizing users, assigning them courses and tracking analytics. 

Examples of additional information can be location, job role, language, topics of interest etc. 

For more information, checkout [**this article**](../settings/4_add-additional-profile-fields-for-user-information.md).

## Branding & UI Layout

### What are the supported logo sizes for the mobile application?
The required sizes for the logo in mobile app are the following dimensions (in pixels): 150x150, 225x225, 300x300, 450x450. 

Learn more in [**this article**](../infrastructure-management/install-your-platform-instance/5_create-publish-mobile-app.md).

### What is the format required for the logo?
No, the recommended logo file size is 150*50 px in PNG with transparent or solid background.

### Can I use a svg file for the logo?
No, The recommended logo file size is 150*50 px in PNG with transparent or solid background.

### Can I use a pdf file for the logo?
No. The recommended logo file size is 150*50 px in PNG with transparent or solid background.

### Why is the logo not uploading?
It is possible that your logo file is incorrect. Please refer [**this article**](../infrastructure-management/install-your-platform-instance/5_create-publish-mobile-app.md) to learn the correct logo size and format.

### What is the banner image?
Banner image will appear on the landing page and will form the first impression of your learning portal.

![Banner image](../media/image%28154%29.png)

### What is the size for the banner image?
Recommended banner file size is 960 * 540 px in JPG or PNG format.

### Can the logo have a background colour?
The logo can have either a transparent or a solid background.

## Certificate template

### I see certificate template is predefined. Is there anyway for me to customize and logo, signature, etc.?

Microsoft Community Training platform uses a basic template to issue certificates to learners who have completed a course or passed an exam as shown below. 

![Certificate for completion](../media/image%2829%29.png)

Organizations can customize the certificate template and put their own branding as required. You can create and assign multiple certificates appropriate to the course.. Also, note learners can only receive one Certificate of Completion per course. 

For more details, [**refer here**](../settings/5_customize-the-certificate-template.md).

### How do I customize certificate template for the portal?	
We provide you a way to use a custom certificate template of your choice. The certificate can be customized to include logo, background, signatures as per your requirements. It is on the product roadmap to include unique certification number to facilitate better tracking.

Refer **[this article](../settings/5_customize-the-certificate-template.md)** to learn how to customize the certificate template.

### Can i have different certificates created and assigned to courses? 
Microsoft community training enables you to create and assign multiple certificates with its preferred type of language and other customizations. For more details [refer here](../settings/6_enable-course-level-certificate.md)

### Is there any restriction on the branding that can be used for the certificate?
Branding on the certificate can be defined by the organization using the platform and they customized as per their requirements. For more details, refer to [**this article**](../settings/5_customize-the-certificate-template.md).

### What is the size of the certificate?
The size of the certificate is defined in the sample certificate file provided in [**this article**](../settings/5_customize-the-certificate-template.md).

## Custom domain URL

### How do I change the domain of my training portal?	
You can change the domain of your portal and use a custom domain that reflects your organization's name or brand. Refer **[this article](../infrastructure-management/configure-your-platform-infrastructure/2_setup-custom-domain-url.md)** to change the domain of your portal.

## Feedback & survey

### Is there an inbuilt feature to take feedback from learners or conduct surveys?  
Currently, Microsoft Community Training doesn't have an inbuilt feature to create feedback form or surveys. To collect feedback from the learners or conduct surveys, you can use create an online form using tool such as Microsoft Forms, Survey Monkey, Google Forms, etc. and share the form URL via training portal. 

The online form can be added directly to the course  or share with the learners via the announcement feature. 