---
title: User Roles & Groupsn
original-url: https://docs.microsoftcommunitytraining.com/docs/user-roles-groups
author: cbms03
ms.author: cbrahmandam
description: The platform follows a role-based administration hierarchy.
ms.service: azure
---

# User Roles & Groups

## Administrator roles and types

### What administrative controls does Community Training provide to the organization?

The platform follows a role-based administration hierarchy. There are four admin roles supported on the portal:

1. **Organization Administrator** - This role is assigned to decision-makers or program owners who are responsible for the overall execution, monitoring, and success of the training program.  The organization administrator can use the management portal to create content, manage users, enroll learners in courses, use reports & analytics, and customize the portal for branding purposes.

2. **Category Administrator** - Category administrators can create a new course and manage all the existing courses for a given category they are assigned as administrators. A user can be a category administrator for one or more categories on the management portal.

3. **Course Administrator** - Course administrators can manage and update content only for the courses they are assigned as administrators. A user can be a course administrator for one or more courses on the portal.

4. **Group Administrator** - This role is assigned by the organization administrator to a grassroot-level facilitator, trainer, supervisor or manager who is responsible for driving learner engagement and adoption of the training program on the ground. The group administrator takes care of onboarding users, assigning courses, and driving course completion via announcements/discussion forums.

For more information, please visit **[this article](../get-started/user-role-and-management-portal-overview.md)**.

### How many administrators can the Community Training portal have?

There are no such limitations, the portal can have any number of administrators. Community Training management portal provides four types of administrative roles to a user on the portal - Organization Administrator, Category Administrator, Course Administrator, and Group Administrator.

For more information, please visit **[this article](../get-started/user-role-and-management-portal-overview.md)**.

### How can I add an administrator to a specific group and restrict access to any other groups and courses?

Group administrators are allowed to manage users in the group, assign courses, and track their completion. By default, they don't have course management access. Refer to this [**article**](../user-management/add-users/add-an-administrator-to-the-portal.md) for more information.

### How to switch between administrator and learner view?

Once you sign in to the portal, by default, you will be shown the learner view. Click the round user icon on the top right of the screen and choose the View as an administrator option from the drop-down menu to open the management portal.

For more information, [**go here**](../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal).

### Can a group administrator also be a learner on the platform?

Yes, group administrators can be enrolled in courses on the platform and consume training content as learners.

### Can group admin and category admin be the same person?

Yes, one person can be both a group admin and a category admin.

### Can I assign administrators for a specific group or course?

Yes, you can assign administrators for specific groups or courses.

