import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
// class Quiz extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(

//     );
//   }
// }
class Quiz extends StatelessWidget {
  const Quiz({
    @required this.questions,
    @required this.questionIndex,
    @required this.selectHandler,
  });

  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function selectHandler;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]["questionText"],
        ),
        ...(questions[questionIndex]["answers"] as List<String>).map((answer) {
          return Answer(selectHandler, answer);
        }),
        TextButton(
          onPressed: () {},
          child: Text("A Flat Button"),
          style: TextButton.styleFrom(primary: Colors.orange),
        ),
        OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            primary: Colors.orange,
            side: BorderSide(color: Colors.orange),
          ),
          child: Text("Button"),
        )
      ],
    );
  }
}
