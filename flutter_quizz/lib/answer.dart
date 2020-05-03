import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHadler;

  Answer(this.selectHadler); 

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text('answer'),
        onPressed: selectHadler,
      ),
    );
  }
}
