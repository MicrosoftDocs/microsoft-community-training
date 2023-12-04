---
title: Backup, Security & Privacy
original-url: https://docs.microsoftcommunitytraining.com/docs/security-and-privacy
author: cbms03
ms.author: cbrahmandam
description: Community Training can only be hosted and run on Microsoft Azure Cloud.  It cannot be deployed on other public cloud providers or on-premise data center.
ms.prod: learning-azure
---

# Backup, Security & Privacy

## Data storage and ownership

### Where is the solution running from? Can it be hosted on any public cloud?

Community Training can only be hosted and run on Microsoft Azure Cloud.  It cannot be deployed on other public cloud providers or on-premise data centers.

### Where is Community Training data stored?

Community Training is hosted on Microsoft's subscription and the data is stored in the region you choose when installing the platform.

For example, in India, there are three data centers. These are Central, West, and South where the your instance's data can be hosted.

### Where will the user identity data be stored?

Community Training does not store any user password. We only store the user ID which can be a phone number, email address, etc. depending upon the primary identity set up for the platform.

In the Community Training, user ID and other information are stored in the Azure SQL database. The connection string and sign-in credentials for Azure SQL DB are stored in the Key Vault.

### How to create a backup of the Community Training instance?

Community Training can ensure that in case of unforeseen failures and disasters, your data – which includes all your content, user data, and other branding assets - is safe and secure.

