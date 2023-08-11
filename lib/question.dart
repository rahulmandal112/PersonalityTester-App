import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.pink[50],
            border: Border.all(
              color: Colors.black,
              width: 3,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(50.0))),
        width: double.infinity,
        height: 200,
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            questionText,
            style: const TextStyle(
              fontSize: 30,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ));
  }
}
