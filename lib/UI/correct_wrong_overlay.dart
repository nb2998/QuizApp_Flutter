import 'package:flutter/material.dart';
import 'dart:math';

class CorrectWrongOverLay extends StatefulWidget {
  final bool is_correct;

  CorrectWrongOverLay(this.is_correct);

  @override
  State<StatefulWidget> createState() {
    return new CorrectWrongOverLayState();
  }
}

class CorrectWrongOverLayState extends State<CorrectWrongOverLay>
    with SingleTickerProviderStateMixin {
  Animation _iconAnimation;
  AnimationController _iconAnimationController;

  @override
  void initState() {
    super.initState();
    _iconAnimationController = new AnimationController(
        vsync: this, duration: new Duration(milliseconds: 2000));
    _iconAnimation = new CurvedAnimation(
        parent: _iconAnimationController, curve: Curves.bounceInOut);
    _iconAnimation.addListener(() => this.setState(() {}));
    _iconAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Material(
      color: Colors.black45,
      child: new InkWell(
        onTap: () => print("Overlay"),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              child: new Transform.rotate(
                angle: _iconAnimation.value * 2 * PI,
                child: new Icon((widget.is_correct) ? Icons.done : Icons.clear,
                    size: _iconAnimation.value * 80.0),
              ),
              decoration: new BoxDecoration(
                  color: Colors.white, shape: BoxShape.circle),
            ),
            new Padding(padding: new EdgeInsets.all(10.0)),
            new Text((widget.is_correct) ? "Correct" : "Incorrect",
                style: new TextStyle(fontSize: 50.0, color: Colors.white))
          ],
        ),
      ),
    );
  }
}
