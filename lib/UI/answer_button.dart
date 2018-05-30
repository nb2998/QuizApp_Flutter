import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final bool _option;
  final VoidCallback _onTap;

  AnswerButton(this._option, this._onTap);

  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: new Material(
          color: (_option) ? Colors.lightGreen : Colors.redAccent,
          child: new InkWell(
            onTap: () => _onTap(),
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
