import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var question = [
    'What\'s your favorite color?',
    'What\'s your favorite animal?'
  ];

  var questionIndex = 0;

  void answerQuestion() {
    print("Answer chosen");
    if (questionIndex + 1 < question.length) {
      setState(() {
        questionIndex += 1;
      });
    } else {
      setState(() {
        questionIndex -= 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("My Flutter App"),
            backgroundColor: Colors.red,
          ),
          body: Column(
            children: [
              Text(question[questionIndex]),
              RaisedButton(
                onPressed: answerQuestion,
                child: Text("Answer 1"),
              ),
              RaisedButton(
                onPressed: answerQuestion,
                child: Text("Answer 2"),
              ),
              RaisedButton(
                onPressed: answerQuestion,
                child: Text("Answer 3"),
              ),
            ],
          )),
    );
  }
}
