import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetCallback;

  Result(this.resultScore, this.resetCallback);

  String get resultPhrase {
    var resultText = '';

    if (resultScore <= 8) {
      resultText = 'You are a good person';
    } else if (resultScore <= 12) {
      resultText = 'You are pretty likeable';
    } else if (resultScore <= 16) {
      resultText = 'You are ... mmm Strange';
    } else {
      resultText = 'You are a MONSTER...';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8.0,),
          OutlineButton(

            borderSide: BorderSide(color: Colors.blue),
            textColor: Colors.blue,
            onPressed: resetCallback,
            child: Text(
              "Restart Quiz!",
              style: TextStyle(fontSize: 22.0),
            ),
          ),
        ],
      ),
    );
  }
}
