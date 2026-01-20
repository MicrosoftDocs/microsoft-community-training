---
title: User Management - Overview
original-url: https://docs.microsoftcommunitytraining.com/docs/user-management-overview
author: nikotha
ms.author: nikotha
description: "Community Training portal allows administrators an easy way to delegate/automate administrative tasks like user onboarding, course enrollment, etc. and empower the ground level facilitators/trainers to drive engagement and adoption of the learning program across your training audience."
ms.service: azure
---
> [!IMPORTANT]  
> Community Training will reach end of support on Tuesday, April 7, 2026. No new deployments are available at this time. Existing Community Training customers will continue to receive security updates and technical support through Tuesday, April 7, 2026 at 11:59 pm. For more information or support, please reach out to our team here: https://aka.ms/cthelpdesk
# User Management - Overview

The Community Training portal allows administrators an easy way to delegate and automate administrative tasks like user onboarding, course enrollment, and empower the ground level facilitators/trainers to drive engagement and adoption of the learning program across your training audience.

All the user management functionalities are stacked together in a single panel under the **Users** tile – a one-stop-shop for administrators to manage users and course enrollments on the management portal. From the users tab, administrators can [**add users**](./add-users/add-users-to-the-portal-1.md) and assign administrative roles, [**create groups**](./organize-users/create-a-new-group.md), assign courses, track progress and much more.

![User Management - Overview](../media/image%28421%29.png)

In this article, you will learn how to use the management portal capabilities to create and manage your users and facilitate effective training administration.

## Types of Users

In the Community Training platform, there are two types of users: a Learner and an Administrator.

### Learner

A Learner is the default role assigned to any user added to the platform. Learners can view and consume courses uploaded by the administrators. While accessing the training content, learners can use discussion forums to add/share comments with others and stay informed on the important updates sent by the trainers.

### Administrator

An Administrator has access to the [**management portal**](../get-started/step-by-step-configuration-guide.md) on the platform and is responsible for managing and delivering training programs.

There are six types of administrator on the platform: Global Administrator, Organization Administrator, Learning Path Administrator, Category Administrator, Course Administrator and Group Administrator. Each one is responsible for performing specific activities on the management portal. Administrators can create organizations, groups and courses, add users and assign content, track progress and drive content completion via announcements to users and make other users as administrators.

For more details, please visit the [**user role and management portal overview** article](../get-started/user-role-and-management-portal-overview.md).

## Create Organizations and Groups

Organizations and Groups are a way to organize your learners depending on the needs and structure of the training program.

**Organization** is a set of learners and administrators on the training platform who have a particular purpose or belong to a specific criteria viz. location, job function, interest etc.

> [!Note]  
> **Organizations** help create virtual boundaries on the training platform, by ensuring that content and users of an organization is accessible ONLY within that organization.

**Group** is a set of learners on the training platform who have a specific training requirement. Groups make user management within an organization and overall company easy via bulk user onboarding and automatic enrollment.

> [!Note]  
> Training platforms can utilize the capabilities of **both** Organization & Group or **only ONE** one of them without enabling the other to manage their training use case.

### Sample Scenario 1

Let's say there is a company in South Africa which has employees located across the country/region who are required to be trained and up-skilled regularly.

- To effectively manage and train their geographically distributed workforce, the company can decide to create **Groups** based on their office locations such as Cape Town, Johannesburg, Port Elizabeth, etc.

- Another way to manage and organize workforce would be based on the roles and departments such as Sales, Marketing, Human Resources, Operations, etc.

### Sample Scenario 2

Let's say there is a company in United States of America which has employees located in various countries/regions across the world and managed by their own country/region leadership.

- In this case, the company may decide to create **Organizations** on the training platform basis country/region viz. India, Singapore, South Africa etc.

- Each of the Organizations can be assigned their own set of Organization Administrator(s) and each learner can belong to one Organization.
    > [!Note]  
    > The Organization Administrator of an organization will be able to create and manage content and users for ONLY the particular organization creating virtual boundaries on the training platform.

- Now, to effectively manage and train their distributed workforce, each organization can create its own Groups basis job roles such as Sales, Marketing, Human Resources, Operations, etc.

- Another way to manage and organize workforce would be based on training requirements such as areas of interest, performance review assessments etc.  

## Add users to Organization

