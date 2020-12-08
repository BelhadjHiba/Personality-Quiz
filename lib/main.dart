import 'package:flutter/material.dart';
import 'package:flutterCompleteGuide/result.dart';

import './quiz.dart';
import './result.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'what\'s your favorite animal?',
      'questionAnsware': ['fox', 'dog', 'cat', 'snake'],
    },
    {
      'questionText': 'what\'s your favorite color?',
      'questionAnsware': [
        {'text': 'blue', 'score': 10},
        {'text': 'red', 'score': 6},
        {'text': 'black', 'score': 3},
        {'text': 'green', 'score': 1}
      ],
    },
    {
      'questionText': 'what\'s your favorite actor?',
      'questionAnsware': ['max', 'jade', 'luisa', 'mathew'],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answareQuestion(int score) {
    _totalScore += score;
    // setState(() {
    //   _questionIndex = _questionIndex + 1;
    // });
    // print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('we have more questions!');
    } else {
      print('no more questions');
    }
  }

  void resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('first app'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answareQuestion: _answareQuestion,
                  questions: _questions,
                  questionIndex: _questionIndex)
              : Result(_totalScore, resetQuiz)),
    );
  }
}
