import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/widget/asnwer_button_widget.dart';
import 'package:quiz_app/widget/styled_text_widget.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({
    super.key,
    required this.onSelectAnswer,
  });

  final void Function(String answer) onSelectAnswer;

  @override
  State<StatefulWidget> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;
  var currentQuestion = questions[0];

  void answerQuestion(String selectedAnswer) {
    if (currentQuestionIndex < questions.length) {
      widget.onSelectAnswer(selectedAnswer);
      setState(() {
        currentQuestion = questions[currentQuestionIndex];
        currentQuestionIndex++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          StyledTextWidget(currentQuestion.question),
          SizedBox(height: 3),
          ...currentQuestion
              .getSchuffleAnswers()
              .map<Widget>((answer) => AnswerButtonWidget(
                    text: answer,
                    onTap: () {
                      answerQuestion(answer);
                    },
                  )),
        ],
      ),
    );
  }
}
