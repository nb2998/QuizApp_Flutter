import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  bool _option;

  AnswerButton(this._option);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Expanded(
      child: new Material(
          color: (_option) ? Colors.lightGreen : Colors.redAccent,
          child: new InkWell(
            onTap: () => print(_option.toString() + " clicked"),
            child: new Center(
              child: new Container(
                decoration: new BoxDecoration(
                    border: new Border.all(color: Colors.white, width: 4.0)),
                padding: new EdgeInsets.all(20.0),
                child: new Text(
                  _option.toString().toUpperCase(),
                  style: new TextStyle(fontSize: 40.0, color: Colors.white),
                ),
              ),
            ),
          )),
    );
  }
}
