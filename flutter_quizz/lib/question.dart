import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String
      questionText; // final -> d'oesn't change after l'instantiation in construct()

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
