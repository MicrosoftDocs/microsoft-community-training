---
title: User roles and Management portal overview
original-url: https://docs.microsoftcommunitytraining.com/docs/user-role-and-management-portal-overview
author: nikotha
ms.author: nikotha
description: Community Training management portal is a one-stop-shop for all administrative functions like content management, user management, tracking and monitoring the training with analytics, portal settings, and more.
ms.prod: learning-azure
---

# User roles and management portal overview

The Community Training management portal is your one-stop-shop for all administrative functions like content management, user management, tracking and monitoring training through analytics, portal settings, and more. It's designed based on role-based access control, which means that features are only available to users based on the permissions they've been granted.

The features of the management portal are separated into four categories:

![4 categories](../media/image%28423%29.png)

## Types of user roles in Community Training

An end-user role can either be a learner or an administrator on the platform. Administrators are responsible for performing activities like content upload, user import, portal customization, analytics, and more on the management portal.

To carry out these activities, Community Training provides a role-based hierarchy of administrators. This includes Global Administrators, Organization Administrators, Learning Path Administrators, Category Administrators, Course Administrators, and Group Administrators. Each administrator type is responsible for performing a specific set of actions as described below:

![GetStarted - Role Hierarchy](../media/GetStarted%20-%20Role%20Hierarchy.png)

### 1. Global Administrator

This role is assigned to decision-makers or program owners who are responsible for the overall execution, monitoring, and success of the training program. The Global Administrator can use the management portal to create content, manage users, enroll learners in to courses, use reports & analytics, and customize the portal for branding purposes.

Here are the steps on [**how to assign global administrator permission to a user**](../user-management/add-users/add-an-administrator-to-the-portal.md).

> [!IMPORTANT]
> Except for portal branding and profile page customization, the global administrator can delegate all the other activities like content management and user management to other administrators on the portal.

### 2. Organization Administrator

This role is assigned to owners of a specific organization. An **Organization** in Community Training is a set of learners and administrators who have a particular purpose or share a specific element, such as location, job function, interest, and more. The organization administrator can use the management portal to manage content and users for the organization.

Here are the steps on [**how to assign organization administrator permission to a user**](../user-management/add-users/add-an-administrator-to-the-portal.md).

### 3. Content Administrator

This role is assigned to a content expert who is responsible for creating, managing, and reviewing courses on the management portal for the training program. There are two types of Content Administrators in the management portal:

#### Learning Path Administrator

Learning Path Administrators can create new learning paths using the courses they have been assigned. A user can be a Learning Path Administrator for one or more learning paths on the management portal.

Here are the steps on [**how to assign Learning Path Administrator permissions to a user**](../user-management/add-users/add-an-administrator-to-the-portal.md).

#### Category Administrator

Category Administrators can create new courses and manage all the existing courses for a given category where they are assigned as administrator. They can also create new categories and manage all the courses within a new category. A user can be a Category Administrator for one or more categories on the management portal.

Here are the steps on [**how to assign Category Administrator permissions to a user**](../user-management/add-users/add-an-administrator-to-the-portal.md).

> [!NOTE]
> Global and Organization Administrators have privileges over other users as Category and Course Administrators on the portal.

#### Course Administrator

Course Administrators can manage and update content only for courses where they are assigned as administrator.  They can also create new courses and manage all the lessons and assessments within a course. A user can be a Course Administrator for one or more courses on the portal.

Here are the steps on [**how to assign Course Administrator permissions to a user**](../user-management/add-users/add-an-administrator-to-the-portal.md).

> [!NOTE]
> A Category Administrator can also be added as a Course Administrator for a course under a different category in the portal.

### 4.  Group Administrator

This role is assigned by a Global Administrator to a grassroots-level facilitator, trainer, supervisor, or manager who is responsible for driving learner engagement and adoption of the training program on the ground. The Group Administrator takes care of onboarding users, assigning courses, and driving course completion via announcements or discussion forums.

Here are the steps on [**how to assign Group Administrator permissions to a user**](../user-management/add-users/add-an-administrator-to-the-portal.md).

> [!NOTE]
> A user can have more than one administrative role on the portal. For example, a user can be both a Course Administrator and a Group Administrator.

### 5. Learner

This is the default role assigned to any user added to the portal. Users with this role permission can only view and consume the learning content. They don’t have access to the administrative functionalities on the platform.

Here are steps on [how to navigate the portal as a Learner](../learner-experience/web-app.md).

> [!IMPORTANT]
> There is no restriction on the number of users you can add in the portal for a given administrative role. For, example you can have multiple Global Administrators for the portal.

## Role-based access to management portal features

Organizations can assign specific administrative roles to users and provide access to relevant features on the management portal to help the user to carry out administrative tasks required for the role.
[**Role-based Admin Functionalities.pdf**](https://github.com/MicrosoftDocs/microsoft-community-training/files/7167101/Role-based.Admin.Functionalities.pdf) <!-- AA: Isn't this already alluded to at the top of this page?-->
