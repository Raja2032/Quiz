// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answertext;

  Answer(this.selectHandler, this.answertext);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // ignore: prefer_const_constructors
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
        ),
        onPressed: selectHandler,
        child: Text(answertext),
      ),
    );
  }
}
