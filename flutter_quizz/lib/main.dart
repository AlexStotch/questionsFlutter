import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = const [
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
    if (_questionIndex < questions.length) {}
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('First App'),
          ),
          body: _questionIndex < questions.length
              ? Column(children: [
                  Question(questions[_questionIndex]['questionText']),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList()
                ])
              : Center(
                  child: Text('Bravo le veau'),
                )),
    );
  }
}
