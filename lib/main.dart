import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var totalScore=0;
  void ResetQuiz()
  {
    setState(() {
      questionIndex=0;
      totalScore=0;
    });

  }
  static const question = [
    {
      "QuestionText": "What is your favorite color man?",
      "answers": [{"text":"Red","score":5}, {"text":"Blue","score":2},{"text":"Pink","score":6} , {"text":"Green","score":1}]
    },
    {
      "QuestionText": "What is your pet's animal?",
      "answers": [{"text":"Rabbit","score":1},{"text":"Snake","score":3} , {"text":"Bat","score":8},{"text":"Lion","score":8} ]
    },
    {
      "QuestionText": "What is your Nationality?",
      "answers": [{"text":"Indian","score":1},{"text":"Canadian","score":2} ,{"text":"American","score":7} , {"text":"Persian","score":8}]
    },
  ];

  void AnswerQuestion(int score) {
    totalScore += score;
    setState(() {
      questionIndex = questionIndex + 1;
    });

    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Personality Quiz"),
        ),
        body: Container(
          color: Colors.white,
          child: Center(
            child: questionIndex < question.length
                ?Quiz(AnswerQuestion: AnswerQuestion,question:question,questionIndex: questionIndex,)
                : Result(totalScore,ResetQuiz),
          ),
        ),
      ),
    );
  }
}
