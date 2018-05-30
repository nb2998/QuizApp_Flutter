import 'package:flutter/material.dart';
import 'package:flutter_facts_app/UI/answer_button.dart';
import 'package:flutter_facts_app/UI/question_text.dart';
import 'package:flutter_facts_app/UI/correct_wrong_overlay.dart';
import 'package:flutter_facts_app/utils/question.dart';
import 'package:flutter_facts_app/utils/quiz.dart';

class QuizPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new QuizPageState();
  }
}

class QuizPageState extends State<QuizPage> {
  Quiz quiz = new Quiz([
    new Question(
        "Flutter widgets are built using a modern react-style framework, which takes inspiration from React.",
        true),
    new Question(
        "StatefulWidgets are useful when the part of the user interface you are describing does not depend on anything other than the configuration information in the object.",
        false),
    new Question(
        "Flutter provides a number of widgets that help you build apps that follow Material Design",
        true),
  ]);

  Question currQues;
  int quesNo;
  String questionText;
  bool isCorrect;
  bool showOverlay = false;

  @override
  void initState() {
    super.initState();
    currQues = quiz.getNextQues;
    questionText = currQues.questionText;
    quesNo = quiz.currentQuesNo;
  }

  void handleAnswer(bool ans) {
    isCorrect = (ans == currQues.questionAns);
    quiz.updateScore(isCorrect);
    this.setState(() {
      showOverlay = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new Column(
          children: <Widget>[
            new QuestionText(questionText, quesNo),
            new AnswerButton(true, () => handleAnswer(true)),
            new AnswerButton(false, () => handleAnswer(false))
          ],
        ),
        (showOverlay) ? new CorrectWrongOverLay(isCorrect, () {
          currQues = quiz.getNextQues;
          this.setState((){
            if(currQues == null) showOverlay = false;
            else {
              showOverlay = false;
              questionText = currQues.questionText;
              quesNo = quiz.currentQuesNo;
            }
          });
        }) : new Container(),
      ],
    );
  }
}
