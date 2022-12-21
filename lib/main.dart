import 'package:flutter/material.dart';
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
  var _value = "Question";
  void _answerQuestion() {
    setState(() {
      _value = "The new Question";
    });
    print('Answer Chosen Question');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color ?',
      'What\'s your favorite animal ?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(children: [
          Question(_value),
          ElevatedButton(onPressed: _answerQuestion, child: Text('Answer 1')),
          ElevatedButton(
              onPressed: () => print('Answer Question 2'),
              child: Text('Answer 2')),
          ElevatedButton(
              onPressed: () => {print('Answer 3')}, child: Text('Answer 3')),
        ]),
      ),
    );
  }
}
