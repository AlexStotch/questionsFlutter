import 'package:flutter/material.dart';
import 'package:flutter_quizz/result.dart';

import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'Quel est ta couleur pref ?',
      'answers': ['Bleu', 'Jaune', 'Rose', 'Vert'],
    },
    {
      'questionText': 'Quel est ton animal pref ?',
      'answers': ['Chat', 'Chien', 'Lapin', 'Elephant'],
    },
    {
      'questionText': 'Quel est ton pref ?',
      'answers': ['Annie Brie', 'Claude', 'Harrry', 'Jorda,'],
    },
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      // call build()
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < _questions.length) {}
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
