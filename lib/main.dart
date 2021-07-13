import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
  void _answerQuestion() {
    print('answer chosen ! ');
    setState(() {
      cp = cp + 1;
    });
    print('counter state $cp');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'what\' your favorit color?',
        'answers': ['Black', 'Red', 'Green', 'Yello'],
      },
      {
        'questionText': 'what\'s your favorit animal? ',
        'answers': ['Cat', 'Bird', 'Snake', 'Gecko'],
      },
      {
        'questionText': 'what\'s your favorit friend? ',
        'answers': ['me', 'branda', 'zetta', 'Max'],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My APP"),
          backgroundColor: Colors.redAccent,
          titleSpacing: 1.2,
          centerTitle: true,
        ),
        body: Column(
          children: [
            Question(questions[cp]['questionText']),
            ...(questions[cp]['answers'] as List<String>).map((a) {
              return Answer(_answerQuestion, a);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
