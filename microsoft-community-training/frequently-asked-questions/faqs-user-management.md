---
title: Login Types and User Identity
original-url: https://docs.microsoftcommunitytraining.com/docs/faqs-user-management
author: nikotha
ms.author: nikotha
description: Currently, there are 3 forms of login identity supported in the platform out of box i.e. Mobile Number, Personal Email Address (or  Social Account) and Azure AD.
ms.prod: learning-azure
---

# Login Types and User Identity

## Types of login identities

### What kind of login identity is supported by Community Training?

Currently, there are 3 forms of login identity supported in the platform out-of-the-box i.e. Mobile Number, Personal Email Address (or  Social Account), and Azure AD. The customer can choose any one of the above methods as an authentication method or any combination of above mentioned 3 forms of login identity for learners on the portal as explained below:

1. **Mobile Number** - Learners receive a one-time-password on the mobile no. which is entered at the time signing in. On successful verification, learners can access the portal.

2. **Personal Email Address** – Learners can choose a personal email address or social account such as Facebook, LinkedIn, etc. to login into the portal. On successful authentication from an identity provider (i.e. Google, FB, or Microsoft), learners are logged into the Community Training portal as well.

3. **Azure Active Directory** -  Learners use their Azure Active Directory (aka Azure AD) credentials to sign in to the portal.

4. **Login via multiple modes** - Community Training supports adding more than one authentication option for a single platform instance. To be able to configure multiple authentications to your instance you need to first create [**AD B2C**](/azure/active-directory-b2c/overview) tenant and register an application to later add a Mobile number, Personal Email, Azure AD login support for your instance.

