---
title: Restrict content access to Group Administrators
original-url: https://docs.microsoftcommunitytraining.com/docs/restrict-content-access-to-group-administrators
author: nikotha
ms.author: nikotha
description: The Community Training platform has various levels of access roles for administrators.
ms.prod: learning-azure
---

# Restrict content access to Group Administrators

The Community Training platform has various levels of access roles for administrators. A Group Administrator can:

1. Add/edit learners and administrators in the group
2. View progress reports of the learners in the group
3. Assign from all courses available on the platform to its learners

There could be scenarios when the content of one user group should not be made accessible to other user groups because of various security and IP concerns. For example, a large organization with various entities under its umbrella, deploys the platform across the organization. And since each entity works independently, the content of one entity should not be accessible to other entities.

To cater to this need, **Global Administrators** can enable the Restricted Course Assignment Access option and limit group administrators to view courses outside their purview.

## Change Restricted Course Assignment Access settings

1. log in to the Community Training portal and **switch to administrator view**.
1. Select the **Settings** on the left-navigation panel.

      > [!IMPORTANT]
      > This option is available at the **Global Administrator** Level only.

1. Select **General** from the settings list.
1. Toggle the Restricted Course Assignment Access settings flag. The default value for this setting is set to *Disabled*.

      ![Restrict Course.png](../media/Restrict%20Course.png)

1. Select **Apply Changes** to commit the change.
