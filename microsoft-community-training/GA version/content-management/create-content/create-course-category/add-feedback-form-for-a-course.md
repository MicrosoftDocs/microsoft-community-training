---
title: Add feedback form for a course
original-url: https://docs.microsoftcommunitytraining.com/docs/add-feedback-form-for-a-course
author: nikotha
ms.author: nikotha
description: This document explains feedback form addition flow to a course.
ms.service: azure
---

# Add feedback form for a course

A feedback form can be attached to a course to get active feedback on the courses. Learners can share course feedback during or after the have completed a course.

In this article, you will learn how to create and enable feedback forms for the learners.

## Creating the Feedback Form

The feedback form is added as a link while creating or editing a course. The feedback form can be created on any of the external survey websites, including Microsoft Form, Google Form and Survey Monkey. Once enabled, it is available to learners when they attempt a course.

:::image type="content" source="../../../media/image(476).png" alt-text="Feedback form for learners":::

## Pre-filling the Feedback Form

The Community Training platform allows you to dynamically pre-fill certain data fields when collecting feedback from the learners.
If the website you are using to create the survey form allows this, the following mapping can be used so that the learners do not have to fill the mapped information and can directly move to providing their objective feedback on the content.

| Field | Mapping |
| --- | --- |
| First Name | [FIRSTNAME] |
| Last Name | [LASTNAME]  |
| Unique Identity (i.e. Phone or Email Address) | [UNIQUEIDENTITY]  |
| Course Name | [COURSENAME]  |

Here are some links on how the common survey websites enable pre-filling of the fields,

1. [Google Form](https://trevorfox.com/2015/06/dynamically-pre-fill-google-forms-with-mailchimp-merge-tags/). A sample Google pre-filled survey form link would look as [**follows**](https://docs.google.com/forms/d/e/1FAIpQLSdNE8AhxWZKuhZEh6wVBALcjuERbv6G0QSkQThL6243OHCupQ/viewform?usp=pp_url&entry.938410210=%5BFIRSTNAME%5D&entry.1375580399=%5BLASTNAME%5D&entry.1971970342=%5BCOURSENAME%5D)

2. [Survey Monkey](https://help.surveymonkey.com/articles/en_US/kb/What-are-custom-variables-and-how-do-I-use-them)

Please reach out to us [**via HelpDesk**](https://aka.ms/cthelpdesk) if you have any further queries.