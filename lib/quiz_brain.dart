import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(
      q: 'NFT stands for non-fungible token. Its generally built using the same kind of programming as cryptocurrency, like Bitcoin or Ethereum, but thats where the similarity ends. Physical money and cryptocurrencies are “fungible,” meaning they can be traded or exchanged for one another',
      a: true,
    ),
    Question(
      q: 'Each NFT represents a real-world object like music, a video, an in-game item, or a virtual baseball trading card. These digital assets are bought and sold online, typically with cryptocurrency. Things like physical money or bitcoin are “fungible,” meaning they can be exchanged for one another',
      a: true,
    ),
    Question(q: 'Bitcoin is NFT', a: false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) _questionNumber++;
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }
}
