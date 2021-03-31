import 'package:flutter/material.dart';

// import './question.dart';
// import './answer.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  final questions = const [
    {
      "questionText": "What's is your favorite color?",
      "answers": ["black", "red", "green", "white"],
    },
    {
      "questionText": "What's your favorite animal",
      "answers": ["rabbit", "snake", "elephant", "lion"],
    },
    {
      "questionText": "Who's your favorite instructor",
      "answers": ["max", "max", "max", "max"],
    },
  ];
  void answerQuestion() {
    if (_questionIndex < questions.length - 1) {
      print("we have omre questions");
    }

    setState(() {
      print("Hit");
      _questionIndex++;
    });

    print("Answer chosen");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < questions.length
            ? Quiz(
                questions: questions,
                questionIndex: _questionIndex,
                selectHandler: answerQuestion,
              )
            : Result(),
      ),
    );
  }
}
