import 'package:flutter/material.dart';

import './question.dart';
import './answare.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answareQuestion;

  Quiz(
      {@required this.questions,
      @required this.answareQuestion,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answareText']
                as List<Map<String, Object>>)
            .map((answare) {
          return Answare(
              () => answareQuestion(answare['score']), answare['Text']);
        }).toList(),
      ],
    );
  }
}
