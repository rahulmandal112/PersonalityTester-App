import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';

import 'answer.dart';
class Quiz extends StatelessWidget {
  final List<Map<String,Object>> question;
  final int questionIndex;
  final Function AnswerQuestion;
  Quiz({required this.question,required this.AnswerQuestion,required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          question[questionIndex]["QuestionText"] as String,
        ),
        ...(question[questionIndex]["answers"] as List<Map<String,Object>>)
            .map((answer) {
          //... operator separates the nested list into individual objects
          return Answer(()=>AnswerQuestion(answer["score"]), answer["text" ]as String);
        }).toList()
      ],
    );
  }
}
