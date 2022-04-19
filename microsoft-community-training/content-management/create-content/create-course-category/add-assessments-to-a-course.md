---
title: Add non-graded assessment and graded assessment for a course
original-url: https://docs.microsoftcommunitytraining.com/docs/add-assessments-to-a-course
author: nikotha
ms.author: nikotha
description: Microsoft Community Training platform allows trainers to add assessments as a way to evaluate learners on their knowledge and proficiency.
ms.prod: azure
---

# Add non-graded and graded assessments to a course

Microsoft Community Training platform allows trainers to add assessments as a way to evaluate learners on their knowledge and proficiency. The platform provides two types of assessments in the form of non-graded assessments and graded assessments containing one or more multiple-choice questions.

**Non-graded Assessments** - A non-graded assessment serves as a refresher for learners and facilitate revision of a particular lesson. There is no limit to the number of assessments you can add to a course.

**Graded Assessments**  -  A Graded Assessments is used to evaluate learners on their proficiency and knowledge in a particular course to measure learning outcome. Unlike non-graded assessments, a graded assessment has limited number of attempts and a passing percentage as specified by the trainer.

In this article, you will learn more about how to add assessments to a course followed by an overview on sample assessment question types, in respective sections:

## Permission Level

The Microsoft Community Training  management portal provides role-based administration and depending upon the type of access level administrators can perform an action on the portal. Table below shows administrative role which are allowed to add non-graded and graded assessments to a course in the portal:

| Access Level  | Add assessments to a course |
| --- | --- |
| Global Administrator | Yes |
| Organization Administrator | Yes |
| Learning Path Administrator | Yes |
| Category Administrator | Yes |
| Course Administrator | Yes |
| Group Administrator | No|

## Add a non-graded assessments for a course

In this article, you will learn about how to add non-graded assessments to a course:

> [!TIP]
> Use the non-graded assessments after every 2-3 lessons to help learners retain and revise the learning concept. Keep the questions short and simple.  Answering correctly makes the learner want to go to the next lesson, ensuring higher completion rate of courses.)

1. On the Microsoft Community Training portal, login and [**switch to administrator view**](../../../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal).

2. Under Course tab, select the course under a category in the list to which you want to add a non-graded assessments.

3. Click or tap on the **New Assessment** button and select the **Add non-graded assessments** option from the drop-down menu.
:::image type="content" source="../../../media/Assessment - New Assessment.PNG" alt-text="Select assessment type":::

4. Enter details for the **non-graded assessments** on the portal as below:
    * Non-graded Assessments Title – This would be assessment name.
    * Question Type dropdown - Select the format that you would like to use for this question. You can select:
        * MCQ - Single correct answers
        * MCQ - Multiple correct answers
        * Fill in the blanks
        * True and False

        :::image type="content" source="../../../media/Assessment - question type.PNG" alt-text="Question type":::
    >[!Note]
    >You can not change the question type once you have saved the assessment.

    * Question Title – add your question in this field. Check [**sample questions**](#question-types-for-any-assessment) to know more about the types of questions you can create on the portal.
    * Options – add one or more options as possible answers for the question. Check the **radio button/checkbox** to the left of the text field to select the correct answer(s).
    * **Answer Explanation** - Click on the icon besides every option to add explanation for that specific option.
        :::image type="content" source="../../../media/Assessment - answer explanantion.PNG" alt-text="answer explanation":::

    A non-graded assessment might typically look like this:

     :::image type="content" source="../../../media/Assessment - New AssessmentQuiz.PNG" alt-text="Quiz question details":::

    > [!NOTE]
    > If only two possible options are needed use **Delete** button  next to the option field to remove the options. To add more options use **Add Option** button to increase choices for the question.)

    > [!TIP]
    > The Question and Options both support HTML rich text. Please ensure the rich text formatting is applied from the options available in the editing box only and not from the content source.

5. Click or tap **Add Question** at the bottom-left of the assessment card, to add more questions in the non-graded assessment and repeat Step 4.

