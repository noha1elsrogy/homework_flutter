class Question {
  final String NumberQuestion;
  final String question;
  final List<String> options;
  bool answer = false;

  Question({
    required this.NumberQuestion,
    required this.question,
    required this.options,
    required this.answer,
  });
}

class QuestionManager {
  List<Question> questions = [];
  Map<String, String> selectedAnswers = {};
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
  void addQuestion(Question question) {
    questions.add(question);
  }

  void selectAnswer(int indexAnswer) {
    for (var question in questions) {
      selectedAnswers[question.NumberQuestion] = question.options[indexAnswer];
    }
  }

  // void select(int index) {
  //   Map<String, String> select = {};
  //   select[question1.NumberQuestion] = question1.options[index];
  // }
  void totalGrade() {
    int total = 0;
    for (int i = 0; i < selectedAnswers.length; i++) {
      if (selectedAnswers.values == questions[i].options) {
        total = total + 5;
      }
    }
  }
}
