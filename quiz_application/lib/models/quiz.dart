import 'package:flutter/widgets.dart';

class Question {
  final String NumberQuestion;
  final String question;
  final List<String> titleoptions;
  String selectedAnswer = '';
  final String correctAnswer;

  Question({
    required this.NumberQuestion,
    required this.question,
    required this.titleoptions,
    required this.correctAnswer,
  });
}

class QuestionManager {
  List<Question> questions = [
    Question(
      NumberQuestion: 'question 1',
      question:
          'How would you describe your level of satisfaction with the healthcare system?',
      titleoptions: ['gg', 'hh', 'ju', 'h'],
      correctAnswer: 'h',
    ),
    Question(
      NumberQuestion: 'question 2',
      question: 'question 22222222222222222?',
      titleoptions: [
        'tt',
        'tt',
        'yy',
        'hh',
        'jjj',
        'jj',
        'kk',
        'lll',
        'mm',
        'nn',
      ],
      correctAnswer: 'nn',
    ),
    Question(
      NumberQuestion: 'question 3',
      question: 'question 22222222222222222?',
      titleoptions: ['tt', 'tt', 'yy', 'hh'],
      correctAnswer: 'hh',
    ),
    Question(
      NumberQuestion: 'question 4',
      question: 'question 22222222222222222?',
      titleoptions: ['as', 'ss', 'ss', 'jj'],
      correctAnswer: 'jj',
    ),
  ];
  //عشان كل سؤال احتفظ باجابته
  void upadteSlelectedAnswer(Question question, String answer) {
    question.selectedAnswer = answer;
  }

  bool isOptionSelected(Question question, String option) {
    return question.selectedAnswer == option;
  }

  int totaldegreefunction(Question question) {
    int totalDegree = 0;
    for (var question in questions) {
      if (question.selectedAnswer == question.correctAnswer) {
        totalDegree += 5;
      }
    }
    return totalDegree;
  }

  // List<String> selectedAnswersList = [];
  // void addSelectedAnswer(Question question) {
  //   for (var element in selectedAnswersList) {
  //     selectedAnswersList.add(question.);
  //   }
  // }

  int totalGrade = 0;
  Map<Question, String> selectedAnswersMap = {};
  int totalGradeFunc(Question question) {
    for (int i = 0; i < selectedAnswersMap.length; i++) {
      if (selectedAnswersMap[i] == question.titleoptions[i]) {
        totalGrade += 10;
      }
    }
    return totalGrade;
  }

  // void addSelectedAnswer(String answer) {
  //   selectedAnswerList.add(answer);

  // }

  // Map<String, String> selectedAnswersMap = {};
  // Question question1 = Question(
  //     NumberQuestion: '1',
  //     question: 'How would you describe your level of satisfaction with the healthcare system?',
  //     options: [
  //       'Very Satisfied',
  //       'Satisfied',
  //       'Neutral',
  //       'Dissatisfied',
  //       'Very Dissatisfied',
  //     ],
  //   );
  // void addQuestion(Question question) {
  //   questions.add(question);
  // }

  // void addNumberQuestion(Question numberQuestion) {
  //   questions.add(numberQuestion);
  // }

  // Map<String, String> selectAnswer(String answer) {
  //   selectedAnswersMap[question.NumberQuestion] = answer;

  //   return selectedAnswersMap;
  // }

  //  String addNumberQuestion(String titleQuestion) {
  //     return titleQuestion;
  //   }
  // void deleteAnswer(String answer) {
  //   selectedAnswerList.remove(answer);
  //   print(selectedAnswerList); // بتطبع كل الإجابات اللي اتخزنت لحد دلوقتي
  // }

  // String addtitleQuestion(String title) {
  //   return ' $title';
  // }

  // List<String> addTitleOptions(List<String> titleOPtionList) {
  //   return titleOPtionList;
  // }

  // void update bool isSelected) {
  //   question.isSelected = isSelected;
  // }
}

  // void select(int index) {
  //   Map<String, String> select = {};
  //   select[question1.NumberQuestion] = question1.options[index];
  // }

  
  // void totalGrade() {
  //   int total = 0;
  //   for (int i = 0; i < selectedAnswerList.length; i++) {
  //     if (selectedAnswerList.values == selectedAnswerList[i].titleoptions) {
  //       total = total + 5;
  //     }
  //   }
  // }