**Organizations** can be used on the training platform to create virtual boundaries where content and users of an organization is accessible only within the organization.
Global administrators can define Organization and [**assign Organization Administrator role**](./organization-management.md) from the management portal.

Learners are by default part of the Default Organization. The Global admins and Org admins can change this for a user from the admin pages.

> [!IMPORTANT]  
> Typically, Organizations should be set up on the training portal ONLY IF there is a requirement that users and content relevant to one organization should not be accessible by another organization.

## Add users to groups

Groups can be used on training platform to manage different types of learners and automate enrollment to content based on the skills required, user location, functional domains, role etc.
For example, you can [**create groups**](./organize-users/create-a-new-group.md) and [**set rules to automatically add users**](./organize-users/setup-automatic-user-enrollment-for-a-group-1.md) to the group whenever they sign up on the platform.

Alternatively, organization can also [**manually add users**](./organize-users/add-multiple-users-to-the-group.md) to the group at once.

## Manage content enrollment for user groups

Group administrator can leverage the group functionality on the platform to automate content enrollment for learners in the group. For any group on the management portal, admininstrator can pre-assign courses and learning paths from the content library and [**automate content enrollment**](./manage-users/assign-content-to-group-users.md) for existing and new participants in the group.

**For example**, let's say the administrators on the training portal have [**created a group**](./organize-users/create-a-new-group.md) for the Sales team and [**added all the sales employees**](./organize-users/add-multiple-users-to-the-group.md) to the group.  Now, a group administrator (aka Sales Manager) can pre-assign the mandatory sales trainings for the group so that any new sales employee signing up on the portal will be automatically enrolled to those courses.

## Tracking learner progress and drive course completion

Groups can be used on the training platform to not only delegate and automate administrative tasks like user onboarding and course enrollment but also tracking learners progress and send reminders to drive engagement and course completion.

Group administrator on the portal can leverage [**group analytics**](../analytics/in-built-reports/group-view-report.md) to monitor progress of the group participants and [**send announcements**](./manage-users/send-announcement-to-the-users.md) and reminders to drive course completion. In the following sections, you will learn more about these features:

### Send announcement

Whenever new courses are assigned to the users, automatic notifications are sent by the system to the learners. Apart from this, group administrators can [**send announcements**](./manage-users/send-announcement-to-the-users.md) to the whole group or specific set of learners in the group and inform them about important updates, event or action they need to perform.

For example, let's say there are set of learners in a group who have not finished the compliance training which needs to be completed in a week's time. In such scenarios, group administrators can send a reminder to the learners to complete the training and get certification.

### Tracking learning progress

The management portal provides real-time analytics and reports to track learners progress and course completion of the assigned courses for the group participants. Groups administrators can view and download learners report card to monitor progress and measure performance for the assigned courses. For more details, [**see this article**](../analytics/in-built-reports/group-view-report.md).

## Steps to add users and assign content on the portal

Community Training platform provides specific set of features to help administrator with activities such as adding learners, creating groups and assigning content. Given below are the simple steps to get started with user management on the management portal:

1. Create groups on the management portal

    Here are the detailed steps on [**how to create a new group**](./organize-users/create-a-new-group.md).

1. Add learners to the newly created group

    Here are the detailed steps to [**how to add users to a group**](./organize-users/add-multiple-users-to-the-group.md).

1. Assign content to the group participants

    Here are the detailed steps to [**assign content to group users**](./manage-users/assign-content-to-group-users.md).

1. Send announcement and reminders to the group participants

    Here are the detailed steps to [**send announcements to group users**](./manage-users/send-announcement-to-the-users.md).

## Best Practices to manage users on the portal

1. [**Create groups on the platform**](./organize-users/create-a-new-group.md) based on a learner's location, designation, department, role, etc. and [**add group administrators**](./add-users/add-an-administrator-to-the-portal.md) to delegate user onboarding and automate course enrollment.

1. Use [**bulk upload users**](./organize-users/add-multiple-users-to-the-group.md) functionality to quickly import your existing users list and organize them into different groups

1. [**Set rules to automate user enrollment**](./organize-users/setup-automatic-user-enrollment-for-a-group-1.md) to the group and reduce the burden of administrator tasks on your trainers

1. Limit the number of Global Administrators on the portal as they can read and modify everything on the platform.

Please reach out to us [**via HelpDesk**](https://aka.ms/cthelpdesk) if you have any further queries.