TThe backup and replication are not enabled by default. Customers can enable backup/replication of the data at installation. The data will be replicated only to the region paired with the primary region selected at installation. Please note, if there is no paired region associated with the primary, we will not be able to offer backup and replication. Please refer to [**this**](../infrastructure-management/install-your-platform-instance/detailed-step-by-step-installation-guide.md) article for more information and [**this**](https://learn.microsoft.com/azure/reliability/cross-region-replication-azure#azure-paired-regions) 
article for list of paired regions..

<!--

Hiding this until BCDR Document is ready


Refer to [**this article**](../infrastructure-management/configure-your-platform-infrastructure/business-continuity-and-disaster-recovery-for-your-platform-instance.md) to learn more.
-->
### What is the backup policy?

Customers can configure the **[backup frequency and policy](/azure/backup/backup-azure-manage-vms#manage-backup-policy-for-a-vm)**. From the product perspective, we recommend customers do daily a backup.  

### What are the committed Recovery Time Objective (RTO) and Recovery Point Objective (RPO)?

Customers can configure the geo-replication, failover, etc. for business continuity scenarios as their business requirements. For example, for Azure SQL Database, geo-restore from geo-replicated backups is RTO - 12 hours and RPO – 6 hours.

## Data encryption & protection

### What methodology is used for encrypting user and course data in transit and at rest?

When data is in transit, it is encrypted using TLS 1.2. When data is at rest, it is encrypted using Transparent Data Encryption (i.e. TDE).

For more details on Transfer Data Encryption, please visit [**this article**](https://learn.microsoft.com/sql/relational-databases/security/encryption/transparent-data-encryption?view=sql-server-ver15&preserve-view=true).

### Can customers use their own encryption keys for data encryption?

Currently, we use the default encryption key (256-bit AES encryption) provided by Azure Services such as Azure SQL, Azure Blob Storage, etc.
We will soon provide you with the ability to use your own encryption keys.

<!--
Customer can use their own encryption key features by the underlying Azure services if required. For more details, please check out [**Azure SQL TDE with customer-managed key**](/azure/sql-database/transparent-data-encryption-byok-azure-sql), [**Azure Storage encryption for data at rest**](/azure/storage/common/storage-service-encryption) and [**configure customer-managed keys**](/azure/storage/common/storage-encryption-keys-portal).
-->

### Where is the download content on the mobile app stored?

All the content downloaded on the mobile app for offline consumption is stored in app data storage to prevent access via the file explorer.  Learners will have to open the mobile application to access the training content.

### How is the content secured and protected on the platform from unauthorized access?

Community Training uses the state of art CDN services powered by Azure. With robust security such as SAS token and inbuilt lossless compression standards, Azure CDN ensures content is protected without any impact on application performance. It also helps you to reduce bandwidth costs and provide a responsive experience to users.



## Technical architecture & platform security
<!--

HIDING THIS AS THE PLATFORM IS NOW IN HOBO AND ITS RECOMMENDED THAT THE ARCHITECTURE SHOULD NOT BE EXPOSED
### What are the various technical components and Azure Services used in Community Training?

Here is the high-level architecture diagram of the Community Training:

![architecture diagram](../media/image%28307%29.png)

1. **Azure Web App** - The endpoint and the underlying service that hosts all application logic and provides a frontend for the website. This is designed using standard Model-View-Controller (MVC) architecture and built on the .NET framework.

2. **Azure Storage** - Azure Blob Storage is used within the Community Training for primarily storing the customer training content. This could be videos, pdf, or other supported formats.  

3. **Azure SQL Database** - Azure SQL Database is used to store the RDBMS structure of Community Training users and their corresponding pieces of training enlisted along with other application layer logic like reporting course completion for users and so on.

4. **Azure Media Services** - We leverage Azure Media Services to provide low-network bandwidth support along with encoding and streaming capabilities for video content.

5. **Identity** - Community Training supports multiple identity providers that are configurable. For example, in the case of phone authentication, the service sends an OTP and after the user provides the right code, it is subsequently validated on the service side.

6. **Mobile app** - The mobile app is built using Xamarin Forms and leverages the .NET framework to build a secure and high-quality app for ease of use by the end-user.

-->
### What level of security and compliance does Community Training support?

Community Training uses various Azure services and stores customer data in Microsoft Azure data centers (as decided by the customer). These data centers adhere to industry-standard security and compliance certifications. Also, the data is encrypted in transit and at rest. The platform also adheres to GDPR compliance standards.


<!--
### What is the service level agreement (SLA) provided by Community Training?

Community Training uses Azure services which provide robust, resilient, and failover mechanisms to provide high availability to users. The services are hosted in world-class Microsoft Azure data centers.

However, since we are in public preview there is no committed SLA provided for Community Training.
-->

### What are the different components used to secure the Community Training from DDOS, man-in-the-middle attacks, etc.?

The contents of the Azure resources are hosted only on the geographical premises as chosen by the customer.

Here are some of the key things we do to secure the platform:

1. We use encryption in Transit to ensure the data over a network. <!-- over API calls can’t be tampered with -->

2. Always use of Secure connections (HTTPS)

3. Use the latest TLS standards (TLS 1.2) to ensure the Transport Layer Security is foolproof

4. DDOS attacks are prevented using configuration settings in the Azure Web App service. For more details, please visit the following documents:  

    i. [**Azure DDOS protection service preview**](https://azure.microsoft.com/services/ddos-protection/)  
    ii. [**Dynamic IP Security**](/iis/configuration/system.webserver/security/dynamicipsecurity/)

### How are feature and security updates applied to the platform? What is the update frequency?

All the platform updates to the Community Training will be pushed directly by Microsoft without any intervention required by the customer. For more details, please visit [**this article**](../infrastructure-management/install-your-platform-instance/installation-overview.md).

### How to view my Azure portals Secret Key vault?

Please follow the below steps to view/access your Azure key vault

* Login to your [**Azure portal**](https://portal.azure.com/)
* Select the Key Vault in your resource group which is used to create the Community Training application
* Select **Access policies**
* Select **‘Add Access policy’** button
* Select **All from the drop-down** for – Key permissions, Secret permissions, and certificate permission
* Select principal then select your username and click the Select button
* Authorized application field – please **leave it empty** and it’s not mandatory
* **Select Add** and Save the policy
* Now **go to ‘Secrets’** and Refresh
* Select the Secret name
* Select the current version displayed in the window
* Using the **‘Copy to clipboard’** button copy the secret which is the last masked field

### Does the mobile app on Android support EMS/MDM policies via Intune?

Community Training doesn’t support (aka honor) any Intune policies. We don’t differentiate between managed or unmanaged devices i.e. none of the MDM policies are applicable to the mobile app.

Please reach out to us [**via HelpDesk**](https://aka.ms/ctHelpdesk) if you have any further queries.
