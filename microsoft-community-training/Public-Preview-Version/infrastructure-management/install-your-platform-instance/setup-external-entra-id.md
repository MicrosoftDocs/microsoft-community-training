## Step-by-Step Guide: Microsoft Entra External ID App Registration for Community training 

### STEP 1: Sign in to Entra Admin Center 
* Navigate to: https://entra.microsoft.com 
* Sign in with an account that has at least Application Developer permissions. 
* If you have access to multiple tenants, click the Settings (gear) icon and switch to the target tenant. 

### STEP 2: Start New App Registration 
* Go to Entra ID > App registrations. 
* Click on + New registration. 

![app reg](../../media/enapp1.png)

### STEP 3: Configure Application Details 

* Name: Enter a display name, e.g., identity-client-app or Fabrikam Learning. 
* Supported account types: Select Accounts in this organizational directory only (Single tenant). [For Social logins] 
* Redirect URI: 
   * Type: Web 
   * Value: `https://<portalname>-<uniquehash>.a/b/z02.azurefd.net/signin-b2c`

* • Click Register. 

![reg an app](https://private-user-images.githubusercontent.com/202782747/475552005-2aea00bb-4e96-4ca9-90fe-313b09e8cd28.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NTQ1Njg1OTIsIm5iZiI6MTc1NDU2ODI5MiwicGF0aCI6Ii8yMDI3ODI3NDcvNDc1NTUyMDA1LTJhZWEwMGJiLTRlOTYtNGNhOS05MGZlLTMxM2IwOWU4Y2QyOC5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjUwODA3JTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI1MDgwN1QxMjA0NTJaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT05N2ExZmU3ZGVlZGEyYWJmMzRmZDgzY2MyMDY4MTRjY2FmMTMxZTc5YTZjOWQxOGUzOWMxNmNhY2M3MDkyZmNmJlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.sLFJVCpsSAG3RBUdGuIvVfB53BewIWXvh_6xWV_vRaA)

![reg an app](../../media/enapp2.png)


### STEP 4: Note Down App Identifiers 

After registration, go to the Overview tab and copy: 

* Application (client) ID 
* Directory (tenant) ID

![app reg4](https://private-user-images.githubusercontent.com/202782747/475552242-c0de45f1-0d3e-42ce-a278-8b61387713cf.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NTQ1Njk4NzEsIm5iZiI6MTc1NDU2OTU3MSwicGF0aCI6Ii8yMDI3ODI3NDcvNDc1NTUyMjQyLWMwZGU0NWYxLTBkM2UtNDJjZS1hMjc4LThiNjEzODc3MTNjZi5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjUwODA3JTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI1MDgwN1QxMjI2MTFaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT00ZDFiMTMwYTE0Mzg0OGYyOGRiNDA1NTg4M2IwNTY1ZDQ3ZjA2NGM3YzFjNDE1Nzk5ZTAxZDZmNThhZGFlNzM2JlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.lwVeoH91kdrogN3sZMBbbOs94YgaeNUZ92KLEwRYq0Q)

![reg an app1](../../media/enapp3.png)

### STEP 5: Create an API Scope 
If the app will expose APIs: 
*  Navigate to Expose an API under Manage. 
*  Click + Add a scope. 
*  Enter an Application ID URI (e.g., api://<client-id>) and click Save and 
continue. 
* Fill in the following: 
   * Scope name: “access_as_user” 
   * Admin consent display name: access_as_user 
   * Admin consent description: access_as_user 
   * Leave user consent fields empty (or fill as needed). 
   * State: Enabled Scope name: “access_as_user” 
   * Admin consent display name: access_as_user 
   * Admin consent description: access_as_user 
   * Leave user consent fields empty (or fill as needed). 
   * State: Enabled 
* Click Add scope.

![appreg5](https://private-user-images.githubusercontent.com/202782747/475552513-8ec1e936-9ba8-48fa-b73c-68d270225517.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NTQ1NzAwODcsIm5iZiI6MTc1NDU2OTc4NywicGF0aCI6Ii8yMDI3ODI3NDcvNDc1NTUyNTEzLThlYzFlOTM2LTliYTgtNDhmYS1iNzNjLTY4ZDI3MDIyNTUxNy5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjUwODA3JTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI1MDgwN1QxMjI5NDdaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT1hMDE5YzZkMWZjOTQyZGViMzA0ZDUxYzMwOTdlYTVkMGFhYzI4NjM3NTQ4YjkzMDU1MWNjNGJlYjI3YTM1YTM1JlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.OX7b-ed2GNqXU4m7fOxqCRE1YmjYuM3MXkQNAF8gEH0)

![reg an app9](../../media/enapp4.png)

![appreg6](https://private-user-images.githubusercontent.com/202782747/475552822-08b9b453-461b-48c3-88a2-08a464f1df0c.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NTQ1NzAwODgsIm5iZiI6MTc1NDU2OTc4OCwicGF0aCI6Ii8yMDI3ODI3NDcvNDc1NTUyODIyLTA4YjliNDUzLTQ2MWItNDhjMy04OGEyLTA4YTQ2NGYxZGYwYy5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjUwODA3JTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI1MDgwN1QxMjI5NDhaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT0zNDNlMzIwY2RiMmJkYTRhMWM2ZTBlZTU0MDU4ZjVhZjI4NmZiOTE0MjBjOWViMmYyZTkwNTg2YzYwNGI0NDNkJlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.uErAbg2h4AJYXdvnz5AKvJbg18NYPQoZ6yTrit-Ogjw)

![app reg8](https://private-user-images.githubusercontent.com/202782747/475567666-7b5a6590-44a9-4e27-8239-7095f33915f1.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NTQ1NzAyMTMsIm5iZiI6MTc1NDU2OTkxMywicGF0aCI6Ii8yMDI3ODI3NDcvNDc1NTY3NjY2LTdiNWE2NTkwLTQ0YTktNGUyNy04MjM5LTcwOTVmMzM5MTVmMS5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjUwODA3JTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI1MDgwN1QxMjMxNTNaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT1iZWUzOGUxNzc5NjEwMDFjMGVhZWRjZjBlNTBkMTMwOGRiZDUwZDc5YzNmMGQwMDczZmQwMTIwYzMyZTE5NmZiJlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.xa2d6ACTf6PXyH4i-LHW_h1iGSrzg72NMW3c2ExhhLc)

### STEP 6: Create a Client Secret 
* Navigate to Certificates & Secrets under Manage. 
* In the Client secrets section, click + New client secret. 
* Add a description (e.g., Contososecret) and choose an expiry (e.g., 6 or 12 
months). 
* Click Add. 
* IMPORTANT: Copy the Value immediately. This is your client_secret_for_B2C. It 
will not be shown again. Paste it on notepad for further use

![appreg8](https://private-user-images.githubusercontent.com/202782747/475567908-f75216e4-a1f5-49bd-bdea-7990f60d7a27.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NTQ1NzAyNDIsIm5iZiI6MTc1NDU2OTk0MiwicGF0aCI6Ii8yMDI3ODI3NDcvNDc1NTY3OTA4LWY3NTIxNmU0LWExZjUtNDliZC1iZGVhLTc5OTBmNjBkN2EyNy5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjUwODA3JTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI1MDgwN1QxMjMyMjJaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT04OTU3ZmM2ZDBjNzVjNzViNWM5ZjkwMDMwMGIwZmE4NTJlYjBlY2Q5MWM3ODA1ZThiZGYxNTZhNjJiNTBjZjc2JlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.2ADDV0RzwzBuhYG1eZelXeJdKPpbWq5gmpPg1s3pJZ0)

### STEP 7: Create a sign-up and sign-in user flow 

* [Add a sign-up and sign-in flow](https://learn.microsoft.com/en-us/entra/external-id/customers/how-to-user-flow-sign-up-sign-in-customers). 

* [Add an application to the user flow](https://learn.microsoft.com/en-us/entra/external-id/customers/how-to-user-flow-add-application). 

* [Test User Flow](https://learn.microsoft.com/en-us/entra/external-id/customers/how-to-test-user-flows). 

* (optional) [Enable password reset](https://learn.microsoft.com/en-us/entra/external-id/customers/how-to-enable-password-reset-customers).


### STEP 8: Configure Identity Provider 

* [Identity Provider configuration for External tenant](https://learn.microsoft.com/en-us/entra/external-id/customers/concept-authentication-methods-customers).

### STEP 9: Steps to set the Configurations on the Platform 

* Login to [Azure portal](https://www.portal.azure.com/). 

* Go to App Services from the left-menu.

![appreg90](https://private-user-images.githubusercontent.com/202782747/475568200-e2414528-a9f7-4202-9dac-c441fbb16f99.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NTQ1NzA1NjIsIm5iZiI6MTc1NDU3MDI2MiwicGF0aCI6Ii8yMDI3ODI3NDcvNDc1NTY4MjAwLWUyNDE0NTI4LWE5ZjctNDIwMi05ZGFjLWM0NDFmYmIxNmY5OS5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjUwODA3JTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI1MDgwN1QxMjM3NDJaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT0yNGY1YjZjZDE2MTA5MWQyNDQ2YjMyZTU4MTFlM2Q1ZDA0OGRhMDg3NWJlODBiMGVmOTQ2YmEwNmYwMmNjZWJhJlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.OkMllgIno4fsss6Crta1NPx1BALjWsIwHW4L-KD1KO8)

* Click on the app service belonging to your Community Training instance. 

* Select Environment variables under settings from the left-menu
![appreg17](https://private-user-images.githubusercontent.com/202782747/475568365-0dd0dbfa-ebf5-40fe-8f2a-902a0e8f5087.png?jwt=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJnaXRodWIuY29tIiwiYXVkIjoicmF3LmdpdGh1YnVzZXJjb250ZW50LmNvbSIsImtleSI6ImtleTUiLCJleHAiOjE3NTQ1NzA1NjIsIm5iZiI6MTc1NDU3MDI2MiwicGF0aCI6Ii8yMDI3ODI3NDcvNDc1NTY4MzY1LTBkZDBkYmZhLWViZjUtNDBmZS04ZjJhLTkwMmEwZThmNTA4Ny5wbmc_WC1BbXotQWxnb3JpdGhtPUFXUzQtSE1BQy1TSEEyNTYmWC1BbXotQ3JlZGVudGlhbD1BS0lBVkNPRFlMU0E1M1BRSzRaQSUyRjIwMjUwODA3JTJGdXMtZWFzdC0xJTJGczMlMkZhd3M0X3JlcXVlc3QmWC1BbXotRGF0ZT0yMDI1MDgwN1QxMjM3NDJaJlgtQW16LUV4cGlyZXM9MzAwJlgtQW16LVNpZ25hdHVyZT0xYzc5OGE5NWU4OGU1MWM4MjRjNWMzMGYwY2NjNWIzYTkzZDc4YzQ1OTg4MTQ5ODFlNjNkMzIzYTU2YTNlZTk1JlgtQW16LVNpZ25lZEhlYWRlcnM9aG9zdCJ9.U43X8rZlinfxSofEMfBmgr4jsAqLHnDcuBW_-vn-nIk)


Update the below mentioned app settings(if app settings are not available add them):

| Setting                     | Value / Description                                        |
|----------------------------|-------------------------------------------------------------|
| `AzureAdb2c__Instance`     | `https://<your-tenant-domain-name>.ciamlogin.com`          |
| `AzureAdb2c__Domain`       | `<your-tenant-domain-name>.onmicrosoft.com`                |
| `AzureAdb2c__ClientId`     | `<your-client-id>`                                         |
| `AzureAdb2c__TenantId`     | `<your-tenant-id>`                                         |
| `AzureAdb2c__ClientSecret` | Follow this Document                                       |
| `AzureAdb2c__Scope__0`     | `api://<your-client-id>/access_as_user`                   |


Once all app settings are updated it usually takes few minutes to reflect the changes, later check the login flow. 


