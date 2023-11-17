---
title: Reliability in Community Training
description: Find out about reliability in Community Training 
author: cbrahmandam
ms.author: cbms03
ms.topic: reliability-article
ms.custom: subject-reliability, references_regions
ms.prod: non-product-specific
# ms.service: your-value #Required: your service meta tag goes here. For taxonomies see https://review.learn.microsoft.com/help/platform/metadata-taxonomies?branch=main#msservice
ms.date: 10/24/2023
---


# Reliability in Community Training

Community Training is a cloud-based solution that enables delivery of large-scale, far-spread training programs with high quality and efficiency. Community Training is an Azure-powered online learning platform to enable organizations of all sizes and types to run large scale training programs for their internal and external communities such as first line workers, extended workforces, partner ecosystem, volunteer network, program beneficiaries, etc.

This article describes reliability support in Community Training, and covers  both regional resiliency with [availability zones](/azure/reliability/availability-zones-overview?tabs=azure-clit) and [disaster recovery and business continuity](/azure/reliability/disaster-recovery-overview). For a more detailed overview of a reliability principles in Azure, see [Azure reliability](/azure/reliability/overview).

## Availability zone support

### Control Plane
The control plane is zone redundant in the primary regions of availability.

### Data Plane
Azure availability zones are physical locations within an Azure region that provide increased high availability and protection against datacenter failures. Each zone is made up of one or more datacenters with independent power, cooling, and networking.
[Go here for further details](/azure/reliability/availability-zones-overview).

Community Training uses Azure availability zones to provide high availability and fault tolerance within an Azure region.
It offers both Zonal and zone-redundant high availability. Customer can choose either of the redundancy options.

### Prerequisites

Community Training offers following SKU:
1. Standard (lower scale of users )
1. Premium (high scale of users )

List of regions where community training will be supported:

| Americas         | Europe               | Middle East   | Africa             | Asia Pacific   |
|------------------|----------------------|---------------|--------------------|----------------|
| West US 2        | UK South             |               |                    | Southeast Asia |
| South Central US | West Europe          |               |                    | Australia East |
| East US 2        | North Europe         |               |                    |                |
| East US          | Sweden Central       |               |                    |                |
| West US 3        |                      |               |                    |                |


Note: In the secondary region, zonal availability will be provided.


### Zonal failover support
Community Training provide configuration for redundancy at the time of creation. 
Customer should choose zone-redundant high availability to avoid any zonal failure. 
Community Training internally uses standard Azure services like App service, Azure SQL etc.
Choosing zonal redunancy option will create zonal redundant offering of underlying azure resources which will take care of the fault tolerance.


### Zone down experience
**Zonal**

If customer configures Community training as zonal and if any zone is down then Community Training will not be available during the zone down. Service availabitlity depend on various factors (datacenter down, specific service not available in that zone etc), either complete service or part of features may not be available. 

**Zone redundant**

In a zone-wide outage scenario, users should experience no impact on provisioned resources in a zone-redundant deployment. 
During a zone-wide outage, customers should be prepared to experience a brief interruption in communication with provisioned resources. Clients typically receive 409 error codes in this situation, and retry logic attempts to re-establish connections at appropriate intervals. New requests are directed to healthy nodes with zero impact on the user. During zone-wide outages, users are able to create new resources and successfully scale existing ones.

## Disaster recovery and business continuity

### Control Plane:

Regions with paired regions: The control plane will be manually failed over to the paired region in case of a disaster. The service might experience degradation in the time before the failover occurs. After the failover, only read-only operations will be supported until the disaster region is back online. The service will be manually failed back to the original region once it is back online and all operations will resume.
Regions without paired regions: The product is not available in regions without paired regions.

RPO: 10 minutes

RTO: 24 hours*

### Data plane:
Community Training offers Microsoft managed disaster recovery. The customer has to *Enable Disaster Recovery*, when the Community Training instance is created in Azure.
Once the customer enables eisaster recovery, we keep the backup of storage and database in the paired region.
> [!NOTE]
> The Disaster recover feature is only available for regions which support paired regions.
>
>* RPO: 12 hour
>* RTO: 48 hours
>
>RTO depends on database and storage size, latency between the paired region, database or storage VM capacity (SKU).
>
>RPO of community training dependends on underlying azure resources like Azure SQL and Azure storage. [Go here for further details](/azure/azure-sql/database/recovery-using-backups?view=azuresql&tabs=azure-portal).

Once we detect an Community Training instance is down in any region, we take customer consent for failover to a paired region, explaining the list of features availabe during the disaster recovery. Once we get consent from the customer, their Community Training instance is failed over to paired the region.

In the paired region, the following features will not be available:

1. Learners will not be able to consume Audio/Video features until primary site is operational (As AMS is removing its support from non-popular regions from January).

1. Recommendation for customer is to avoid media upload operations until primary site is operational.

#### Outage detection, notification, and management
A Community Training health check will detect any outage of any service. On detecting outage, we will reach out to the customer if disaster recovery is enabled. On receiving consent from the customer, the disaster recovery procedure will be managed by the Community Training team.
Disaster recover is neither active-active nor active-passive, it is based on recovery from the most recent available backup of azure services. We manually create all resources in the paired region from the data backup.

### Capacity and proactive disaster recovery resiliency
Microsoft and it's customers operate under the shared responsibility model. Once any region is down, not only is the community training instance migrated to the paired region but other product and customer workload is also migrated. This may cause shortage for resources in the paired region or datacenter. Hence, Disaster recovery availability depends on the available capacity of underlying azure resources etc.
