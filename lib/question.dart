import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questiontext;
  const Question(this.questiontext, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(4.0),
      child: Text(
        questiontext,
        style: const TextStyle(fontSize: 26),
        textAlign: TextAlign.center,
      ),
    );
  }
}
