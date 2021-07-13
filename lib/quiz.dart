import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final int questionIndex;
  final List<Map<String, Object>> question;

  Quiz(
      {@required this.question,
      @required this.answerQuestion,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question[questionIndex]['questionText']),
        ...(question[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((a) {
          return Answer(() => answerQuestion(a['score']), a['text']);
        }).toList(),
      ],
    );
  }
}
