---
title: Troubleshoot Guide for Azure Support
author: nikotha
ms.author: nikotha
description: This is a troubleshoot guide for the customers of Microsoft Community Training platform. 
ms.service: azure
---

# Troubleshoot Guide for Azure Support

## Introduction

[Microsoft Community Training](https://communitytraining.microsoft.com/) (MCT) is an Azure based solution that enables delivery of large-scale, far-spread training programs with high quality and efficiency.

The platform within Microsoft is managed by the Azure Global Emerging Markets IDC team. The ICM credentials to log a ticket on the MCT team are –

> **Owning Service**: AGEM: Microsoft Community Training

> **Owning Team**: MCT

This document walks through root cause and resolution steps for some of the major issues faced by the customers. Please try the resolution steps before logging an ICM ticket to MCT team.

## Brief on MCT Architecture

Microsoft Community Training (MCT) platform is available as a [Managed Application](https://learn.microsoft.com/azure/azure-resource-manager/managed-applications/) on the [Azure Marketplace](https://azuremarketplace.microsoft.com/marketplace/apps/project-sangam.microsoft-community-training) for customers. The MCT instance is deployed on customer’s Azure subscriptions and utilizes the following Azure services –

1. Azure App Service
2. Azure Blob Storage
3. Azure Media Service
4. Content Delivery Network
5. Azure SQL Database
6. Azure Key Vault
7. Azure Application Insights
8. Azure Front Door

:::image type="content" source="../../media/MCT Architecture.png" alt-text="MCT Architecture Diagram":::

## Issues, Root Cause and Resolutions

### Issue 1: Training website is not loading

**Root Cause 1**: App service is in stopped state or App service crashed because of an error or an exception (e.g., out of memory exception) etc.

**Resolution**: Go to the app service resource in managed resource group of the deployment and try restarting the app.
If this does not fix the issue, navigate to diagnose and solve problems >> Diagnostic Tools >> Application Event Logs and check the latest entry with Level Error or Warn.
If the error is related to failure in accessing certain resources, try restarting that resource. If this does not work reach out to MCT support team.

**Root Cause 2**: App service unresponsive because of high resource usage on app service.

**Resolution**: Navigate to App service plan resource on azure portal and check for CPU utilization. If CPU is the bottleneck (greater than 85-90 %) scale up the instance (Note: please don't scale out as there are certain limitations with scale out on MCT side).

**Root Cause 3**: App service unresponsive because of high resource usage on database.

**Resolution**: Navigate to Azure SQL database resource and check for CPU utilization metrics under metrics section. If CPU utilization is greater than 90% try scaling up the database.

### Issue 2: Users are not able to Sign In

**Root Cause 1**: "Invalid redirect URI" error for Azure AD/Azure AD B2C deployments or "Invalid client parameters" for phone auth deployment after clicking Sign-in button.

**Resolution**: Re-validate the redirect URLs configured at the time of identity configuration. For custom domains, [custom redirect URLs need to be added to the identity setup](https://docs.microsoftcommunitytraining.com/docs/configure-login-social-work-school-account).

**Root Cause 2**: "/Error" page is visible after the user clicks on Sign-in button and completes the username-password flow

**Resolution**: Ensure that the Client-secret present in the Key Vault matches with the Client-secret value obtained while configuring the identity. Also ensure that the Key-Vault reference is correctly configured in the Azure App Service configuration. These are the values to check in Azure App Service configuration for corresponding identities: idp:AzureADExternalAuthClientSecret (Azure AD), idp:AzureADB2CExternalAuthClientSecret (Azure AD B2C), idp:PhoneExternalAuthClientSecret (Phone)

In case of client secret is expired or nearing expiration, here are [**steps to generate a new client secret and link it to key-vault**](../../frequently-asked-questions/generate-new-clientsecret-link-to-key-vault.md#steps-to-generate-a-new-client-secret-and-link-it-to-key-vault)

### Issue 3: Learner not able to update profile fields on login

**Root Cause**: Unable to update profile fields on login

**Resolution**: Refresh the page if not fixed then purge AFD Cache

### Issue 4: Lesson (Video) is not playing

Error: Unable to decrypt the encrypted video source

**Root Cause 1**: The token issued has expired. This error can happen, if a certain user has the course player page open for more than 4 hours.

**Resolution**: Refresh the course player page and/or clear browser cache

**Root Cause 2**: The token signing certificate has expired. All users will be affected for that media lesson. Can be confirmed from the "api/v1/health" endpoints.

**Resolution**: Raise IcM

### Issue 5: PDF lesson content is not loading

**Root Cause**: Content not loading related errors are generally related to the CORS setting.

**Resolution**: If customer is using custom domain or even for the AzureFD or AzureWebsites URL, need to check if CORS is correctly configured or not in customer's storage account. Make sure URL have permission for get, post and PUT. Navigate to Storage account of customer's instance and check for 'Resource Sharing (CORS)' and follow below steps:

* In allowed origin, add the current domain (one entry with www. Prefix and another without this prefix)
* In allowed Methods, add GET, PUT, PATCH, OPTION, DELETE, POST.
* Save this by clicking on the “save” button above.

### Issue 6: Unable to add lessons to courses

**Root Cause 1**: Lessons are not added immediately to the learning path

**Resolution**: Since the lesson are added/deleted in an async manner, so there can be delay of few seconds between actually adding of lessons to the learning path. Checking after some time and the lessons would be added.

**Root Cause 2**: Delay on the upload process to create new course contents, stuck on the "processing" screen.

**Resolution**: If customer is using custom domain or even for the AzureFD or AzureWebsites URL, need to check if CORS is correctly configured or not in customer's storage account. Make sure URL have permission for get, post and PUT.

### Issue 7: Lesson not getting marked completed

**Root Cause 1**: There is a completion criterion for certain lesson types, like video and audio lessons, that must be watched at least 80% without skipping.

**Resolution**: Ensure that the lesson is not a media lesson, or its completion criteria is met

**Root Cause 2**: Check Status API response code and message in the browser's network tab. Also check the console window for any errors.

**Resolution**: Raise IcM with relevant details

### Issue 8: Unable to add new profile fields

**Root Cause**: Profile Field addition requires the doer of the action to be authorized to do so. He/ she should be of the authorized role type. Also, the profile field name added cannot be empty, cannot contain certain special characters and cannot be same as an existing profile field name.

**Resolution**: Check the error code returned in the API response to ensure that the performer of the action is authorized. Ensure that the profile field name being added is not blank. does not contain special characters and is not the same as an existing profile field name.

### Issue 9: Certificate not generated for learners

**Root Cause 1**: Certificate template PDF file uploaded is corrupted. Most PDF Viewer Software have the ability to fix any corruptions in the PDF when rendering for viewing. However, the MCT service doesn't support this behavior and when trying to generate a certificate using such a corrupted PDF, the operation will fail.

**Resolution**: We strongly recommend creating the certificate template using the PowerPoint file we provide in the Certificate Templates section in the Administration portal. Exporting the slide as PDF best ensures consistency. On a side note, any template PDF can be tested for certificate generation before using it in courses for learners, by using the preview certificate feature.

**Root Cause 2**: The Certificate Template PDF file is deleted from the Blob Storage.

**Resolution**: Click on the required template in the Certificate Templates section (only accessible to Global Administrators). Click on replace and select the original template PDF file from the file system which was being previously used.

**Root Cause 3**: If the portal is using custom domain without Azure Front Door, the new domains are not added in the CORS settings of the Azure Storage Account.

**Resolution**: Adding the appropriate URLs to the CORS settings of the Storage Account. Important - if multiple URLs are configured (for e.g. - "https://www.contoso.com", "https://contoso.com"), both URLs need to be added in separate entries in the CORS settings.

#### Issue 10: Frontend errors (ex. Localization, course not loading)

**Root Cause 1**: Can be because of CORS, or some code bug or some data related issue.

**Resolution**:

1. Open the browser Console (Right click on the webpage & Select "Inspect" to open the Console).
2. Take a screenshot of this and raise a ticket.
