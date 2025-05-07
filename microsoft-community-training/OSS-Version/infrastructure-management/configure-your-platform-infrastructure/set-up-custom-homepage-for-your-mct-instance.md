---
title: Set up a Custom Homepage for your MCT instance
original-url: https://docs.microsoftcommunitytraining.com/docs/customize-the-certificate-template
author: nikotha
ms.author: nikotha
description: This document explains the flow to enable a custom homepage for your Community Training platform. 
ms.prod: learning-azure
---

# Set up a Custom Homepage for your MCT instance

If you are interested to replace Community Training (MCT) home page with any other custom home page that you have built, you can easily achieve that with a simple set of steps.

To get started, you need to have a custom home page designed for it to be linked to MCT instance. Here is a sample design for [**MCT Custom Homepage**](https://github.com/MicrosoftDocs/microsoft-community-training/files/6968259/MCT_CustomHomePage_Templates.zip)

<!---
## Pre-requisites

1. You need to add a Call to Action (CTA) button like ‘Registration’ in the page that should link to MCT sign-in page.
2. This custom home page needs to be hosted in same azure subscription where MCT is deployed.
3. You need to have the Storage Account of the type "General-purpose v2" to get the static website.
--->

## Steps to add your custom homepage

>[!NOTE]
>
>* Azure subscription should be same subscription where MCT is deployed. These steps would need ‘Contributor’ access for the Azure subscription.
>* This custom home page needs to be hosted in same azure subscription where MCT is deployed.
>* You need to have the Storage Account of the type "General-purpose v2" to get the static website

1. Sign in to the [Azure portal](https://portal.azure.com/)  

2. Configure storage account to host static website by following below steps:
    1. Open the [Azure portal](https://portal.azure.com/) in your web browser.
    2. Locate your storage account and display the account overview.
    3. Select **Static website** to display the configuration page for static websites.
    4. Select **Enabled** to enable static website hosting for the storage account.
    5. In the **Index document name** field, specify a default index page of index.html. **(This index.html should be same as home page of your static website)**
    6. In the **Error document path** field, specify a default error page of 404.html.
    7. Click **Save**. The Azure portal now displays your static website endpoint.
        :::image type="content" source="../../media/image(460).png" alt-text="Static website endpoint":::

3. Deploy the custom home page in the storage account configured above.

    1. Create an empty folder named "mywebsite" on your local file system.
    2. Launch Visual Studio Code and open the folder that you just created from the **Explorer** panel.

        :::image type="content" source="../../media/image(461).png" alt-text="Visual studio code":::
    3. Create the default index file in the "mywebsite" folder and name it index.html.

        :::image type="content" source="../../media/image(462).png" alt-text="Default index file":::
    4. Copy all the files for the Custom home page.
    5. Home page should be named as ‘index.html’.
    6. Edit ‘index.html’ and replace all CTA links (e.g. ‘Registration’) with MCT sign in Link. You can get MCT sign link by hovering over ‘SignIn’ in MCT website. Please refer below screenshot. The MCT login URL must be in the following format: https://<**AzurewebistesORfdBaseURL**>/home/defaultsignin?whr=uri%3aPhoneAuth&referrer=basedomain.

        :::image type="content" source="../../media/image(463).png" alt-text="MCT Sign in Link":::

    7. Create the default error file and name it 404.html (or any other name as needed).
    8. Open 404.html in the editor. Paste the code into the file, and save it (Sample code for reference is given below)

        ```Sample Code (for reference)
        <!DOCTYPE html>
            <html>
                <body>
                    <h1>404</h1>
                </body>
            </html>
        ```

    9. Right-click under the "mywebsite" folder in the Explorer panel and select Deploy to Static Website... to deploy your website. You will be prompted to log in to Azure to retrieve a list of subscriptions.
    10. Select the subscription containing the storage account configured in above step2. **Subscription should be same where MCT is deployed.** Next, select the configured storage account when prompted.

**You've successfully deployed a static webpage (Custom Home Page) to Azure subscription where MCT is deployed. Launch the website to view.**

>[!Note]
>
>1. For more details, see [Tutorial: Host a static website on Blob Storage](/azure/storage/blobs/storage-blob-static-website-host)
>
>2. Here are some sample templates of the Custom Homepage which can be used to deploy on your MCT instance:
>    * [**MCT_CustomHomePage_Templates.zip**](https://github.com/MicrosoftDocs/microsoft-community-training/files/6968259/MCT_CustomHomePage_Templates.zip)
>    * For supporting multiple AD logins, please refer to this [**template**](https://microsoft.sharepoint.com/:u:/t/BuildingSangam/EVgejvuLYYxNhDixVHDX5kwBbcvhRS9bZSLcAv54fVGPOQ?e=bDbHXa). You may add the other AD logins in this template from *ILDigiTechLoginPage >> Assets >> DomainAndUrl.json*
>

## Tracking users signing in through Custom Homepage

Track number of users signing is to MCT through custom home page can be achieved through AppInsights tracking:
[Azure Application Insights for JavaScript web apps](/azure/azure-monitor/app/javascript)

You need to update Instrumentation key as shown below for your Azure subscription having MCT and custom home page deployed. Instrumentation Key can be found in AppInsights section in Azure portal:

:::image type="content" source="../../media/image(464).png" alt-text="App Insights in Azure Portal":::

```Instrumentation Key
<script type="text/javascript">
        var sdkInstance = "appInsightsSDK"; window[sdkInstance] = "appInsights"; var aiName = window[sdkInstance], aisdk = window[aiName] || function (e) {
            function n(e) { t[e] = function () { var n = arguments; t.queue.push(function () { t[e].apply(t, n) }) } } var t = { config: e }; t.initialize = !0; var i = document, a = window; setTimeout(function () { var n = i.createElement("script"); n.src = e.url || "https://az416426.vo.msecnd.net/next/ai.2.min.js", i.getElementsByTagName("script")[0].parentNode.appendChild(n) }); try { t.cookie = i.cookie } catch (e) { } t.queue = [], t.version = 2; for (var r = ["Event", "PageView", "Exception", "Trace", "DependencyData", "Metric", "PageViewPerformance"]; r.length;)n("track" + r.pop()); n("startTrackPage"), n("stopTrackPage"); var s = "Track" + r[0]; if (n("start" + s), n("stop" + s), n("setAuthenticatedUserContext"), n("clearAuthenticatedUserContext"), n("flush"), !(!0 === e.disableExceptionTracking || e.extensionConfig && e.extensionConfig.ApplicationInsightsAnalytics && !0 === e.extensionConfig.ApplicationInsightsAnalytics.disableExceptionTracking)) { n("_" + (r = "onerror")); var o = a[r]; a[r] = function (e, n, i, a, s) { var c = o && o(e, n, i, a, s); return !0 !== c && t["_" + r]({ message: e, url: n, lineNumber: i, columnNumber: a, error: s }), c }, e.autoExceptionInstrumented = !0 } return t
        }({
            instrumentationKey: "xxxxxxxx-xxx-xxx-xxxx-xxxxxxxxxxxx"
        });        
        window[aiName] = aisdk, aisdk.queue && 0 === aisdk.queue.length && aisdk.trackPageView({});
    </script>
```

>[!Note]
>You can have multiple custom home pages for your instance, each of those home pages should have a button which links to instance's login page.
