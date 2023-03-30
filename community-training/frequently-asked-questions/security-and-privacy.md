---
title: Backup, Security & Privacy
original-url: https://docs.microsoftcommunitytraining.com/docs/security-and-privacy
author: nikotha
ms.author: nikotha
description: Microsoft Community Training can only be hosted and run on Microsoft Azure Cloud.  It cannot be deployed on other public cloud providers or on-premise data center.
ms.prod: learning-azure
---

# Backup, Security & Privacy

## Data storage and ownership

### Where is the solution running from? Can it be hosted on any public cloud?

Microsoft Community Training can only be hosted and run on Microsoft Azure Cloud.  It cannot be deployed on other public cloud providers or on-premise data center.

### Where is Microsoft Community Training data stored?

Microsoft Community Training platform is hosted on customers’ Azure subscription. Customers can decide the Azure data-center region of their choice for hosting the application and storing the training content and consumption data. So, customers have complete data ownership.

For e.g. In India we have 3 data centers i.e. Central, West, and South where the platform can be hosted.

### Where will the user identity data be stored?

Microsoft Community Training platform does not store any user password. We only store the user ID which can be phone number, email address, etc. depending upon the primary identity set up for the platform.

In the Microsoft Community Training platform, user ID and other information are stored in the Azure SQL database. The connection string and login credential for Azure SQL DB are stored in the Key Vault.

### How to create a backup of the Microsoft Community Training instance?

Microsoft community training can ensure that in case of unforeseen failures and disasters, your data – which includes all your content, user data and other branding assets - is safe and secure.

Since Microsoft Community Training is a managed application, back up and replication is not enabled by default. Customers can enable backup/replication of the data to the data center region of their choice

Refer to [**this article**](../infrastructure-management/configure-your-platform-infrastructure/business-continuity-and-disaster-recovery-for-your-platform-instance.md) to learn more.

### What is the backup policy?

