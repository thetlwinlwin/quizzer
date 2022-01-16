import 'questions.dart';

class QuizBrain {
  // '_' means encapsulation. It prevent from calling 'questionBank' outside of this file.
  List<Question> _questionBank = [
    Question(
      questionText: 'Thet Lwin is right handed?',
      questionAnswer: false,
    ),
    Question(
      questionText: 'Is he ugly?',
      questionAnswer: true,
    ),
    Question(
      questionText: 'Born in November?',
      questionAnswer: true,
    ),
    Question(
      questionText: 'Does he love his father?',
      questionAnswer: false,
    ),
    Question(
      questionText: 'Doese he like to play SF?',
      questionAnswer: true,
    ),
    Question(
      questionText: 'Is he from Mandalay?',
      questionAnswer: false,
    ),
    Question(
      questionText: 'He stole an umbrella!!',
      questionAnswer: false,
    ),
    Question(
      questionText: 'Mel Jye is his nickname?',
      questionAnswer: true,
    ),
    Question(
      questionText: 'Can he dance?',
      questionAnswer: false,
    ),
    Question(
      questionText: 'Coward?',
      questionAnswer: true,
    ),
  ];

  int _questionNumber = 0;

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  int queLength() {
    return this._questionBank.length - 1;
  }

  String getQueText() {
    return this._questionBank[_questionNumber].questionText;
  }

  bool getQueAns() {
    return this._questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber == _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    this._questionNumber = 0;
  }
}
