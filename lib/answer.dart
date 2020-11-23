import 'package:flutter/material.dart';

//to replace the RiasedButton widget in the main.dart file after adding the styling here
class Answer extends StatelessWidget {
  final Function selectHandler;
  final String option;
  Answer(this.selectHandler, this.option);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.teal,
        textColor: Colors.white,
        child: Text(option),
        onPressed: selectHandler,
      ),
    );
  }
}
