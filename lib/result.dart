import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  Result(this.totalScore);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'yeah you did it ! your score is: $totalScore',
        style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.lightGreen),
      ),
    );
  }
}
