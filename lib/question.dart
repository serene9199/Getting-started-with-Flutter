import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;

  Question(
      this.question); // constructor to initialize the String variable, question to the value passed

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double
          .infinity, //to take as much width/size as it can take on the screen
      margin: EdgeInsets.all(10),
      child: Text(
        question,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
