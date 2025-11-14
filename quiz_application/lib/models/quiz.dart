class Question {
  final String NumberQuestion;
  final String question;
  final List<String> titleoptions;

  Question({
    required this.NumberQuestion,
    required this.question,
    required this.titleoptions,
  });
}

class QuestionManager {
  List<Question> questions = [];
  Map<String, String> selectedAnswersMap = {};
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
  List<String> selectedAnswerList = [];
  void addSelectedAnswer(String answer) {
    selectedAnswerList.add(answer);
    print(selectedAnswerList); // بتطبع كل الإجابات اللي اتخزنت لحد دلوقتي
  }

  void deleteAnswer(String answer) {
    selectedAnswerList.remove(answer);
    print(selectedAnswerList); // بتطبع كل الإجابات اللي اتخزنت لحد دلوقتي
  }

  String addNumberQuestion(String titleQuestion) {
    return titleQuestion;
  }

  String addtitleQuestion(String title) {
    return ' $title';
  }

  List<String> addTitleOptions(List<String> titleOPtionList) {
    return titleOPtionList;
  }
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

