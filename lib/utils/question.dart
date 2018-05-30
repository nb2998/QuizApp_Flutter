class Question {
  String _question;
  bool _ans;
  Question(this._question, this._ans);

  String get questionText => _question;
  bool get questionAns => _ans;
}