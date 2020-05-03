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
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      // call build()
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
      'Quel est ta couleur pref ?',
      'Quel est ton animal pref ?'
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('First App'),
          ),
          body: Column(children: [
            Question(_questions[_questionIndex]),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ])),
    );
  }
}
