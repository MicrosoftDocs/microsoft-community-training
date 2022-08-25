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

### What kind of login identity is supported by Microsoft Community Training platform?

Currently, there are 3 forms of login identity supported in the platform out of box i.e. Mobile Number, Personal Email Address (or  Social Account) and Azure AD. The customer can choose any one of the above methods as authentication method or any combination of above mentioned 3 forms of login identity for the learners on the portal as explained below:

1. **Mobile Number** - Learners receive one-time-password on the mobile no. which is entered at the time signing in. On successful verification, learners can access the portal.

2. **Personal Email Address** – Learners can choose personal email address or social account such as Facebook, LinkedIn, etc. to login into the portal. On successful authentication from identity provider (i.e. Google, FB or Microsoft), learners are logged into Microsoft Community Training portal as well

3. **Azure Active Directory** -  Learners use their Azure Active Directory (aka Azure AD) credentials to login to the portal.

4. **Login via multiple modes** - Microsoft Community Training supports adding more than one authentication option for a single platform instance. To be able to configure multiple authentications to your instance you need to first create [**AD B2C**](https://docs.microsoft.com/azure/active-directory-b2c/overview) tenant and register an application to later add Mobile number, Personal Email, Azure AD login support for your instance.

Apart from the out-of-box identities, platform can integrate with any existing OAuth 2.0, OpenID Connect or SAML based authenticate service for login. For more information, reach out us [**via HelpDesk**](https://go.microsoft.com/fwlink/?linkid=2104630).

<!---
> [!NOTE]  
> Organization can use only 1 of the identity type for login purpose.
--->

### I want to use Microsoft Community Training platform for both my internal and external workforces training. How can I configure the platform for such scenarios?

The platform can be configured depending upon how internal and external workforce will be accessing the portal as explained below:

#### *Case 1 – Both internal and external workforce are managed (via Azure AD)*

The platform can be setup with Azure AD as the login identity. Learners can use their existing credentials to access the training content. Organizations can make use of groups and admin only courses to ensure external workforce cannot access course content meant for internal employees.

#### *Case 2 – Internal workforce is Managed (via Azure AD) and External workforce is not managed*

The platform can be setup with Azure AD B2C to support personal email support and you can add Azure AD login support to your B2C instance, which will allow your employees to login using their work account and external partners to login via their personal email ID.

#### *Case 3 - Both internal and external workforce are unmanaged*

The platform can be setup with personal email address (aka social account) or mobile no. as the login identity. Learners can use their existing social account or mobile no. to access the training content. Organizations can make use of groups and admin only courses to ensure external workforce cannot access course content meant for internal employees.

Alternatively, you can setup an instance with AD B2C to support login with personal email, later you can add phone auth which allows users to choose either email or phone for login.

### Is there a provision for guest login on the Microsoft Community Training platform?

Currently, there  is no guest user provision on the platform. Every user, depending upon the login identity setup for the platform, needs to authenticate before they can access the platform and consume content.

### Is it possible to allow learners to login using either Mobile number or Email address for the same instance?

Yes, MCT will support login via multiple modes for same instance,for that you need to have B2C tenant to which you can add Azure AD, phone auth as IDP.

### My learners don’t have an email address or mobile number, how can they login and access the training content?

You can create Azure AD B2C tenant with local account setup  and let learners generate their own username and password at the time of registration.

For more information, please contact us [**via HelpDesk**](https://go.microsoft.com/fwlink/?linkid=2104630) and leave your requirements in the ticket description.

## Mobile number login

### What is a One Time Password based login for mobile number?

Every time when a user logs in using their mobile number he or she will receive a one-time password via SMS. Users can enter the received code and login into the portal.

### What makes Microsoft Community Training secure if anyone with a valid phone number or email address can access the platform? How can I prevent access to course content in such scenarios?

There are often scenarios when an organization wants to restrict portal access only to their internal workforces, identified communities or an existing list of learners.  In such scenarios, admins can use the Restricted User Access setting in the management portal to prevent users outside of the organization from logging into the portal.

When this setting is enabled, only users that are added or imported to the portal by the organization will be allowed to access the portal. Please refer [**this article**](../settings/restrict-portal-access-to-users-outside-your-organization.md) to learn how to restrict access to your learning portal.

### For phone based login, my learners are unable to receive One Time Password (OTP)? What should I do?

Depending upon the network operator, it can take up to a minute to receive One Time Password, learners can request to resend OTP via the resend dialog and try again.  
![Phone base login](../media/image%28317%29.png)

If the problem persists, you can reach out us [**via HelpDesk**](https://go.microsoft.com/fwlink/?linkid=2104630).

### For mobile based login, what will happen if learner has changed his or her number?

Currently, there is no user facing interface available for learners to change their phone number. In case, learner has changed his mobile number and wants the same to be updated in the portal then he or she needs to contact the organization admin.

Post which, admins can us [**via HelpDesk**](https://go.microsoft.com/fwlink/?linkid=2104630) and we will help them with updating the details.

## Email address login

### How  to configure social account or email-based login on the Microsoft Community Training platform?

Refer to [**this article**](../infrastructure-management/install-your-platform-instance/configure-login-social-work-school-account.md), to understand how  to configure social account and email-based login for the Microsoft Community Training  platform.

### Can I allow my users to login via social media accounts such as Google & Facebook?

To enable Google and Facebook login for Microsoft Community Training instance, you need to setup the platform with Azure AD B2C (i.e. social account option) at the time of deployment. Post which, you can add Google and Facebook as IDP provider on your Azure AD B2C tenant. For more information, checkout the links below:

1. [**Setting up Microsoft Community Training with Azure AD B2C**](../infrastructure-management/install-your-platform-instance/configure-login-social-work-school-account.md)
2. [**Setup sign in with Google in Azure AD B2C**](/azure/active-directory-b2c/identity-provider-google)

## Azure Active Directory login

### Can I setup Microsoft Community Training instance with login support for different Azure Active Directory account? Is it possible to use multiple Azure AD authentication?

Yes, you can deploy Microsoft Community Training instance with Azure AD B2C setup and enable Azure AD as IDP provider for learners to use their existing work account for login purpose.

For more information, please contact us [**via HelpDesk**](https://go.microsoft.com/fwlink/?linkid=2104630) and leave your requirements in the ticket description.

## SSO & Integration with external IDP

### How can I setup Single Sign On for Microsoft Community Training platform with an existing identity provider?

Microsoft Community Training (Microsoft community training) platform supports all the standard OAuth 2.0 and OpenID connect auth service provider and Single Sign-On can be enabled between the existing system and Microsoft community training platform seamlessly. See the [**deployment guide for more details**](../infrastructure-management/install-your-platform-instance/configure-login-social-work-school-account.md#social-account-or-email-based-authentication).

In case of the existing identity system is not OAuth2.0 / OpenID connect based then enabling Single Sign On between Microsoft community training and the existing system will require custom work as highlighted flow diagram below. Please raise a support ticket for more information and kick start the SSO discussion.

For all queries regarding SSO and/or custom login, contact us via  **[HelpDesk](https://sangamhelpdesk.microsoftcrmportals.com/SignIn?ReturnUrl=%2Fsupport%2Fcreate-case%2F)** and leave your requirements in the ticket description.

### I am already using OKTA for managing my workforces. How can I enable SSO with Microsoft Community Training?

Microsoft Community Training supports single sign on with OKTA. To enable this, you must set up your platform with Azure AD B2C (aka social account login) and add OKTA as IDP provider on your Azure AD B2C tenant. For more details see below article:

1. [**Setting up Microsoft Community Training with Azure AD B2C**](../infrastructure-management/install-your-platform-instance/configure-login-social-work-school-account.md)
2. [**Setup sign in with OKTA in Azure AD B2C**](/azure/active-directory-b2c/identity-provider-generic-openid-connect)

#### Does Microsoft Community Training support any OAuth2.0 or SAML based identity provider?

Microsoft Community Training can be integrated with any existing OAuth 2.0, OpenID Connect or SAML based authenticate service for login using Azure AD B2C.

To enable OAuth 2.0 or SAML, please contact us [**via HelpDesk**](https://go.microsoft.com/fwlink/?linkid=2104630) and leave your requirements in the ticket description.

## Restrict user access

### Can learners create their own account and access the courses on the platform without any approval process?

Microsoft Community Training platforms allow two ways of setting up user registration and authentication:

1. **Open to Everyone**: In this mode, users can self-register using their phone number or email address and start consuming course without any approval process involved.

2. **Restrict to  your community or organization**: In this mode, organizations  can decide who can access the platform and restrict platform access to only known list of users. .

For more details, checkout **[this article](../settings/restrict-portal-access-to-users-outside-your-organization.md)**.

### How do we prevent access to the platform once the user leaves the organization?

You can delete a user from the platform once he or she leaves the organization. Refer [**this article**](../user-management/manage-users/remove-user-from-the-portal.md) to learn how.

### Can a non-logged in user view my course content?

No, Microsoft Community Training platform requires users to be logged in to the portal before they are allowed to view the course content.

#### How do I prevent users outside my organization from accessing the platform? I don't want outside users to access the content on the platform

We provide you a way to restrict users from the platform.

Refer **[this article](../settings/restrict-portal-access-to-users-outside-your-organization.md)** to learn how.

### Can I pre-register users on the platform and limit portal access to only these users?

You can pre-register users by importing your existing users' database to the Microsoft community training portal.

For more information, **[refer here](../settings/restrict-portal-access-to-users-outside-your-organization.md)**.

### I have a list of users in my database and I want to restrict my training portal to only these list of users

Organizations can restrict portal access only to their internal workforces, identified communities or an existing list of learners.

For example, a large manufacturing company has created product training courses for its sales and services workforce in the organization. They have set up the platform with Phone Number as an identity for the training program.

Since these training courses are meant only for internal employees, admins can use the Restricted User Access setting in the management portal to prevent users outside of the organization from logging into the portal. When this setting is enabled, only users that are added or imported to the portal by the organization will be allowed to access the portal.

For more information, **[refer here](../settings/restrict-portal-access-to-users-outside-your-organization.md)**
  
### Where are the learners data such as name, email ID & phone number saved?

All the learners data will be stored in Azure SQL DB on customer’s subscriptions. You can choose your preferred data center region at the time of deployment.

### How many users does the Microsoft Community Training platform support?

Microsoft Community Training does not have any limitations on the number of users that be added to the platform. You will be able to have as many users as required.
