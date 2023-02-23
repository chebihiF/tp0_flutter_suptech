import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  Result(this.totalScore);

  String get totalText {
    return "Score " + totalScore.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(this.totalText),
    );
  }
}
