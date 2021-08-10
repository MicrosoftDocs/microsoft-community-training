---
title: Add practice quiz and exam for a course
original-url: https://docs.microsoftcommunitytraining.com/docs/add-practice-quizzes-and-exam
author: nikotha
ms.author: nikotha
description: Microsoft Community Training platform allows trainers to add assessments as a way to evaluate learners on their knowledge and proficiency.
ms.prod: azure
---

# Add practice quiz and exam for a course

Microsoft Community Training platform allows trainers to add assessments as a way to evaluate learners on their knowledge and proficiency. The platform provides two types of assessments in the form of Practice Quiz and Exam containing one or more multiple-choice questions.

**Practice Quiz** - A Practice Quiz serves as a refresher for learners and facilitate revision of a particular lesson. There is no limit to the number of Practice Quizzes you can add to a course.

**Exam**  -  An Exam is used to evaluate learners on their proficiency and knowledge in a particular course to measure learning outcome. Unlike practice quiz, an exam has limited number of attempts and a passing percentage as specified by the trainer.

In this article, you will learn more about how to add assessments to a course followed by an overview on sample assessment question types, in respective sections:

## Permission Level

The Microsoft Community Training  management portal provides role-based administration and depending upon the type of access level administrators can perform an action on the portal. Table below shows administrative role which are allowed to add Practice Quiz and Exam to a course in the portal:

| Access Level  | Add practice quiz and exam to a course |
| --- | --- |
| Global Administrator | Yes |
| Organization Administrator | Yes |
| Learning Path Administrator | Yes |
| Category Administrator | Yes |
| Course Administrator | Yes |
| Group Administrator | No|

## Add a practice test for a course

In this article, you will learn about how to add practice quiz to a course:

> [!TIP]
> Use the practice test after every 2-3 lessons to help learners retain and revise the learning concept. Keep the questions short and simple.  Answering correctly makes the learner want to go to the next lesson, ensuring higher completion rate of courses.)

1. On the Microsoft Community Training portal, login and [**switch to administrator view**](../../../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal).

2. Under Course tab, select the course under a category in the list to which you want to add a practice quiz.

3. Click or tap on the **New Assessment** button and select the **Practice Quiz** option from the drop-down menu.

    ![New Assessment](../../../media/image%28245%29.png)

4. Enter details for the **Question 1** on the portal as below:
    * Question Title – add your question in this field. Check [**sample questions**](#question-types-for-a-practice-quiz-or-exam) to know more about the types of questions you can create on the portal.
    * Options – add one or more options as possible answers for the question. Check the **radio button** to the left of the text field to select the correct answer.

        ![Quiz title](../../../media/Quiz%20title.png)

    > [!NOTE]
    > If only two possible options are needed use **Delete** button  next to the option field to remove the options.To add more options use **Add Option** button to increase choices for the question.)

    > [!TIP]
    > The Question and Options both support HTML rich text. Please ensure the rich text formatting is applied from the options available in the editing box only and not from the content source.

5. Click or tap **Add Question** at the bottom-right of the Quiz card, to add more questions in the Practice Quiz and repeat Step 4.

