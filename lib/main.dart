import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MyAppState();
  }
}

class MyAppState extends State {
  var value = "Question";
  void answerQuestion() {
    setState(() {
      value = "The new Question";
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
          Text(value),
          ElevatedButton(onPressed: answerQuestion, child: Text('Answer 1')),
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
