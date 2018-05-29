import 'package:flutter/material.dart';
import 'package:flutter_facts_app/UI/answer_button.dart';

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
      children: <Widget>[
        new Column(
          children: <Widget>[
            new Material(
              child: new Center(
                child: new Container(
                  padding: new EdgeInsets.symmetric(vertical: 50.0),
                  child: new Text("Question", style: new TextStyle(fontSize: 20.0),),
                ),
              )
            ),
            new AnswerButton(true),
            new AnswerButton(false)
          ],
        )
      ],
    );
  }
}
