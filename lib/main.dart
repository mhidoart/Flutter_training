import 'package:first_app_flutter/result.dart';
import 'package:flutter/material.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var cp = 0;
  var totalScore = 0;
  @override
  Widget build(BuildContext context) {
    var _questions = [
      {
        'questionText': 'what\' your favorit color?',
        'answers': [
          {'text': 'Black', 'score': 10},
          {'text': 'Red', 'score': 15},
          {'text': 'White', 'score': 50}
        ],
      },
      {
        'questionText': 'what\'s your favorit animal? ',
        'answers': [
          {'text': 'cat', 'score': 10},
          {'text': 'gecko', 'score': 15},
          {'text': 'rat', 'score': -20},
        ],
      },
      {
        'questionText': 'what\'s your favorit friend? ',
        'answers': [
          {'text': 'Black', 'score': 10},
          {'text': 'fe', 'score': 15},
          {'text': 'Max', 'score': 20},
          {'text': 'Brenda', 'score': 50}
        ],
      },
    ];
    void _answerQuestion(int score) {
      print('answer chosen ! ');
      setState(() {
        print('we have more questions ! ');
        cp = cp + 1;
        totalScore += score;
      });
      print('counter state $cp');
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My APP"),
          backgroundColor: Colors.redAccent,
          titleSpacing: 1.2,
          centerTitle: true,
        ),
        body: cp < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                question: _questions,
                questionIndex: cp)
            : Result(totalScore),
      ),
    );
  }
}
