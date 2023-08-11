import 'package:flutter/material.dart';
class Answer extends StatelessWidget {
  final String answerText;
  final VoidCallback selectHandler;//A pointer to a function

  Answer(this.selectHandler,this.answerText);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(onPressed: selectHandler, child: Text(answerText),),
    );
  }
}
