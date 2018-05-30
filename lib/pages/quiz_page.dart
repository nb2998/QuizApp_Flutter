import 'package:flutter/material.dart';
import 'package:flutter_facts_app/UI/answer_button.dart';
import 'package:flutter_facts_app/UI/question_text.dart';
import 'package:flutter_facts_app/UI/correct_wrong_overlay.dart';
class QuizPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new QuizPageState();
  }
}

class QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new Column(
          children: <Widget>[
            new QuestionText("Flutter is nice.", 1),
            new AnswerButton(true),
            new AnswerButton(false)
          ],
        ),
        new CorrectWrongOverLay(false),
      ],
    );
  }
}