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
      'answers': [
        {'text': 'Blue', 'score': 2},
        {'text': 'White', 'score': 1},
        {'text': 'Red', 'score': 5},
        {'text': 'Black', 'score': 10}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Cat', 'score': 3},
        {'text': 'Dog', 'score': 1},
        {'text': 'Elephant', 'score': 4},
        {'text': 'Horse', 'score': 5}
      ]
    },
    {
      'questionText': 'What\'s your favorite bird?',
      'answers': [
    {'text':'Parrot', 'score':4},
    {'text':'Pigeon', 'score':3},
    {'text':'Penguin', 'score':2},
    {'text':'Sparrow', 'score':1}
      ]
    },
    {
      'questionText': 'What\'s your favorite movie?',
      'answers': [
        {'text':'Mission Impossible', 'score':1},
        {'text':'Pirates of the Caribbean', 'score':4},
        {'text':'Terminator', 'score':5},
        {'text':'Fast and the Furious', 'score':7},
        {'text':'Resident Evil', 'score':3}
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
      print("INDEX :::$_questionIndex");
    });
    print("INDEX out :::$_questionIndex");
  }

  void _answerQuestion(int score) {
    _totalScore += score;
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
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
