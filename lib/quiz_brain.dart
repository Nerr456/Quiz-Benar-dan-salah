import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  final List<Question> _questionBank = [
    Question(questionText: 'gajah berkaki 4', questionAnswer: true),
    Question(
        questionText: 'dalam permainan suit gajah selalu menang melawan semut',
        questionAnswer: false),
    Question(
        questionText: 'tidak ada semut maka dunia hancur',
        questionAnswer: true),
    Question(
        questionText: 'semut adalah serangga yang suka berkelompok',
        questionAnswer: true),
    Question(
        questionText: 'apakah sekelompok semut mempunyai ratu',
        questionAnswer: true),
    Question(
        questionText: 'ratu adalah sebutan istri presiden di indonesia',
        questionAnswer: false),
    Question(
        questionText: 'indonesia tidak dijajah selama 350 tahun',
        questionAnswer: true),
    Question(
        questionText: 'Ir.Soekarno adalah presiden republik indonesia',
        questionAnswer: true),
    Question(
        questionText: 'Bj.Habibi adalah presiden ke-3 di indonesia',
        questionAnswer: true),
    Question(
        questionText: 'indonesia merdeka pada 17 agustus 1945',
        questionAnswer: false),
    Question(
        questionText: 'indonesia memiliki penduduk sekitas 170 ribu jiwa ',
        questionAnswer: true),
    Question(
        questionText:
            'dalam permainan suit gajah selalu menang terhadap manusia',
        questionAnswer: true),
    Question(questionText: 'apakah gajah berkaki tiga', questionAnswer: false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  //TODO: Step 3 Part A - create isFinished method that checks the last questions.
  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('returning true');
      return true;
    } else {
      return false;
    }
  }

  //TODO: Menghitung jumlah pertanyaan
  int getTotalQuestions() {
    return _questionBank.length;
  }

  //TODO: Step 4 Part B - Create a reset() method that sets the questionNumber back to 0
  void reset() {
    _questionNumber = 0;
  }
}
