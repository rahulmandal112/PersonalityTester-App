import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final VoidCallback quizFuntionHandler;
  final int resultScore;

  Result(this.resultScore, this.quizFuntionHandler);

  String get resultPhrase {
    var resultText = "You did it!";
    if (resultScore <= 8) {
      resultText = "You are awesome and innocent!";
    } else if (resultScore <= 12) {
      resultText = "You are pretty likeable!";
    } else if (resultScore <= 16) {
      resultText = "You are strange!";
    } else {
      resultText = "You are bad!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            height: 250,
          ),
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontStyle:FontStyle.italic),
          ),
          TextButton(onPressed: quizFuntionHandler, child: Text("Reset",style: TextStyle(fontSize: 20),),style: ButtonStyle()
          )
        ],
      ),
    );
  }
}
