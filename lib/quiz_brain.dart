import 'questions.dart';

class QuizBrain {

    int _questionNumber = 0;

    List<Question> _questionPage = [
    Question(q: 'Akin\'s favourite food is Amala', a: true),
    Question(q: 'There are 53 weeks in a calendar year', a: false),
    Question(q: 'October was originally the 8th month of the year', a: true),
    Question(q: 'Lana Del Rey sang \'Is This Happiness\'', a:true),
    Question(q: 'Blue pen is for the elites', a: false),
    Question(q: 'Brown cows give brown milk', a: false),
    Question(q: 'The moon was named after Buzz Aldrin\'s mother\'s maiden name', a: true),
    Question(q: 'The Ice queen of pop is Beyonce', a: false),
    Question(q: 'Kakashi-sensei defeated Pain-sama', a: false),
    Question(q: 'Cooking gas is naturally odourless', a: true),
    Question(q: 'Daredevil has better agility than Spideman', a: true)
  ];

  void nextQuestion() {
    if (_questionNumber < _questionPage.length - 1) {
      _questionNumber++;
    }
    print(_questionNumber);
    print(_questionPage.length);
  }

  String getQuestionText() {
    return _questionPage[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionPage[_questionNumber].questionAnswer;
  }


  bool isFinished() {
    if (_questionNumber >= _questionPage.length - 1) {
      print('now returning true');
      return true;
    }

    else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }

}