6. Once you are done adding questions, click or tap **Save** icon to the right-end of the quiz title to upload the practice quiz to the portal.

    > [!TIP]
    > Use the [**bulk upload questions feature**](https://microsoftindia.document360.io/docs/create-practice-course-and-exam#bulk-upload-questions-for-a-practice-quiz-or-exam) to seamlessly import your existing questions list for a practice quiz.

## Add final exam for a course

In this article, you will learn about how to add an exam to a course:

> [!TIP]
> Use the exam to evaluate the knowledge of a learner that is acquired from the course. Keep a fair pass percentage based on the degree of difficulty and number of attempts as required for the role.

1. On the Microsoft Community Training portal, login and [**switch to administrator view**](../../../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal).

2. Under Course tab, select the course under a category in the list to which you want to add an Exam.

3. Click or tap on the **New Quiz** button and select the **Exam** option from the drop-down menu.

    ![New Quiz & Exam](../../../media/image%28246%29.png)

4. Enter details for the **Exams** on the portal as below:
    * Enter **Quiz Title**. The quiz title is the name for the exam displayed to the learners on the web portal and mobile application. For example: *Final Exam*
    * Define the **passing percentage** and **number of attempts** a learner can take the exam based on the degree of difficulty.
    * Enable the **shuffle mode** for the exam questions if required. This will ensure that learners will always be offered a different version of the quiz so you can be sure that answers cannot be memorized for subsequent attempts or copied from others

        ![Details for Exams](../../../media/image%28210%29.png)

    > [!NOTE]
    > All the questions in the exam carry equal weightage. And **Exam** is always the last segment of the course.

5. Enter details for the **Question 1** on the portal as below:
    * Question Title – add your question in this field. Check [**sample questions**](#question-types-for-a-practice-quiz-or-exam) to know more about the types of questions you can create on the portal.  
    * Options – add one or more options as possible answers for the question.  Check the **radio button** to the left of the text field to select the correct answer.
  
    > [!NOTE]
    > If only two possible options are needed, use **Delete** button  next to the option field to remove the options. To add more options use **Add Option** button to increase choices for the question.

    > [!TIP]
    > The Question and Options both support HTML rich text. Please ensure the rich text formatting is applied from the options available in the editing box only and not from the content source.
  
6. Click or tap **Add Question**, to add more questions in the **Exam** and repeat Step 5.

7. Once you are done adding questions, click or tap **Save** icon to the right-end of the quiz title to upload the exam to the portal.

> [!TIP]
> Use the [**bulk upload questions feature**](add-practice-quizzes-and-exam.md#bulk-upload-questions-for-a-practice-quiz-or-exam) to seamlessly import your existing questions list for an Exam.

## Bulk upload questions for a practice quiz or exam

In this topic, you will learn how to bulk upload questions for a practice quiz or exam in the management portal:

### Prerequisite for bulk upload questions

Before you start doing the bulk upload of questions for a practice quiz or exam, you need to make sure the question list is structured in the right format on your local machine. The steps below provide information on how to create and verify that the question list is in the correct format:

#### Step 1 - Download the sample CSV file

1. Click or tap on the **Import CSV** icon to the top right of Practice Quiz or Exam card.

    ![Import CSV icon](../../../media/Import%20CSV%20icon.png)

2. In the bulk upload panel, download the sample CSV and save on your local machine.
![Import CSV bar](../../../media/Import%20CSV%20bar.png)

#### Step 2 – Edit the sample CSV file to create question list

1. Open the sample csv file in Microsoft Excel.

2. Remove the sample questions from the CSV file.

    > [!IMPORTANT]
    > Do not remove the column headers from the CSV file.

3. Start adding 1 question per row with the following information under each column header:
    * Serial Number – put the sequence number of the question in the list.  
    * Question Title – put the question text in this field.
    * Choice 1 to N – add the choices for the question.
    * Answer – select the correct number among the choices. For e.g. set value to 2 if Choice 2 is the correct answer.

        ![CSV file format](../../../media/CSV%20file%20format.png)

4. Rename and save the edited file once you are done creating the question list. When editing the CSV file, please take care of the following things:
    * Do not add **comma (,)** in the question or choices when editing the sample file
    * Use **semi-colon (;) as delimiter** when adding multiple values for a single option  
    * For any cell, do not split the text into multiple lines (i.e. do not use **ALT + Enter**)

> [!NOTE]
> There may be questions with different number of choices. For questions which have fewer choices, add some placeholder values while uploading from CSV. Later, remove these options after upload.
>
> For example, there are 5 questions in the list – first 3 questions have 4 choices each and remaining 2 questions have only 2 choices, add as placeholder value for choice 3 and choice 4 in the CSV file for the last two questions.

#### Step 3 – Verify the CSV file before uploading

1. Open the question list csv file in Notepad. **Right Click > Open with > Notepad**.

2. Remove Word Wrap formatting from the tool bar. **Format > Word Wrap**.

3. Verify the structure of the file is correct by ensuring the following things:
    * For each question row, number of commas (,) is one less than the number of column headers
    * For each question, there should not be any line break i.e. question must be contained in a single line.
    * For each question, there is no blank values for the choices.

4. In case you find any issues with the file, edit and correct the structure as described in the previous step.

### Steps for bulk upload questions for a Practice Quiz or Exam

1. Click or tap on the **Import CSV** icon to the top right of Practice Quiz or Exam card.

    ![Import CSV icon](../../../media/Import%20CSV%20icon.png)

2. In the bulk upload panel, choose the Upload option and select the csv file containing the question list.  
![Upload option & select CSV](../../../media/image%2850%29.png)

3. Click or tap on the **Done** button to begin bulk upload questions operation.

4. Once completed, you will see the newly added questions in the Practice Quiz or Exam card.

## Question Types for a practice quiz or exam

In this article, you will learn about the variety of question types that you can create for a practice quiz or exam in the management portal.

Following are the question types that can be created on the portal,

1. Single Choice Question – can be answered with only one correct answer
2. Multi Choice Question – can be answered with more than one correct answer
3. True/False Question – can be answered with either True or False
4. Fill in the Blank Question – can be answered by filling blank in a statement
5. Chronological Question – can be answered by logical ordering of text/images
6. Numerical Question – can be answered with a specified mathematical precision
7. Association Question – can be answered by logical matching of text/images

> [!NOTE]
> The question and answer options support **rich text** to enable text formatting (bold, italics, underline, bullets, numbering etc.), images and external web links.

### Single Choice Question

![Single Choice Question](../../../media/image%28225%29.png)

For this type of question, learners can choose a single answer among the available answer choices because there is only one correct answer.

To create a single choice question,  

1. Add the question with required images/links and a set of answer option
2. Select the correct answer by checking the radio button to the left of the answer option

    This question will appear like this for the learners
        :::image type="content" source="../../../media/image(227).png" alt-text="Question Sample":::

### Multi Choice Question

![Multi Choice Question](../../../media/image%28235%29.png)

For this type of question, learners can choose more than one answer among the available options because there is more than one correct answer.

To create a multiple-choice question,

1. Add the question along with possible options of text, images or links in the question title box
2. Create answer options as combinations of the possible options listed in the question title box
3. Select the correct answer option by checking the radio button to the left of the answer text field

This question will appear like this for the learners -

![Multi Choice Question Sample](../../../media/image%28230%29.png)

### True/False Question  

![True/False Question](../../../media/image%28234%29.png)

For this type of question, learners can choose only one amongst the two available options of true and false.

To create a True/False question,

1. Add the question text with image/links in the question title box
2. Add two answer options as True and False
3. Select the correct answer option by checking the radio button to the left of the answer text field

The question will appear like this for the learners –

![True/False Question sample](../../../media/image%28232%29.png)

### Fill in the Blank Question

![Fill in the Blank Question](../../../media/image%28233%29.png)

For this type of question, learners can choose only one answer among the available options which fills the blank in the question to complete the phrase.

To create a Fill in the Blank question,

1. Add the question statement leaving a series of underscores to indicate blanks to be filled
2. Add the answer options with text/image to be filled in the blanks
3. Select the correct answer option by checking the radio button to the left of the answer text field

The question will appear like this for the learners –

![Fill in the Blank Question sample](../../../media/image%28236%29.png)

### Chronological Question

![Chronological Question](../../../media/image%28237%29.png)

For this type of question, learners need to decide on the correct chronological order for the objects in the question.

To create a chronological question,

1. Add the question with text or images to be ordered in a specified chronological order
2. Add the answer options with possible ordering schemes (including the correct order)
3. Select the correct order by checking the radio button left of the answer text field

The question will appear like this for the learners -

![Chronological Question sample](../../../media/image%28238%29.png)

### Numerical Question

![Numerical Question](../../../media/image%28239%29.png)

For this type of question, learners can answer to the nearest possible numerical answer option based on their mathematical computation.

To create a numerical question,

1. Add the computation question mentioning the precision scale required for the answer
2. Complex equations can be included in the question and answers by inserting them as images
3. Add the answer options and select the correct answer by checking the radio button on the left

The question will appear like this for the learners –

![Numerical Question sample](../../../media/image%28240%29.png)

### Association Question

![Association Question](../../../media/image%28241%29.png)

For this type of question, learners can define associations between the elements of two lists.

To create an association or matching question,

1. Add the question statement to match/associate the text or images
2. Add the answer options with possible matches (including the correct match)
3. Select the correct order by checking the radio button left of the answer text field  

The question will appear like this for the learners –

![Association Question sample](../../../media/image%28243%29.png)
