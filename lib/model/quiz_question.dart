class QuizQuestion {
  const QuizQuestion(this.question, this.answers);

  final String question;
  final List<String> answers;

  List<String> getSchuffleAnswers() {
    final shuffleAnswers = List.of(answers);
    shuffleAnswers.shuffle();
    return shuffleAnswers;
  }
}
