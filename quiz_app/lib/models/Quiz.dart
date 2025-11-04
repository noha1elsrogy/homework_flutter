class Quiz {
  final String NumberQuestion;
  final String question;
  final List<String> options;
  bool answer = false;

  Quiz({
    required this.NumberQuestion,
    required this.question,
    required this.options,
    required this.answer,
  });

  void selectAnswer(String answer, bool selected) {
    if (selected) {
      this.answer = true;
    }
  }
}
