import 'package:flutter/material.dart';

class QuestionText extends StatefulWidget {
  final String _question;
  final int _quesNo;

  QuestionText(this._question, this._quesNo);

  @override
  State<StatefulWidget> createState() => new QuestionTextState();
}

class QuestionTextState extends State<QuestionText>
    with SingleTickerProviderStateMixin {
  Animation<double> _fontSizeAnimation;
  AnimationController _fontSizeAnimationController;

  @override
  void initState() {
    super.initState();
    _fontSizeAnimationController = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 2000));
    _fontSizeAnimation = new CurvedAnimation(
        parent: _fontSizeAnimationController, curve: Curves.bounceOut);
    _fontSizeAnimation.addListener(() => this.setState(() {}));

    _fontSizeAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return new Material(
        child: new Center(
      child: new Container(
        padding: new EdgeInsets.symmetric(vertical: 30.0),
        child: new Text(
          "Question " + widget._quesNo.toString() + ". " + widget._question,
          style: new TextStyle(fontSize: 15* _fontSizeAnimation.value),
        ),
      ),
    ));
  }
}