Apart from the out-of-box identities, the platform can integrate with any existing OAuth 2.0, OpenID Connect, or SAML-based authenticate service for login. For more information, reach out to us [**via HelpDesk**](https://go.microsoft.com/fwlink/?linkid=2104630).

<!---
> [!NOTE]  
> Organization can use only 1 of the identity type for sign-in purposes.
--->

### I want to use Community Training for both my internal and external workforce training. How can I configure the platform for such scenarios?

The platform can be configured depending upon how internal and external workforce will be accessing the portal as explained below:

#### *Case 1 – Both internal and external workforce are managed (via Azure AD)*

The platform can be set up with Azure AD as the login identity. Learners can use their existing credentials to access the training content. Organizations can make use of groups and admin-only courses to ensure external workforce cannot access course content meant for internal employees.

#### *Case 2 – Internal workforce is Managed (via Azure AD) and External workforce is not managed*

The platform can be set up with Azure AD B2C to support personal email support and you can add Azure AD login support to your B2C instance, which will allow your employees to sign in using their work account and external partners to sign in via their personal email ID.

#### *Case 3 - Both internal and external workforce are unmanaged*

The platform can be set up with a personal email address (aka social account) or mobile no. as the login identity. Learners can use their existing social account or mobile no. to access the training content. Organizations can make use of groups and admin-only courses to ensure the external workforce cannot access course content meant for internal employees.

Alternatively, you can set up an instance with AD B2C to support login with personal email, later you can add phone auth which allows users to choose either email or phone for login.

### Is there a provision for guest login on the Community Training?

Currently, there is no guest user provision on the platform. Every user, depending upon the login identity setup for the platform, needs to authenticate before they can access the platform and consume content.

### Is it possible to allow learners to sign using either a mobile number or email address for the same instance?

Yes, CT will support login via multiple modes for the same instance, for that you need to have a B2C tenant to which you can add Azure AD, and phone auth as IDP.

### My learners don’t have an email address or mobile number, how can they sign in and access the training content?

You can create Azure AD B2C tenant with a local account setup and let learners generate their own username and password at the time of registration.

For more information, please contact us [**via HelpDesk**](https://go.microsoft.com/fwlink/?linkid=2104630) and leave your requirements in the ticket description.

## Mobile number login

### What is a one-time password-based sign-in for a mobile number?

Every time a user signs in using their mobile number they will receive a one-time password via SMS. Users can enter the received code and sign in to the portal.

### What makes Community Training secure if anyone with a valid phone number or email address can access the platform? How can I prevent access to course content in such scenarios?

There are often scenarios when an organization wants to restrict portal access only to their internal workforces, identified communities, or an existing list of learners.  In such scenarios, admins can use the Restricted User Access setting in the management portal to prevent users outside of the organization from logging into the portal.

When this setting is enabled, only users who are added or imported to the portal by the organization will be allowed to access the portal. Please refer to [**this article**](../settings/restrict-portal-access-to-users-outside-your-organization.md) to learn how to restrict access to your learning portal.

### For phone-based login, my learners are unable to receive a One-Time-Password (OTP). What should I do?

Depending upon the network operator, it can take up to a minute to receive a One-Time-Password, learners can request to resend OTP via the resend dialog and try again.  
![Phone base login](../media/image%28317%29.png)

If the problem persists, you can reach out to us [**via HelpDesk**](https://go.microsoft.com/fwlink/?linkid=2104630).

### For mobile-based login, what will happen if a learner has changed their number?

Currently, there is no user-facing interface available for learners to change their phone numbers. In case, the learner has changed their mobile number and wants it to be updated in the portal then they need to contact the organization admin.

Post which, admins can us [**via HelpDesk**](https://go.microsoft.com/fwlink/?linkid=2104630), and we will help them with updating the details.

## Email address sign-in

### How to configure a social account or email-based login on the Community Training

Refer to [**this article**](../infrastructure-management/install-your-platform-instance/configure-login-social-work-school-account.md), to understand how to configure a social account and email-based sign-in for the Community Training.

### Can I allow my users to sign in via social media accounts such as Google & Facebook?

To enable Google and Facebook login for the Community Training instance, you need to set up the platform with Azure AD B2C (i.e. social account option) at the time of deployment. After that, you can add Google and Facebook as IDP providers on your Azure AD B2C tenant. For more information, check the links below:

1. [**Setting up Community Training with Azure AD B2C**](../infrastructure-management/install-your-platform-instance/configure-login-social-work-school-account.md)
2. [**Setup sign in with Google in Azure AD B2C**](/azure/active-directory-b2c/identity-provider-google)

## Azure Active Directory login

### Can I set up Community Training instance with login support for different Azure Active Directory account?  Is it possible to use multiple Azure AD authentication?

Yes, you can deploy Community Training instance with Azure AD B2C setup and enable Azure AD as IDP provider for learners to use their existing work account for sign-in purposes.

For more information, please contact us [**via HelpDesk**](https://go.microsoft.com/fwlink/?linkid=2104630) and leave your requirements in the ticket description.

## SSO & Integration with external IDP

### How can I set up Single Sign On for Community Training with an existing identity provider?

Community Training (Community Training) platform supports all the standard OAuth 2.0 and OpenID connect auth service providers and Single Sign-On can be enabled between the existing system and Community Training seamlessly. See the [**deployment guide for more details**](../infrastructure-management/install-your-platform-instance/configure-login-social-work-school-account.md#social-account-or-email-based-authentication).

In case the existing identity system is not OAuth2.0 / OpenID connect-based then enabling Single Sign On between Community Training and the existing system will require custom work as highlighted flow diagram below. Please raise a support ticket for more information and kick-start the SSO discussion.

For all queries regarding SSO and/or custom login, contact us via  **[HelpDesk](https://sangamhelpdesk.microsoftcrmportals.com/SignIn?ReturnUrl=%2Fsupport%2Fcreate-case%2F)** and leave your requirements in the ticket description.

### I am already using OKTA for managing my workforces. How can I enable SSO with Community Training?

Community Training supports single sign-on with OKTA. To enable this, you must set up your platform with Azure AD B2C (aka social account login) and add OKTA as an IDP provider on your Azure AD B2C tenant. For more details see below article:

1. [**Setting up Community Training with Azure AD B2C**](../infrastructure-management/install-your-platform-instance/configure-login-social-work-school-account.md)
2. [**Setup sign in with OKTA in Azure AD B2C**](/azure/active-directory-b2c/identity-provider-generic-openid-connect)

#### Does Community Training support any OAuth2.0 or SAML-based identity provider?

Community Training can be integrated with any existing OAuth 2.0, OpenID Connect, or SAML-based authenticate service for login using Azure AD B2C.

To enable OAuth 2.0 or SAML, please contact us [**via HelpDesk**](https://go.microsoft.com/fwlink/?linkid=2104630) and leave your requirements in the ticket description.

## Restrict user access

### Can learners create their own accounts and access the courses on the platform without any approval process?

Community Training allows two ways of setting up user registration and authentication:

1. **Open to Everyone**: In this mode, users can self-register using their phone number or email address and start using the course without any approval process involved.

2. **Restrict to your community or organization**: In this mode, organizations can decide who can access the platform and restrict platform access to only a known list of users. 

For more details, checkout **[this article](../settings/restrict-portal-access-to-users-outside-your-organization.md)**.

### How do we prevent access to the platform once the user leaves the organization?

You can delete a user from the platform once they leave the organization. Refer to [**this article**](../user-management/manage-users/remove-user-from-the-platform.md) to learn how.

### Can a non-signed-in user view my course content?

No, Community Training requires users to be logged in to the portal before they are allowed to view the course content.

#### How do I prevent users outside my organization from accessing the platform? I don't want outside users to access the content on the platform

You can restrict users from the platform.

Refer to **[this article](../settings/restrict-portal-access-to-users-outside-your-organization.md)** to learn how.

### Can I pre-register users on the platform and limit portal access to only these users?

You can pre-register users by importing your existing users' database to the Community Training portal.

For more information, **[go here](../settings/restrict-portal-access-to-users-outside-your-organization.md)**.

### I have a list of users in my database and I want to restrict my training portal to only this list of users

Organizations can restrict portal access only to their internal workforces, identified communities, or an existing list of learners.

For example, a large manufacturing company has created product training courses for its sales and services workforce in the organization. They have set up the platform with a phone number as an identity for the training program.

Since these training courses are meant only for internal employees, admins can use the Restricted User Access setting in the management portal to prevent users outside of the organization from logging into the portal. When this setting is enabled, only users who are added or imported to the portal by the organization will be allowed to access the portal.

For more information, **[go here](../settings/restrict-portal-access-to-users-outside-your-organization.md)**
  
### Where is learner data such as name, email ID & phone number saved?

All the learner data will be stored in Azure SQL DB on customer’s subscriptions. You can choose your preferred data center region at the time of deployment.

### How many users does the Community Training support?

Community Training does not have any limitations on the number of users that are added to the platform. You will be able to have as many users as required.

## Setup Native ADB2C Phone authentication: Custom policies for Phone login through Azure ADB2C For CT

You can choose to enable phone number as a sign-up option tenant-wide by adding phone sign-up and sign-in to your local account identity provider via ADB2C instead of using CT phone authentication by defining [Custom policies](/azure/active-directory-b2c/custom-policy-overview) which are configuration files that define the behavior of your Azure Active Directory B2C tenant.

### Prerequisites

- If you don't have one already, [create an Azure AD B2C tenant](/azure/active-directory-b2c/tutorial-create-tenant) that is linked to your Azure subscription.
- [Register a web application](/azure/active-directory-b2c/tutorial-register-applications?tabs=app-reg-ga), and [enable ID token implicit grant](/azure/active-directory-b2c/tutorial-register-applications?tabs=app-reg-ga#enable-id-token-implicit-grant).

### Add signing and encryption keys

1. Sign in to the [Azure portal](https://portal.azure.com).
1. Make sure you're using the directory that contains your Azure AD B2C tenant. Select the **Directories + subscriptions** icon in the portal toolbar.
1. On the **Portal settings | Directories + subscriptions** page, find your Azure AD B2C directory in the **Directory name** list, and then select **Switch**.
1. In the Azure portal, search for and select **Azure AD B2C**.
1. On the overview page, under **Policies**, select **Identity Experience Framework**.

#### Create the signing key

1. Select **Policy Keys** and then select **Add**.
1. For **Options**, choose `Generate`.
1. In **Name**, enter `TokenSigningKeyContainer`. The prefix `B2C_1A_` might be added automatically.
1. For **Key type**, select **RSA**.
1. For **Key usage**, select **Signature**.
1. Select **Create**.

#### Create the encryption key

1. Select **Policy Keys** and then select **Add**.
1. For **Options**, choose `Generate`.
1. In **Name**, enter `TokenEncryptionKeyContainer`. The prefix `B2C_1A`_ might be added automatically.
1. For **Key type**, select **RSA**.
1. For **Key usage**, select **Encryption**.
1. Select **Create**.

### Custom policy

1. [Download the .zip file](https://github.com/MicrosoftDocs/microsoft-community-training/files/9452013/Native_ADB2C_PhoneAuth_CT-main.zip)
<!---
1. [Download the .zip file](https://github.com/Indrasen-Singh/Native_ADB2C_PhoneAuth_CT/archive/refs/heads/main.zip) or clone the repository:

    ```console
    git clone https://github.com/Indrasen-Singh/Native_ADB2C_PhoneAuth_CT.git
    ```
-->
2. In all of the files in the directory, replace the string `yourtenant` with the name of your Azure AD B2C tenant.

    For example, if the name of your B2C tenant is *contosotenant*, all instances of `yourtenant.onmicrosoft.com` become `contosotenant.onmicrosoft.com`.

3. Save the file.

### Upload the policies

1. Select the **Identity Experience Framework** menu item in your B2C tenant in the Azure portal.
1. Select **Upload custom policy**.
1. In this order, upload the policy files:
    1. *Phone_Email_Base.xml*
    1. *SignUpOrSignInWithPhone.xml*

As you upload the files, Azure adds the prefix `B2C_1A_` to each.

### Test the custom policy

1. Under **Custom policies**, select **B2C_1A_SignUpOrSignInWithPhone**.
1. For **Select application** on the overview page of the custom policy, select the web application named *webapp1* that you previously registered.
1. Make sure that the **Reply URL** is `https://jwt.ms`.
1. Select **Run now**.
1. Sign up using a phone number.
1. Select **Run now** again.
1. Sign in with the same account to confirm that you have the correct configuration.

### Update the App setting

1. Navigate to [App service](/azure/industry/training-services/microsoft-community-training/settings/configurations-on-the-training-platform#steps-to-set-the-configurations-on-the-platform) configurations.
2. Search for `idp:AzureADB2CExternalAuthPolicy`
3. Update the value to **B2C_1A_SignUpOrSignInWithPhone**
4. Save the App settings

### Reference

1. [Tutorial - Create user flows and custom policies - Azure Active Directory B2C](/azure/active-directory-b2c/tutorial-create-user-flows?pivots=b2c-custom-policy)

2. [Phone Number Passwordless](https://github.com/Azure-Samples/active-directory-b2c-custom-policy-starterpack/tree/master/scenarios/phone-number-passwordless)

### Next steps

You can also learn more in the [Azure AD B2C Architecture Deep Dive Series](https://www.youtube.com/playlist?list=PLOPotgzC07IKXXCTZcrpuLWbVe3y51kfm).
