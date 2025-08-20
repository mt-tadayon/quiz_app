import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/widget/asnwer_button_widget.dart';
import 'package:quiz_app/widget/styled_text_widget.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<StatefulWidget> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;
  var currentQuestion = questions[0];

  @override
  Widget build(BuildContext context) {
    void answerQuestion() {
      currentQuestionIndex++;
      if (currentQuestionIndex < questions.length) {
        setState(() {
          currentQuestion = questions[currentQuestionIndex];
        });
      }
    }

    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          StyledTextWidget(currentQuestion.question),
          SizedBox(height: 3),
          ...currentQuestion.getSchuffleAnswers().map<Widget>(
              (answer) => AsnwerButtonWidget(answer, answerQuestion)),
        ],
      ),
    );
  }
}