For more details [**go here**](../user-management/add-users/add-an-administrator-to-the-portal.md#add-a-global-administrator-to-the-platform).

### Can a group have more than one administrator?

Yes, you can add any number of administrators to a group as required.

## Users registration & onboarding

### What is the different status for users on the platform? Registered v/s unregistered users?

Every user added to the platform will be marked as either Registered or Unregistered as described below:

**Registered User** - Users whose  profile information data is fully complete are called registered users

**Unregistered User** - Users whose profile information data isn't fully complete are called unregistered users. This is typically the case when admins have bulk upload users on the platform but learners haven't actually logged into the platform yet.

### How can I onboard users to Community Training?

There are different ways to onboard users to Community Training:

1. **Add a single user manually** - You can add users individually (one by one) on the management portal. Refer to **[this article](../user-management/organize-users/add-a-single-user-to-the-group.md)** to learn how.

2. **Add multiple users manually** - You can add multiple users at once by using the bulk upload feature via the CSV file. Refer to **[this article](../user-management/organize-users/add-multiple-users-to-the-group.md)** to learn how.

### I have a list of users in an Excel file. How can I add them to the portal?

You can import users using CSV data to the platform. However, there are certain prerequisites involved.

[**go here**](../user-management/organize-users/add-multiple-users-to-the-group.md) for the detailed steps.

### Will I be able to bulk import users from my existing database?

We are working to make the REST APIs available for you. Once available, the users can be imported from your exising list. Until then, you can bulk upload using CSV files.

### Bulk upload users feature doesn't seem to be working.

Bulk upload is a resource-intensive operation and might take time until the process is completed. Please wait until the operation is complete.

If you see errors while uploading users in bulk, it is possible that your CSV file is corrupt or has some errors. To make sure your file is correct, follow the instructions given **[here](../user-management/organize-users/add-multiple-users-to-the-group.md)**.

## Managing groups and users

### How can admins use groups on Community Training?

Groups are a way to help you organize your learners depending on the organization structure and the needs of your training program. Groups make user management easy via bulk user onboarding and automatic enrolment.

For example, let's say there is an organization in South Africa that has employees located across the country who are required to be trained and up-skilled regularly.

* To effectively manage and train their geographically distributed workforce, an organization can decide to create a group based on their office locations such as Cape Town, Johannesburg, Port Elizabeth, etc.

* Another way to manage and organize the workforce would be based on the roles and departments such as Sales, Marketing, Human Resources, Operations, etc.

Organizations can use groups to manage different types of learners on the portal and automate user enrolment to the groups based on the skills required, user location, functional domains, roles, etc. For example, you can [**create groups**](../user-management/organize-users/create-a-new-group.md) and [**set rules to automatically add users**](../user-management/organize-users/setup-automatic-user-enrollment-for-a-group-1.md) to the group whenever they sign up on the platform.

Alternatively, the organization can also [**manually add users**](../user-management/organize-users/add-multiple-users-to-the-group.md) to the group at once.

### How to create user groups and add users to a group?

You can create user groups by signing in and switching to administrator view ➔ Select Users tab ➔ Click on New group on the bottom left of the page.

For a detailed step-by-step guide on creating new user groups [**go here**](../user-management/organize-users/create-a-new-group.md).

Users can be added in groups in two ways:

1. [**Manually add users to a group**](../user-management/organize-users/create-a-new-group.md#manually-add-users-to-group-during-creation-time) – You will be able to upload single or bulk users.
2. [**Automatic user enrollment**](../user-management/organize-users/create-a-new-group.md#automatically-add-users-to-group-during-creation) – Automatic groups allow you to set specific rules which will auto-add users to the group based on specified rules.

### How many users can be in a group?

Community Training does not set any numeric limits on the number of people who can be in a group.

### Can I auto-enroll users to groups based on their profile information?

Community Training allows you to automatically add users to a specific group whenever the user's profile information matches the criteria of the rules.

When a user registers on the portal and completes the profile information, the values entered are compared against the rule applied by administrators for different groups, and users are added to all the groups where the criteria match.

You can [**go here**](../user-management/organize-users/setup-automatic-user-enrollment-for-a-group-1.md) for the steps involved in setting up rule-based groups.

### How can I classify users into multiple groups based on Region, Country, Role, or Department?

You can set rule-based groups to auto-enroll users based on their role, department, geography, etc. However, there is a prerequisite to achieving this.

You can [**go here**](../user-management/organize-users/setup-automatic-user-enrollment-for-a-group-1.md) for the steps involved.

### How are users initially invited to the platform to create an account? By an email link?

You can invite users by sending mass emails, SMS, announcements on your existing website, etc. along with access links to the portal and mobile app.

### Will my users be able to view or access the group that they are added to?

Groups are accessible only to the administrators. Users will not be able to access or view any group-related information.

Example: A user from the HR group will only be able to access and view courses assigned to him/her. Information such as group name, group administrator & list of users on the group is not displayed to the user.  

### How can I export users registered on the platform?

You can export all the users registered on the platform from the administrator view:

* Select Users from the left bar
* Select All users
* Select Download users on the top right corner

Refer to the below image for an example:

![Export users](../media/image%28313%29.png)

### How to send mass announcements to all the users of my platform?

In order to send mass announcements, all users on the platform must be added to a single group. Once the above condition is met you will be able to send announcements straight from the group.

For more information on announcements [**go here**](../user-management/manage-users/send-announcement-to-the-users.md).

## Course assignment and tracking

### How can I assign courses only to a specific set of users?

You can assign courses to a specific set of users in two ways

* **Adding users from Courses Tab**:  Organization administrators can manually add users to respective courses as required

   ![Adding users from Courses Tab](../media/image%28311%29.png)

* **Assigning courses to a user group**: Group administrators can select the list of courses that should be available for users of a specific group.

   ![Assigning courses to a user group](../media/image%28312%29.png)

### How can skill matrices and competencies be mapped to assign courses to learners?

You can auto-enroll users to groups to add and enroll users to specific groups and courses as their interest and skills gaps.

For example: you can add **Skills Required** as one of the profile fields in the platform and create rules to enroll users to specific groups with courses preassigned to auto-enroll learners to required courses based on their interest areas, skill gaps identified, etc.

For more information, refer to the following articles:

1. [**Create additional profile fields**](../settings/add-additional-profile-fields-for-user-information.md) on the portal
2. [**Create a group**](../user-management/organize-users/create-a-new-group.md) and [**setup rule for auto-enrollment**](../user-management/organize-users/setup-automatic-user-enrollment-for-a-group-1.md)
3. [**Assign course to the group**](../user-management/manage-users/assign-content-to-group-users.md)

### How can I remove or un-register a user from a course?

Only organization administrators have the right to un-register or remove the user from a course.

For detailed steps **[go here](../content-management/manage-content/manage-course-category/manage-users-for-a-course.md)**.

### How can I unassign courses to learners in the platform?

Courses can be unassigned to learners from the Courses tab. To unassign courses for learners in the platform, refer to [**this article**](../content-management/manage-content/manage-course-category/manage-users-for-a-course.md#remove-user-enrollment-for-a-course).

### How can administrators access the completion certificate of learners on the portal?

There is no UI available for administrators to view and download learners' certificates. Currently, only learners can view and download the completion certificate on the platform.

However, administrators can contact the Community Training team via **[HelpDesk](https://aka.ms/cthelpdesk)** to get access to learner certificates. Our support team will reach out to you in 2-3 business days and help you with your requirements.

Please reach out to us [**via HelpDesk**](https://aka.ms/cthelpdesk) if you have any further queries.
