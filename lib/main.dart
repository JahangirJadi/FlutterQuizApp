import 'package:flutter/material.dart';
import 'package:flutter_test_app/quiz.dart';
import 'package:flutter_test_app/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Blue', 'Black', 'Orange', 'Purple']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Cat', 'Dog', 'Elephant', 'Horse']
    },
    {
      'questionText': 'What\'s your favorite bird?',
      'answers': ['Parrot', 'Pigeon', 'Penguins', 'Sparrow']
    },
    {
      'questionText': 'What\'s your favorite movie?',
      'answers': [
        'Mission Impossible',
        'Pirates of the Caribbean',
        'Terminator',
        'Fast and the Furious',
        'Resident Evil'
      ]
    },
  ];

  var _questionIndex = 0;

  void _restart() {
    setState(() {
      _questionIndex = 0;
      print("INDEX :::$_questionIndex");
    });
    print("INDEX out :::$_questionIndex");
  }

  void _answerQuestion() {
    print("Answer chosen");
    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex += 1;
      });
    } else {
      // setState(() {
      //   _questionIndex -= 1;
      // });
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
        body: _questionIndex < _questions.length
            ? Quiz(_questions, _answerQuestion, _questionIndex)
            : Center(
              child: RaisedButton(
                  child: Text("Restart Quiz", style: TextStyle(color: Colors.white),),
                  color: Colors.blue,
                  onPressed:  _restart,
                ),
            ),
      ),
    );
  }
}
