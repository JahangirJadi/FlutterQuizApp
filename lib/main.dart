import 'package:flutter/material.dart';
import 'package:flutter_test_app/answer.dart';
import 'package:flutter_test_app/question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _question = [
    'What\'s your favorite color?',
    'What\'s your favorite animal?'
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    print("Answer chosen");
    if (_questionIndex + 1 < _question.length) {
      setState(() {
        _questionIndex += 1;
      });
    } else {
      setState(() {
        _questionIndex -= 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("My Flutter App"),
            backgroundColor: Colors.blue,
          ),
          body: Column(
            children: [
              Question(_question[_questionIndex]),
              Answer(_answerQuestion),
              Answer(_answerQuestion),
              Answer(_answerQuestion),

            ],
          )),
    );
  }
}
