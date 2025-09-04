import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/widget/styled_text_widget.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
  });

  final List<String> chosenAnswers;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 52),
      child: Column(
        children: [
          StyledTextWidget('You answered x out of Y questions correctly'),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.all(16),
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
              itemCount: questions.length,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      questions[index].question,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Correct: ${questions[index].answers[0]}',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.lightGreenAccent,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'your answer: ${chosenAnswers[index]}',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.lightBlue,
                      ),
                    )
                  ],
                );
              },
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text('Restart Quiz!'),
          ),
        ],
      ),
    );
  }
}
