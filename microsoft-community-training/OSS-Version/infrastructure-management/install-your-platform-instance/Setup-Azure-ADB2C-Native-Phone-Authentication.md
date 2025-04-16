# Azure ADB2C Native Phone Authentication Setup
As of today, Community Training team develops and maintains a Phone Number OTP based identity provider based on the OpenIDConnect (OIDC) protocol. 

The team is in the process of migrating the customers using  Community Training Phone Authentication to Azure ADB2C Native Phone Authentication.

This script can be used by customers to setup the custom user journey for ADB2C Native Phone Authentication for their Microsoft Community Training instance.

### Migration of MCT phone auth to ADB2C native phone auth for Existing Instances
Steps to migrate from MCT Phone Auth to ADB2C native Phone Auth

### Step 1 - Setup your Azure AD B2C

You can create a new Azure AD B2C tenant or create an existing one based on your organization requirement.

1. Login to [**Azure portal**](https://portal.azure.com/).

2. Create a new [**Azure Active Directory B2C**](/azure/active-directory-b2c/tutorial-create-tenant)  tenant.

3. Link the Azure Active Directory B2C tenant just created to your Azure subscription.  

### Step 2 - Create Azure AD B2C application

Here are the steps an create on Azure AD B2C tenant and link the same with your training portal instance:

1. Create a new Azure AD B2C application by following [**this article**](/azure/active-directory-b2c/tutorial-register-applications). Please ensure application properties are set as following:
    1. Web app / Web API - set to "Yes"
    2. Allow implicit flow - set to "No"
    3. Add following to **Reply URL**
        1. "https://*name*.azurefd.net/signin-b2c"
        2. "https://*name*.azurewebsites.net/signin-b2c"
        3. "https://*name*-staging.azurewebsites.net/signin-b2c"
    where "name" corresponds to your website name.

    4. If you are setting up **Password reset flow**, then add following to **Reply URL**
        1. "https://*name*.azurefd.net/signin-b2c-pwd"
        2. "https://*name*.azurewebsites.net/signin-b2c-pwd"
        3. "https://*name*-staging.azurewebsites.net/signin-b2c-pwd"  
    where "name" corresponds to your website name.

2. Copy the Application ID value to be required later for [**Client ID**](https://learn.microsoft.com/en-us/azure/industry/training-services/microsoft-community-training/infrastructure-management/install-your-platform-instance/configure-login-social-work-school-account#step-2---create-azure-ad-b2c-application).

1. In your Application, under Manage, go to **Certificates & Secrets** and click on **Generate Key**.

1.  Copy the Application ID value to be required later for **Client ID**.
    :::image type="content" source="../../media/cliendIDB2C.png" alt-text="clientapplicaitonID":::

1. Go to Azure Active Directory from the left menu of your Azure portal, click on Domain Names and copy the tenant name under Name to be required later for **Tenant Name**. For example, if the default domain for your Azure AD tenant is **contoso.onmicrosoft.com**, then enter **contoso**.

1. Open cloud shell in Azure Portal. If cloud shell is not setup previously, please follow the on-screen instructions to setup cloud shell.

1. Download the setup script and configuration files using the following commands
    - `wget -q <url-to-script> -O ./b2c_phone_setup.ps1`

1. Get the tenantId and fully qualified domain name of the Azure ADB2C tenant
    - tenantId should be a globally unique identifier (guid)
    - fully qualified domain name should look like ***\<your-domain\>.onmicrosoft.com***
    
1. Run the setup script using the following command
    - `./b2c_phone_setup.ps1 -tenantId <tenantId> -domainName <domainName>`
    - Replace `<tenantId>` and `<domainName>` with the values from step 6 respectively.
    
1. The script completes successfully when it outputs the ***AuthPolicyName*** and ***GraphApiManagementAppSecret***. Copy the ***GraphApiManagementAppSecret*** and store securely for later use.

1. Update the following app service configurations
    - **idp:AzureADB2CExternalAuthPolicy** - **AuthPolicyName** from the script output as mentioned in step 8.
    - **idpSelection** - 1
