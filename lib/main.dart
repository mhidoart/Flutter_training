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
    var _questions = [
      'what\' your favorit color?',
      'what\'s your favorit animal? '
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
            Question(_questions[cp]),
            RaisedButton(
              child: Text('Answer 1 '),
              onPressed: _answerQuestion,
            ),
            RaisedButton(child: Text('Answer 2 '), onPressed: _answerQuestion),
            RaisedButton(child: Text('Answer 3 '), onPressed: _answerQuestion),
          ],
        ),
      ),
    );
  }
}
