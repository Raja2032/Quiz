import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  // ignore: non_constant_identifier_names
  final VoidCallback Answerquestion;
  final int questionindex;

  quiz(
      {required this.question,
      // ignore: non_constant_identifier_names
      required this.Answerquestion,
      required this.questionindex});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Question(
          question[questionindex]['questiontext'] as String,
        ),
        ...(question[questionindex]['answers'] as List<Map<String, Object>>)
            .map((answers) {
          return Answer(() => Answerquestion(), answers['text'] as String);
        }).toList()
      ],
    ));
  }
}
