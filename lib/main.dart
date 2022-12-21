import 'package:flutter/material.dart';
import 'package:tp0/answer.dart';
import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _MyAppState();
  }
}

class _MyAppState extends State {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favorite color ?',
        'answers': ['Black', 'Red', 'Blue', 'Green'],
      },
      {
        'questionText': 'What\'s your favorite animal ?',
        "answers": ['Rabiit', 'Snake', 'Elephant', 'Lion'],
      },
      {
        'questionText': 'What\'s your favorite instructor ?',
        "answers": ['Mr.xxx', 'Mr.yyy', 'Mr.zzz', 'Mr.ttt'],
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(children: [
          Question(questions[_questionIndex]['questionText']),
          ...(questions[_questionIndex]['answers'] as List<String>)
              .map((answer) => Answer(_answerQuestion, answer))
              .toList()
        ]),
      ),
    );
  }
}
