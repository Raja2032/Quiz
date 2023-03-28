// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final resultscore;
  final VoidCallback resetHandler;
  const Result(this.resultscore, this.resetHandler);

  String resultPhrase() {
    String resultText = 'you did it';

    if (resultscore <= 8) {
      resultText = 'your awesome and innocent';
    } else if (resultscore <= 12) {
      resultText = 'pretty Likeable';
    } else if (resultscore <= 16) {
      resultText = 'you are ... strange';
    } else {
      resultText = 'you are so bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          resultPhrase as String,
          style: const TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextButton(
          child: const Text('restar Quiz'),
          onPressed: resetHandler,
        )
      ],
    ));
  }
}
