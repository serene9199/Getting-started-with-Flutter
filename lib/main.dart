//import 'dart:html';

import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

/*StatefulWidget class is defined as in two separate classes, 
one if the external data input changes and the second if the internal state of the widget changes
1. done by renaming the second class as 'name_of_the_first_class_followed_by-State'
and extending State<pointer to that class(name_of_the_first_class)>
2. In the first class that extends StatefulWidget, add a new method: createState in the format:
-that takes in no args, returns State object, connected to a StatefulWidget
State<StatefulWidget> createState{
  return name_of_the_first_class_followed_by-State() //an object of the second class
  Now, the connection for StatefulWidget set!

To reflect the change, that is to increment the counter and display the next Q accordingly,
we wrap the increment operation in a method which return an anonymous fn, so that
when we click the Answer 1 button, the question changes to the next (works for 1st Q since
we called that method in the first option only, rest has anonymous/unnamed fns in them)
}
*/
class MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  var _questions = [
    {
      'questionText': 'What is your fav color',
      'answers': [
        {'text': 'Blue', 'score': 10},
        {'text': 'Green', 'score': 8},
        {'text': 'Amber', 'score': 4},
        {'text': 'Teal', 'score': 6}
      ]
    },
    {
      'questionText': 'What is your fav bird',
      'answers': [
        {'text': 'Eagle', 'score': 4},
        {'text': 'Swan', 'score': 6},
        {'text': 'Duck', 'score': 10},
        {'text': 'Peacock', 'score': 8}
      ]
    },
    {
      'questionText': 'What is your fav animal',
      'answers': [
        {'text': 'Cat', 'score': 6},
        {'text': 'Dog', 'score': 8},
        {'text': 'Horse', 'score': 4},
        {'text': 'Mouse', 'score': 10}
      ]
    },
  ];
  void _quesa(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print('Pressed the button!');
  }

  void _restart() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My first App?'),
          ),
          //we could add a condition here, if the index exceeds the given questions, to direct
          //to a page showing some message using ternary expressions
          body: (_questionIndex < 3)
              ? Quiz(
                  questionIndex: _questionIndex,
                  quesa: _quesa,
                  questions: _questions)
              : Result(_totalScore, _restart)),
    );
  }
}

void main() {
  runApp(MyApp());
}
