import 'package:flutter/material.dart';
import 'quiz.dart';

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

class _MyAppState extends State<MyApp> {
  final _questions = const [
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

  var _questionIndex = 0;

  void _answerQuestion() {
    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("My First App"),
      ),
      body: _questionIndex < _questions.length
          ? Quiz(_questions, _questionIndex, _answerQuestion)
          : const Center(
              child: Text('No more questions'),
            ),
    ));
  }
}
