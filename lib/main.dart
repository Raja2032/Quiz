import 'dart:ffi';

import 'package:flutter/material.dart';

// ignore: unused_import
import './question.dart';
import 'package:first_app/result.dart';
// ignore: unused_import
import './answer.dart';
import './quiz.dart';

//void main() {
//runApp(MyApp());
//}
void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionindex = 0;
  var _totalscore = 0;
  //late int score;
  void _resetquiz() {
    setState(() {
      _questionindex = 0;
      _totalscore = 0;
    });
  }

  // ignore: non_constant_identifier_names
  Future<int> _Answerquestion(score) {
    _totalscore += score;
    setState(
      () {
        _questionindex += 1;
      },
    );

    print(_questionindex);
    return _totalscore;
    //if (_questionindex<question.length){
  }

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    final _question = [
      {
        'questiontext': 'what \'s your favourite colour',
        'answers': [
          {'text': 'balck', 'score': 10},
          {'text': 'red', 'score': 8},
          {'text': 'green', 'score': 6},
          {'text': 'yellow', 'score': 4}
        ],
      },
      {
        'questiontext': 'what\'s your favourite animal',
        'answers': [
          {'text': 'Dog', 'score': 2},
          {'text': 'cat', 'score': 5},
          {'text': 'parrot', 'score': 6},
          {'text': 'goat', 'score': 4}
        ]
      },
      {
        'questiontext': 'What \'s your name ',
        'answers': [
          {'text': 'Raja', 'score': 1},
          {'text': 'deva', 'score': 6},
          {'text': 'suri', 'score': 6},
          {'text': 'nithish', 'score': 4}
        ],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My First App"),
        ),
        body: _questionindex < _question.length
            ? quiz(
                Answerquestion: _Answerquestion(20),
                questionindex: _questionindex,
                question: _question,
              )
            : Result(_totalscore, _resetquiz),
      ),
    );
  }
}
