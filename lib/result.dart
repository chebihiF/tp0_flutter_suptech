import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetHandler;
  Result(this.totalScore, this.resetHandler);

  String get totalText {
    return "Score " + totalScore.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            totalText,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 36),
          ),
          ElevatedButton(
              onPressed: resetHandler, child: const Text('Restart Quiz'))
        ],
      ),
    );
  }
}
