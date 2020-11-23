import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final Function quesa;
  final List<Map<String, Object>> questions;
  Quiz(
      {@required this.questions,
      @required this.questionIndex,
      @required this.quesa});
  @override
  Widget build(BuildContext build) {
    return (Column(
      children: <Widget>[
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => quesa(answer['score']), answer['text']);
        }).toList()
      ],
    ));
  }
}
