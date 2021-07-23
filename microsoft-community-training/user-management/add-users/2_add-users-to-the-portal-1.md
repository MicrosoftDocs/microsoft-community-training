---
title: Add learners to the platform
original-url: https://docs.microsoftcommunitytraining.com/docs/add-users-to-the-portal-1
---

# Add learners to the platform

Microsoft Community Training management portal provides two ways to add learners to the portal. Administrator can add learners either through a specific group or directly through the **All Users** list. All Users options is available only to the Global Administrators.
  
## Option 1 – Add Learner via All users

In this topic, you will learn about how to add learner from All Users list.
  
### Permissions Level

The Microsoft Community Training management portal provides role-based administration and depending upon the type of access level administrator can perform an action on the portal. Table below shows administrative role which are allowed to add learners from All Users list:

| Access Level | Add learners via All Users |
| --- | --- |
| Global Administrator | Yes |
| Organization Administrator | No |
| Learning Path Administrator | No |
| Category Administrator | No |
| Course Administrator | No |
| Group Administrator | No |

### Steps to add learners via All Users list

1. On the Microsoft Community Training portal, after login [**switch to administrator view**](../../get-started/4_step-by-step-configuration-guide#step-2--switch-to-administrator-view-of-the-portal)

2. Select **All Users** tab in the left-navigation page from users module

3. Click or tap the **Add Users** icon on top-right of the details page  

    ![All users main screen](../../media/All%20users%20main%20screen.png)

4. Choose between the following two methods to add users

    - **Add Single User** – Use this option to add one user at a time. Click or tap Add Single user, enter the phone number and then click or tap **Add** button  

        ![Add single user one](../../media/Add%20single%20user%20one.png)

    - **Bulk upload users** – This option is used to add multiple users at once. For detailed steps, see how to [**structure the csv file and bulk upload users**](../organize-users/4_add-multiple-users-to-the-group) on the portal

> [!IMPORTANT]
> In case, platform is setup with **Social Account** or **Azure Active Directory** as login identity then you will need to enter email address in the above step.

## Option 2 – Add Learner via Groups

> [!NOTE]
> When same user is added to multiple groups, it won't create duplicate users i.e. there is only 1 user on the platform against 1 email address or phone number.

In this topic, you will learn how to add learner via specific group.

### Permissions Level

The Microsoft Community Training management portal provides role-based administration and depending upon the type of access level administrator can perform an action on the portal. Table below shows administrative role which are allowed to add learners via Group:

| Access Level | Add learners via All Users |
| --- | --- |
| Global Administrator | Yes |
| Organization Administrator | Yes |
| Learning Path Administrator | No |
| Category Administrator | No |
| Course Administrator | No |
| Group Administrator | Yes |

### Steps to add learners via Group

Before you begin, please create a group using the steps mentioned [**in this article**](./../organize-users/2_create-a-new-group).

1. On the Microsoft Community Training portal, after login [**switch to administrator view**](../../get-started/4_step-by-step-configuration-guide#step-2--switch-to-administrator-view-of-the-portal) and select a specific group under Users tab

    ![Steps to add learners via Group](../../media/image%2856%29.png)

2. Click or tap **Add user** on the group details page to add a user to the group

3. Choose between the following two methods to add users 
    - **Add Single User** – Use this option to add one user at a time. Click or tap Add Single user, enter the phone number and then click or tap **Add** button  

        ![Add single user one](../../media/Add%20single%20user%20one.png)

    - **Bulk upload users** – This option is used to add multiple users at once. For detailed steps, see how to [**structure the csv file and bulk upload users**](../organize-users/4_add-multiple-users-to-the-group) on the portal

> [!IMPORTANT]
> In case, platform is setup with **Social Account** or **Azure Active Directory** as login identity then you will need to enter email address in the above step.