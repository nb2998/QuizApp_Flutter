import 'question.dart';
class Quiz {
  List<Question> _questions;
  int _score = 0;
  int _currentQuesIndex = -1;

  Quiz(this._questions){
    _questions.shuffle();
  }

  //getters
  int get score => score;
  List<Question> get questions => _questions;
  int get currentQuesNo => _currentQuesIndex+1;
  int get totalNoOfQues => _questions.length;

  Question get getNextQues {
    if(++_currentQuesIndex >= totalNoOfQues) return null;
    return _questions[_currentQuesIndex];
  }

  void updateScore(bool isCorrect) {
    if(isCorrect) _score++;
  }
}