---
title: Troubleshooting Guide
original-url: https://docs.microsoftcommunitytraining.com/docs/troubleshooting
author: nikotha
ms.author: nikotha
description: It is possible that installation may fail for a variety of reasons.
ms.prod: azure
ms.service: azure
---

# Troubleshooting Guide

It is possible that installation may fail for a variety of reasons. If you're in doubt about any field value you have entered during installation, reach out to us with your query and our support team will contact you.

If you are facing any of the issues below, follow the instructions given to troubleshoot.

## Issue 1: Deployment succeeded but website URL does not show the learning portal

### Problem
It is possible that your deployment succeeded but you're unable to see your learning portal when you visit the website URL.

### Solution 
Website is typically provisioned 15-20 mins after deployment succeeds. Please check back in some time. 

## Issue 2: Deployment failed with error message "The scale operation is not allowed for this subscription in this region. Try selecting different region or scale option."

### Problem
You are using a free trial subscription. Microsoft Community Training is not available on a free trial subscription.

### Solution 
 [Convert your subscription to Pay-As-You-Go](https://azure.microsoft.com/en-in/pricing/purchase-options/pay-as-you-go/) and try again. 


## Issue 3: Deployment failed with error message "At least one resource deployment operation failed."
### Problem
If your deployment fails, you’ll receive a **Deployment failed** notification under **Notifications**.

### Solution 
1. Click on the **Deployment failed** text as marked in the screenshot below.
![Deployment failed](../../media/image%2825%29.png)
2. You’ll be directed to the failed resource group. Click on **Click here for details** as marked in the screenshot below.
![Click here for details](../../media/image%2826%29.png)
3. You’ll be provided with a summary of error details. Check the **Error message** value under **ERROR DETAILS**.
4. If the **Error message** says “*At least one resource deployment operation failed. Please list deployment operations for details. Please see https://aka.ms/arm-debug for usage details.*”, it is possible that 
   - You are using a free trial subscription. Be default, free trial subscriptions do not have all regions enabled. [Convert your subscription to Pay-As-You-Go](https://azure.microsoft.com/en-in/pricing/purchase-options/pay-as-you-go/) and try again. 
   - The said resource is not yet enabled for the region. Click on the **Copy to Clipboard** icon on the top-right of the **Errors** blade.
   ![Copy to Clipboard](../../media/image%2827%29.png)

5. Visit our [**Helpdesk**](https://go.microsoft.com/fwlink/?linkid=2104630) and create a support ticket by following the steps below. 
  - Sign in using your Azure AD or Social accounts.
  - Click on **Create Support Ticket** and enter the following values:

    |Field	|Description|
    |---|---|
    |Title	|Enter "Deployment failed"|
    |Type| Select "Issue"|
    |Subject|Under Installation, select "Deployment Failure"|
    |Description	|Paste the entire content of **ERROR DETAILS** in the description field.|

  - Submit the form. 
  - Our support team will investigate the issue in 2-3 business days and respond.

> [!NOTE]
> If you received a different error message, report the same on our Helpdesk and we'll get back with a resolution.)

## Issue 4: Deployment failed with error message "Location X is not accepting creation of new Windows Azure SQL Database servers at this time."
### Problem
It is possible that the Windows Azure SQL Database resource is restricted in your region. Known locations where Azure SQL database is failing to create are below

- Central India
- West US
- East Asia 

### Solution 
Submit a support request from the Azure Portal by following the below steps:
1. Login to [Azure portal](https://portal.azure.com/?#blade/Microsoft_Azure_Support/HelpAndSupportBlade/).
2. Simply select "Support" from the menu bar or open the "Help + support" hub. 
3. Provide the details of your subscription type and error message in your support request. For more detailed information, please see [How to create an Azure support request](https://docs.microsoft.com/azure/azure-supportability/how-to-create-azure-support-request). 
4. Based on the details of your support request, Microsoft Azure will lift the restriction for your subscription.

> [!NOTE]
> Access to Subscription Management and billing support is included with your Microsoft Azure subscription and Technical Support is provided through one of the [Azure Support Plans](https://azure.microsoft.com/support/plans/).
## Issue 5: Portal access failed with error 403 - The web app is stopped.
### Problem
It is possible that accessing portal gives an error message as "Error 403- This web app is stopped" 

### Solution 
1. Login to [Azure portal](http://portal.azure.com)
2. From home page, select the app service name from 'Recent Resources' 
3. Click or select 'Start' button from menu on the top
4. Access Microsoft community training portal from the browser 

### Issue 6	Deployed failed with error “Azure subscription is not registered with CDN Provider”
There are often times when CDN profile is not enabled by default for a subscription due to which deployment might fail. In order to resolve this, you are required to add the CDN service manually to your Azure resource group. Post that you required to delete your previous resource group and recreate. 

### Solution

Please follow the steps mentioned below to manually register the CDN resource provider and then try redeploying the instance once again.
- Sign into the **Azure portal**.
- On the Azure portal menu, **select All services**.
- In the **All services box**, enter **subscription**, and then select Subscriptions option from the search results
- Select the subscription from the subscription list where you want to deploy the platform instance
- Select **Resource providers** and view the list of available resource providers.
- Registering a resource provider configures your subscription to work with the resource provider. The scope for registration is always the subscription. To **register a resource provider (Microsoft.Cdn)**, select Register.

Next > [**Delete the Resource Group**](../../infrastructure-management/configure-your-platform-infrastructure/6_delete-your-training-instance) created for failed deployment and restart the [**installation process**](../../infrastructure-management/install-your-platform-instance/3_installation-guide-detailed-steps) from the begining.
