import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function restart;
  Result(this.totalScore, this.restart);
  String get resultPhrase {
    String f;
    if (totalScore < 8)
      f = "Nice!";
    else if (totalScore < 20)
      f = "That's great!";
    else
      f = "Wow!!";
    return (f);
  }

  @override
  Widget build(BuildContext build) {
    return (Column(
      children: <Widget>[
        Text(
          resultPhrase,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
        FlatButton(
          child: Text('Restart Quiz'),
          textColor: Colors.indigo,
          onPressed: restart,
        )
      ],
    ));
  }
}
