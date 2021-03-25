import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex++;
    print("Answer chosen");
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's is your favorite color?",
      "What's your favorite animal",
    ];
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            RaisedButton(
              onPressed: answerQuestion,
              child: Text("Answer 1"),
            ),
            RaisedButton(
              onPressed: () => print("Answer 2 chosen"),
              child: Text("Answer 2"),
            ),
            RaisedButton(
              onPressed: () {
                print("Answer 3 chosen");
              },
              child: Text("Answer 3"),
            ),
          ],
        ),
      ),
    );
  }
}