6. Once you are done adding questions, click or tap **Save** icon to the right-end of the assessment title to upload the non-graded assessment to the portal.

    > [!TIP]
    > Use the [**bulk upload questions feature**](#bulk-upload-questions-for-a-non-graded-assessment-or-graded-assessment) to seamlessly import your existing questions list for a non-graded assessment.

## Add graded assessment(s) for a course

In this article, you will learn about how to add a graded assessment to a course:

>[!TIP]
> You can use graded assessments at various points in a course to better evaluate learner's understanding of the course.

> [!TIP]
> Use the graded assessment to evaluate the knowledge of a learner that is acquired from the course. Keep a fair pass percentage based on the degree of difficulty and number of attempts as required for the role.

1. On the Microsoft Community Training portal, login and [**switch to administrator view**](../../../get-started/step-by-step-configuration-guide.md#step-2--switch-to-administrator-view-of-the-portal).

2. Under Course tab, select the course under a category in the list to which you want to add an Exam.

3. Click or tap on the **New Assessment** button and select the **Graded assessment** option from the drop-down menu.

    :::image type="content" source="../../../media/Assessment - New AssessmentFinalExam.PNG" alt-text="New assessment for graded assessment":::

4. Enter details for the **graded assessment** on the portal as below:
    * Enable the **shuffle mode** for the exam questions/answer options if required. This will ensure that learners will always be offered a different version of the assessment so you can be sure that answers cannot be memorized for subsequent attempts or copied from others.
    * Define the **passing percentage** and **number of attempts** a learner can take the exam based on the degree of difficulty.
    * Enable the **Show answers to learner** if you would like to add answer explanation which would be shown to the learner once he/she completes the assessment and are viewing their answers/scores.
    * Enter **Graded Assessment Title**. The graded assessment title is the name for the exam displayed to the learners on the web portal and mobile application. For example: *Final Exam*


        :::image type="content" source="../../../media/Assessment - graded question.PNG" alt-text="graded question details":::

    > [!NOTE]
    > All the questions in the exam carry equal weightage. And **Exam** is always the last segment of the course.

5. Enter details for the **Question 1** on the portal as below:
    * Question Type dropdown - Select the format that you would like to use for this question. You can select:
        * MCQ - Single correct answers
        * MCQ - Multiple correct answers
        * Fill in the blanks
        * True and False

        :::image type="content" source="../../../media/Assessment - question type.PNG" alt-text="Question type":::
    >[!Note]
    >You can not change the question type once you have saved the assessment.
    * Question Title – add your question in this field. Check [**sample questions**](#question-types-for-any-assessment) to know more about the types of questions you can create on the portal.  
    * Options – add one or more options as possible answers for the question.  Check the **checkbox/radio button** to the left of the text field to select the correct answer.
  
    > [!NOTE]
    > If only two possible options are needed, use **Delete** button  next to the option field to remove the options. To add more options use **Add Option** button to increase choices for the question.

    > [!TIP]
    > The Question and Options both support HTML rich text. Please ensure the rich text formatting is applied from the options available in the editing box only and not from the content source.
  
6. To add answer explanation, first enable the toggle near assessment title and then click on the **Add explanation** icon beside the option text field and provide the relevant details in the text box.

    :::image type="content" source="../../../media/Assessment - answer explanantion.PNG" alt-text="answer explanation":::

7. Click or tap **Add Question**, to add more questions in the **Exam** and repeat Step 5.

8. Once you are done adding questions, click or tap **Save** icon to the right-end of the assessment title to upload the exam to the portal.

> [!TIP]
> Use the [**bulk upload questions feature**](add-assessments-to-a-course.md#bulk-upload-questions-for-a-non-graded-assessment-or-graded-assessment) to seamlessly import your existing questions list for an Exam.

## Bulk upload questions for a non-graded assessment or graded assessment

In this topic, you will learn how to bulk upload questions for a non-graded or graded assessment in the management portal:

### Prerequisite for bulk upload questions

Before you start doing the bulk upload of questions for a assessment, you need to make sure the question list is structured in the right format on your local machine. The steps below provide information on how to create and verify that the question list is in the correct format:

#### Step 1 - Download the sample CSV file

1. Click or tap on the **Import CSV** icon to the top right of the assessment.

    ![Import CSV icon](../../../media/Import%20CSV%20icon.png)

2. In the bulk upload panel, download the sample CSV and save on your local machine.
![Import CSV bar](../../../media/Import%20CSV%20bar.png)

#### Step 2 – Edit the sample CSV file to create question list

1. Open the sample csv file in Microsoft Excel.

2. Remove the sample questions from the CSV file.

    > [!IMPORTANT]
    > Do not remove the column headers from the CSV file.

3. Start adding 1 question per row with the following information under each column header:

| Question type | Question Text | Choices | Correct Answer | Answer Explanation | Match Criterion |
| --- | --- | --- | --- | --- | --- |
| Single choice | Entire question body | Add as many choices as required | Add the numeric value of the correct option | Add answer explanation for each option separated by semi-colon | Not applicable |
| Multiple choice | Entire question body | Add as many choices as required | Add the numeric value of the correct option(s) | Add answer explanation for each option separated by semi-colon | Not applicable |
| Fill blanks | Entire question body with blanks depicted by pipe delimiter | Not applicable | Add correct answers for each blank separated by semi-colon. Separate answers to two blanks via pipe delimiter | Add answer explanation for each option separated by semi-colon | Add the Match type (Contains/Exact Match) for each blank separated by pipe delimiter |
| True false | Entire question body | Only Choice 1 and choice 2 can be filled | Add "TRUE" or "FALSE" | Not applicable | Not applicable |

    * Serial Number – put the sequence number of the question in the list.
    * Question Type - specify the type of question **"Single choice"** or **"Multiple choice"** or **Fill blanks** or **True false**
    * Question Text – put the question text in this field. To add blanks, add the delimiter **|**
    * Choice 1 to N – add the choices for the question.
    * Correct Answer – select the correct number among the choices. For e.g. set value to 2 if Choice 2 is the correct answer.
    * Answer explanation - add the explanation for the correct as well as incorrect answers.
    * Match Criterion - For Fill in the blank type of question, add the Match type (Contains/Exact Match) for each blank

        ![CSV file format](../../../media/CSV%20file%20format.png)

4. Rename and save the edited file once you are done creating the question list. When editing the CSV file, please take care of the following things:
    * Do not add **comma (,)** in the question or choices when editing the sample file
    * Use **semi-colon (;) or pipe(|) as delimiter** when adding multiple values for a single option. Refer to the above step for desired usage.
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

### Steps for bulk upload questions for a non-graded or graded assessment

1. Click or tap on the **Import CSV** icon to the top right of non-graded assessment or graded assessment.

    ![Import CSV icon](../../../media/Import%20CSV%20icon.png)

2. In the bulk upload panel, choose the Upload option and select the csv file containing the question list.  

    ![Upload option & select CSV](../../../media/image%2850%29.png)

3. Click or tap on the **Done** button to begin bulk upload questions operation.

4. Once completed, you will see the newly added questions in the non-graded assessment or graded assessment.

## Question Types for any assessment

In this article, you will learn about the variety of question types that you can create for any assessment in the management portal.

Following are the question types that can be created on the portal,

1. Single Choice Question – can be answered with only one correct answer
2. Multi Choice - Multi Correct Question – can be answered with more than one correct answer
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

### Multi Choice - Multi Correct Question

This type of question can be created by enabling **Multiple correct answers toggle**. This will allow the Administrator to select multiple correct answers to that question - hence making the question multiple-choice multi-correct type.

:::image type="content" source="../../../media/Assessment - multi-correct detailed.PNG" alt-text="multiple correct":::

>[!Note]
> The change in type of question cannot be done once the assessment is saved as the question type dropdown will disappear from the question box.

### True/False Question

:::image type="content" source="../../../media/Assessment - TrueFalse.PNG" alt-text="TrueFalse":::

For this type of question, learners can choose only one amongst the two available options of true and false.

To create a True/False question,

1. Add the question text with image/links in the question title box
2. Select the correct answer option by checking the radio button to the left of the answer text field

The question will appear like this for the learners –

:::image type="content" source="../../../media/Assessment - TrueFalse Learner.PNG" alt-text="TrueFalse Learner":::

### Fill in the Blank Question

:::image type="content" source="../../../media/Assessment - FillBlank.PNG" alt-text="FillBlank Admin":::

For this type of question, learners can choose only one answer among the available options which fills the blank in the question to complete the phrase.

To create a Fill in the Blank question,

1. Add the question statement along with the blank fields placeholders added using the option **+ Add a blank field**
2. Select the **match criterion** of blank using the dropdown and add the answer options with text to be filled in the blanks.
    * **Contains**: The answer from the learner is marked correct if it matches any of the value(s) provided by Admin. Multiple values in answer text can be provide as 'Cat;The cat;cats' etc.
    * **Exact Match**: This accepts only 1 value and answer evaluation is case-sensitive.

The question will appear like this for the learners –

:::image type="content" source="../../../media/Assessment - FillBlank Learner.PNG" alt-text="Fill Blank Learner":::

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
