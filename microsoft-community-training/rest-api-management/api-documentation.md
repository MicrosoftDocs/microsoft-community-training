---
title: Rest API Documentation
original-url: https://docs.microsoftcommunitytraining.com/docs/api-documentation
author: cbms03
ms.author: cbms03
description: Community Training exposes its APIs for integration with another service or application.
ms.prod: learning-azure
---

# Rest API Documentation

Community Training exposes its APIs for integration with other services or applications. You can use the APIs to automate flows and build new capabilities on top of the out-of-the-box features that are part of the training platform.

In this article, you will learn more about API signatures and their authentication flows in respective sections.

## API Signatures

Apply the following steps to access the Rest API signatures exposed by Community Training.

1. From your [Azure portal](https://ms.portal.azure.com/#home) search for and select **App Services**, and then select your app.

    ![azure home 1.png](../media/azure%20home%201.png)

2. In the app resource's navigation menu, select **Configuration > Application setting** and select **New application setting**.

    ![application setting.png](../media/application%20setting%281%29.png)

3. From the pop-up, enter the following values and select **OK**.

    - **Name: EnableSwagger**
    - **Value: true**

    ![popup-swagger.png](../media/popup.png)

4. Click on the **Save** icon to save the changes.

    ![save icon](../media/save.png)

5. Once the above changes are implemented, Community Training portal administrators will be able to retrieve the API signature by accessing your website URL followed by `/swagger` from their web browser (`https://website-url/swagger`).

> [!NOTE]
> If your website portal URL is `https://cttraining.azurewebsites.net`
> Then the URL structure for the API signature is: `https://cttraining.azurewebsites.net/swagger`

> [!WARNING]
> You must be signed in as an administrator on your training portal to be able to access the Swagger link for your instance.

## API Authentication

Users authenticate using the Community Training APIs by using either of the following methods:

### Method 1: Service to Service Authentication

To obtain the access token **programmatically**, refer to [Service-to-service Authentication](../rest-api-management/service-to-service-authentication.md).

### Method 2: Authentication via Tokens

To obtain the access token **manually** (for testing), follow these steps:

1. Open your web browser.
2. Open the inspect window. Depending on what browser you're using, you might need to Press **Ctrl + Shift + I**, Right-click and select **Inspect**, or use some other means to open the window.
3. In the Inspect window, go to the **Network Tab**.
4. Then in the browser, call the URL: **https:// {your-CT-portal-domain} /ExternalAuthentication/Login**.

    **For example**: To get a token for the `https://ctdemo2.azurefd.net` instance, we can call ctdemo2.azurefd.net/ExternalAuthentication/Login

5. Enter your credentials on the sign-in page. Select **Sign-in**.
6. In the Inspect window, under the Network tab, select the **Callback** option.
7. Under headers, you'll see a category **location** which contains the **Access Token** and **Refresh Token**.

    ![Token inspect](../media/Token_inspect.jpg)

8. Use the **AccessToken** to call the Rest APIs (for example bearer *AccessToken*)
    > [!NOTE]
    > Sample CURL Command
    >
    >```
    >curl --location --request GET 'https://contoso.azurefd.net/api/v2/Profile' \--header 'Authorization: bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImtpZCI6Ilg1ZVhrNHh5b2pORnVtMWtsMll0djhkbE5QNC1jNTdkTzZRR1RWQndhTmsifQ.eyJpc3MiOiJodHRwczovL21lcmNhZG9jbHAuYjJjbG9naW4uY29tLzMxYjcwYzA3LTljM2ItNDcxZC05MDE4LWI5MDJhNWU2ZTU3Ny92Mi4wLyIsImV4cCI6MTU5NDIwNjE1MSwibmJmIjoxNTk0MjAyNTUxLCJhdWQiOiIxOTQ5YWE3NS1kYjI2LTQ0Y2UtOTU4My00OTNkYTE3NDRlMDkiLCJuYW1lIjoiTklLRVNIIEpPU0hJIiwiaWRwIjoiZ29vZ2xlLmNvbSIsInN1YiI6IjVlMmVlZWNhLTg4Y2ItNGNiOS05ZmI2LTU2MWI4YWNmMmQ1YSIsImpvYlRpdGxlIjoiU0UiLCJlbWFpbHMiOlsibmlrZXNoam9zaGkyMDAxQGdtYWlsLmNvbSJdLCJ0ZnAiOiJCMkNfMV9zaWdudXBzaWduaW4xIiwiYXpwIjoiMTk0OWFhNzUtZGIyNi00NGNlLTk1ODMtNDkzZGExNzQ0ZTA5IiwidmVyIjoiMS4wIiwiaWF0IjoxNTk0MjAyNTUxfQ.Z0wLIlzHIS0A1McQHeKsWmzCVDMOJSVcCmFzWLa99b0YPS7aTyJEIp5lWd9sINtjJRiSmxcAtQP1IOgX3RhuDNRJ6GDib7EMNxi6234HBEB_wsrQ9FDkr3dbLkkU09zP5f4GjBKliuRpiIqX6ukne8InHOgy9ZuJbw43BbiMkj4S1Y5rZlABRgw1ncHGW0x8AE4DB6d9P8Yb9l6R_4NF2tmLp_vlzXQLRAqEI5IlXIDVyNIEWrEwdDvtjXJ_CtiQL7dxHuzDHbzY1NB_lV4KcjXPtdPukr1K9p6D1WoIe4aytJ_4IzG_nJjH-pM_vzxZ4Syift1i0qXra6clRdB2lQ'
    >```

9. Once the AccessToken expires, use the **RefreshToken** to get a new **AccessToken**.
    > [!NOTE]
    >  API signature to get AccessToken using RefreshToken
    >
    >```
    >POST <websiteUrl>/api/v1/ExternalAuthToken/RefreshToken/{identityProvider}
    >
    >{identityprovider} = PHONE/EMAIL/AZUREAD
    >
    >Body:
    >{
    >"RefreshToken":"<Token>"
    >}
    >```

> [!WARNING]
> The refresh token can be used to extend the availabilty of the **AccessToken**.  The expiration date of **RefreshToken** will depend on the authentication type of your platform instance.
>
> Once the **RefreshToken** expires, users will need to sign in to the instance explicitly to get new **AccessToken** and **RefreshToken** (unless you are using [S2S authentication](../rest-api-management/service-to-service-authentication.md).
>
>Typically, the **AccessToken** is valid for 24 hours and **RefreshToken** is valid for 90 days.

## Database Schema

Refer to [Database Schema](../analytics/custom-reports/database-schema.md) to get details on the Database Schema.
