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
      'questionText': 'Quel est ma couleur pref ?',
      'answers': [
        {'text': 'Vert', 'score': 4},
        {'text': 'Jaune', 'score': 1},
        {'text': 'Rose', 'score': 2},
        {'text': 'Bleu', 'score': 5}
      ],
    },
    {
      'questionText': 'Quel est mon animal pref ?',
      'answers': [
        {'text': 'Chat', 'score': 2},
        {'text': 'Lapin', 'score': 1},
        {'text': 'Chien', 'score': 5},
        {'text': 'Elephant', 'score': 4}
      ],
    },
    {
      'questionText': 'Quel est mon pref ?',
      'answers': [
        {'text': 'Annie Brie', 'score': 5},
        {'text': 'Alexandra KohLanta', 'score': 1},
        {'text': 'Claude KohLanta', 'score': 2},
        {'text': 'katy Perry', 'score': 4}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
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
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
