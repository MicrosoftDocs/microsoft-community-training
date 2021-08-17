---
title: Detailed step by step installation guide
original-url: https://docs.microsoftcommunitytraining.com/docs/installation-guide-detailed-steps
author: nikotha
ms.author: nikotha
description: In this article, you’ll learn how to install and deploy Microsoft Community Training platform on your Azure subscription.
ms.prod: azure
---

# Detailed step by step installation guide

In this article, you’ll learn how to install and deploy Microsoft Community Training platform on your Azure subscription.

## Before you begin

### 1. Create a pay-as-you-go Azure subscription

Create a pay-as-you-go Azure subscription. To learn more about how to create it, refer [**this article**](https://azure.microsoft.com/en-in/pricing/purchase-options/pay-as-you-go/) on Azure documentation.

If you have a free trial Azure subscription, please upgrade to a Pay-as-you-go Azure subscription. See the [**detailed steps here**](/azure/billing/billing-upgrade-azure-subscription#upgrade-your-azure-free-account). **We currently do not support Microsoft Community Training on free trial Azure subscriptions.**

> [!WARNING]
> If you’re a nonprofit organization who wants to use Microsoft Community Training platform, you can apply and avail the Azure grant subject to eligibility. See the [**detailed steps here**](../../infrastructure-management/install-your-platform-instance/setup-platform-instance-on-azure-subscription-for-nonprofits.md).

### 2. Get the right ownership access

Get the ownership access to your pay-as-you-go Azure subscription. To learn more about how to get access, refer [**this article**](/azure/role-based-access-control/overview) on Azure documentation.

### 3. Create a Google Play Account

[**Sign up on Google Play console**](https://play.google.com/apps/publish/signup/)  in order to publish your app on the Google Play Store.  This is required only if you require mobile app for Microsoft Community Training instance.

> [!NOTE]
> This step may be done later after installation.

## Steps to deploy platform from Azure Marketplace  

1. Ensure you are completed all the pre-requisites.

2. Login to [**Azure portal**](https://portal.azure.com/) using your credentials.

3. In the upper-left corner of the Azure portal, select **Create a resource.**  
![Create a resource](../../media/image%2813%29.png)

4. In the **Search the Marketplace** box, enter **Microsoft Community Training**.
![Search the Marketplace](../../media/image%2896%29.png)

5. From the Results, select **Microsoft Community Training**.

6. Select a software plan of your choice from the dropdown: **Basic** or **Standard**. Click the **Create** button that appears next to it.
![Software plan](../../media/image%2898%29.png)

7. On the **Create Microsoft Community Training** page, the first section is **Basics**. Enter the values as per the instructions below and click **OK**.
    * ***Subscription*** - Select the subscription that you created when you signed up for a pay-as-you-go account.
    * ***Resource group*** - A new resource group name or an existing one from your subscription.
    * ***Location*** - Location for the resources of your learning portal.
    * ***Application Name*** - Name of your learning portal.
    * ***Managed Resource Group*** - Name of resource group for your managed instance.
![Microsoft Community Training](../../media/image%2897%29.png)

8. The next section is **Setup your portal details**. Enter values as per the instructions below and click **OK**.
    * ***Website Name*** - The name of your learning portal. For example, if you enter “Contoso”, your learning portal’s website URL will be of the form "https://contoso.azurefd.net". You can map the learning portal to a [**custom domain later**](../../infrastructure-management/configure-your-platform-infrastructure/setup-custom-domain-url.md).
    * ***Contact email addresses*** - The email addresses you want to be contacted on for all information regarding getting started, updates to the platform, latest news etc.

        ![Setup your portal details](../../media/image%28357%29.png)

9. The next section is **Setup your login type** . Select Login type for your training portal.  Based on your selection, enter the following values:
    * Select **Mobile** if you want your learners to login using their mobile number. Enter org administrator’s mobile number in the input field . You’ll use it to login for the first time.
    * Select **Social Account** if you want your learners to login using their Facebook, Microsoft or Google account. Refer to the instructions from [**social account configuration guide**](../../infrastructure-management/install-your-platform-instance/configure-login-social-work-school-account.md#social-account-or-email-based-authentication) to enter the values requested.
    * Select **Work or School Account** if you want your learners to login using their work or school account. Refer to the instructions from [**work or school account configuration guide**](../../infrastructure-management/install-your-platform-instance/configure-login-social-work-school-account.md#work-or-school-account-based-authentication) to enter the values requested.
![Setup your login type](../../media/image%2899%29.png)

10. Verify the values entered are correct and click **Review + Create**.

11. In **Review + Create**, check and ensure your details are correct while we perform a basic validation.

12. Click on **Terms of Use** and **Privacy Policy**. Select all the check boxes to accept the terms and conditions.

13. Click **Create** to deploy Microsoft Community Training.

      > [!NOTE]
      > Deployment takes about 20 minutes. Click on the **Notification** icon on the top-right of toolbar to monitor the deployment process.

14. Once the deployment is complete and the website is up, refer to the [**getting started guide**](../../get-started/step-by-step-configuration-guide.md) to start configuring your learning portal.

15. To setup a mobile app for your instance, follow the instructions given in the [**create and publish your Mobile App**](../../infrastructure-management/install-your-platform-instance/create-publish-mobile-app.md) article.

16. To setup Teams for your instance , follow the instructions given in the [**setup Microsoft Teams as learner's endpoint**](../../infrastructure-management/install-your-platform-instance/create-teams-app-for-your-training-portal.md) for the platform article.
