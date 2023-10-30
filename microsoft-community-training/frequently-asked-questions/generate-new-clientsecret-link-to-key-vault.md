---
title: Generate new Client Secret and link to key-vault
original-url: https://docs.microsoftcommunitytraining.com/docs/generate-new-clientsecret-link-to-key-vault
author: v-sambati
ms.author: v-sambati
description: Steps for generating a new client secret and link it to key-vault when the existing one is expired.
ms.prod: learning-azure
---

# Steps to generate a new client secret and link it to key-vault

If users are unable to sign in to the portal i.e. they are seeing an error page instead of learner view, one reason could be the expiration of the client secret. Here's how you can verify if that is the case and also generate a new client secret in case of Azure AD B2C tenant or Azure AD tenant.

## Check update the client secret expiration date

1. Login to [**Azure Portal**](https://ms.portal.azure.com/).
2. Switch to the directory which contains your B2C tenant
3. Search for **‘Azure AD B2C’(or 'Azure AD' in case of AD tenant)** and click on it.

    :::image type="content" source="../media/cs_searchadb2c.png" alt-text="searchadb2c":::

    For Azure AD tenant scenario:
    :::image type="content" source="../media/10jan_adser.png" alt-text="ad_search":::

4. Navigate to **‘App Registrations’** and click on your application.

    :::image type="content" source="../media/cs_appreg.png" alt-text="appreg":::

5. Inside your application, click on **‘Certificates & Secrets’**.
    * If you see the client secret is about to expire then click on ‘New client secret’

        :::image type="content" source="../media/cs_cscheck.png" alt-text="checksecret":::

6. Add a description and set the expiration date to 24 months (or the maximum allowed time).

    :::image type="content" source="../media/cs_addcs.png" alt-text="addclientcs":::

7. Copy the **Secret Value** immediately as this value will be hidden if the page reloads. Proceed to add this to the key vault.

## Update Key-Vault with new Client Secret

1. Navigate to your application's [**Key Vault**](../analytics/custom-reports/database-schema.md#accessing-key-vault).

2. Under Settings, click on **Secrets** and look for **‘AzureADB2CExternalAuthClientSecret’** in the case of ADB2C tenant. For Azure AD tenant, look for **'AzureADExternalAuthClientSecret'**

    :::image type="content" source="../media/cs_kv.png" alt-text="cskv":::

    * For Azure AD tenant scenario :
    :::image type="content" source="../media/AzureADCS1.png" alt-text="azuread_clientsecret":::

3. Click on **'New Version'**.

    :::image type="content" source="../media/cs_kv_new.png" alt-text="cs_kvnewimage":::

4. Paste the secret value from step7 of [**check and update client secret expiration date**](#check-and-update-client-secret-expiration-date) and click create.

    :::image type="content" source="../media/cs_kv_create.png" alt-text="cs_kv_createcs":::

5. Now, click on **current secret version** that is newly created and copy **Secret Identifier**.

    :::image type="content" source="../media/cs_kv_copy.png" alt-text="copycskv":::

## Update Application Configuration

1. Navigate to your [**App Service**](../settings/configurations-on-the-training-platform.md#steps-to-set-the-configurations-on-the-platform) configurations.

2. In the configurations, search for ‘idp:AzureADB2CExternalAuthClientSecret’ and click on it. In the case of an Azure AD tenant, search for 'idp:AzureADExternalAuthClientSecret' and click on it.
    * Replace the value with secret identifier from step5 of [**update Key-Vault with new client secret**](#update-key-vault-with-new-client-secret) and save the settings.

        :::image type="content" source="../media/cs_appconfigcs.png" alt-text="appcongidupdate":::

    * For Azure AD tenant scenario :
        :::image type="content" source="../media/10jan_ADCon.png" alt-text="aad_con":::