Customers can configure the **[backup frequency and policy](/azure/backup/backup-azure-manage-vms#manage-backup-policy-for-a-vm)**. From the product team perspective, we recommend customers to do daily a backup.  

### What is the committed Recovery Time Objective (RTO) and Recovery Point Objective (RPO)?

Customers can configure the geo-replication, automatic failover, etc. for business continuity scenarios as their business requirements. For e.g. for Azure SQL database, geo-restore from geo-replicated backups is RTO - 12 hours and RPO – 6 hours.

## Data encryption & protection

### What methodology is used for encrypting user and course data in transit and at rest?

When data is in transit, it is encrypted using TLS 1.2. When data is at rest, it is encrypted using Transparent Data Encryption (i.e. TDE).

For more details on Transfer Data Encryption, please visit [**this article**](/sql/relational-databases/security/encryption/transparent-data-encryption?view=sql-server-ver15&preserve-view=true).

### Can the customer use their own encryption keys for data encryption?

Currently, we use the default encryption key (256-bit AES encryption) provided by the Azure Services such as Azure SQL, Azure Blob Storage, etc.  
Customer can use their own encryption key features by the underlying Azure services if required. For more details, please check out [**Azure SQL TDE with customer-managed key**](/azure/sql-database/transparent-data-encryption-byok-azure-sql), [**Azure Storage encryption for data at rest**](/azure/storage/common/storage-service-encryption) and [**configure customer-managed keys**](/azure/storage/common/storage-encryption-keys-portal).

### Where is the download content on the mobile app stored?

All the content downloaded on the mobile app for offline consumption is  stored in app-data storage to prevent access via the file explorer.  Learners will have to open mobile application to access the training content.

### How is the content secured and protected on the platform from unauthorized access?

Microsoft Community Training program uses the state of art CDN services powered by Azure. With robust security such as SAS token and inbuilt lossless compression standards, Azure CDN ensures content is protected without any impact on application performance. It also helps you to reduce bandwidth costs and provide a responsive experience to users.

## Technical architecture & platform security

### What are the various technical components and Azure Services used in the Microsoft Community platform?

Here is the high-level architecture diagram of the Microsoft Community Training platform:

![architecture diagram](../media/image%28307%29.png)

1. **Azure Web App** - The endpoint and the underlying service which hosts all application logic and provides a frontend for the website. This is designed using standard Model-View-Controller (MVC) architecture and built on the .NET framework.

2. **Azure Storage** - Azure Blob Storage is used within the Microsoft Community Training platform for primarily storing the customer training content. This could be videos or pdf or other supported formats.  

3. **Azure SQL Database** - Azure SQL Database is used to store the RDBMS structure of Microsoft Community Training users and their corresponding pieces of training enlisted along with other application layer logic like reporting course completion for users and so on.

4. **Azure Media Services** - We leverage Azure Media Services to provide low-network bandwidth support along with encoding and streaming capabilities for video content.

5. **Identity** - Microsoft Community Training platform supports multiple identity providers which are configurable. For e.g. in case of phone authentication, service sends an OTP and after the user inputs the same, it is subsequently validated on the service side.

6. **Mobile app** - The mobile app is built using Xamarin Forms and leverages the .NET framework to build a secure and high-quality app for ease of use by the end-user.

### What level of security and compliance does Microsoft Community Training support?

Microsoft Community Training uses various Azure services and store customer data in Microsoft Azure datacenters (as decided by the customer). These datacenters adhere to industry standard security and compliance certifications. Also, the data is encrypted in-transit and at-rest. The platform also adheres to GDPR compliance standards.

### What is the service level agreement (SLA) provided by Microsoft Community Training?

Microsoft Community Training uses Azure services which provides robust, resilient, and failover mechanisms to provide high availability to users. The services are hosted in world-class Microsoft Azure datacenters.

However, since we are in public preview there is no committed SLA provided for Microsoft Community Training.

### What are different components used to secure the Microsoft Community Training platform from DDOS, the man in the middle attacks, etc.?

All the Azure components are hosted within the customer’s Azure subscription whereby the data is fully secure and owned by the customer. The contents of the resources are hosted only on the geographical premises as chosen by the customer.

Customer content on the Azure blob storage and Azure SQL databases are highly secure and the credentials of the same are also secured and stored in the Azure Key Vault. Again, all of this is owned by the customer.

Lastly, Azure web app is secured against external attacks by following best practices in building scalable server applications.

Here are some of the key things we do to secure the platform:

1. We use encryption in Transit to ensure the data over a network over API calls can’t be tampered with

2. Always use of Secure connections (HTTPS)

3. Use the latest TLS standards (TLS 1.2) to ensure the Transport Layer Security is foolproof

4. DDOS attacks are prevented using configuration settings in the Azure Web App service. For more details, please visit the following documents:  

    i. [**Azure DDOS protection service preview**](https://azure.microsoft.com/services/ddos-protection/)  
    ii. [**Dynamic IP Security**](/iis/configuration/system.webserver/security/dynamicipsecurity/)

### How are feature and security updates applied to the platform? What is the update frequency?

We release monthly updates to the platform. Since the Microsoft Community Training platform will be deployed as a managed app, all the platform updates will be pushed directly by Microsoft without any intervention required by the customer. For more details, please visit [**this article**](../infrastructure-management/install-your-platform-instance/installation-overview.md).

### How to view my Azure portals Secret Key vault?

Please follow the below steps to view / access your Azure key vault

* Login to your [**Azure portal**](https://portal.azure.com/)
* Select the Key Vault in your resource group which is used to create the Microsoft Community Training application
* Select **‘Access policies’**
* Select **‘Add Access policy’** button
* Select **All from the drop down** for – Key permissions, Secret permissions and certificate permission
* Select principal then select your username and click ‘Select button’
* Authorized application field – please **leave it empty** and it’s not mandatory
* **Select Add** and Save the policy
* Now **go to ‘Secrets’** and Refresh
* Select the Secret name
* Select the current version displayed in the window
* Using the **‘Copy to clipboard’** button copy the secret which is the last masked field

### Does the mobile app on Android support EMS/MDM polices via Intune?

Microsoft Community Training doesn’t support (aka honor) any Intune policies. We don’t differentiate between managed or unmanaged devices i.e. none of the MDM policies are applicable to the mobile app.
