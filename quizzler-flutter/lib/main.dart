import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'question_brain.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  QuestionBrain brain = new QuestionBrain();
  List<int> askedQuestions = new List<int>();

  int random = Random().nextInt(12);

  bool checkResult() {
    if (askedQuestions.length == brain.getQuantityOfQuestions()) {
      int score = 0;
      scoreKeeper.forEach((answer) {
        if (answer == icons[0]) score++;
      });

      print(score);

      if (score >= brain.getQuantityOfQuestions() / 2) {
        setState(() {
          return Alert(
            context: context,
            title: "TEBRİKLER!",
            desc: "13 Sorudan $score Adetini Doğru Bildin!",
            image: Image.asset("images/success.png"),
          ).show();
        });
      } else {
        setState(() {
          return Alert(
            context: context,
            title: "BU SEFER OLMADI!",
            desc: "13 Sorudan Sadece $score Adetini Doğru Bildin.",
            image: Image.asset("images/failure.png"),
          ).show();
        });
      }
    } else {
      return false;
    }
  }

  int getRandom() {
    while (askedQuestions.indexOf(random) != -1) {
      random = Random().nextInt(13);
    }

    askedQuestions.add(random);

    return random;
  }

  List<Widget> icons = [
    Icon(
      Icons.check,
      size: 25,
      color: Colors.green,
    ),
    Icon(
      Icons.close,
      size: 25,
      color: Colors.red,
    )
  ];

  List<Widget> scoreKeeper = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                brain.getQuestionText(getRandom()),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                //The user picked true.
                setState(() {
                  if (checkResult() == false) {
                    scoreKeeper.add(
                        icons[brain.getCorrectAnswer(random) == true ? 0 : 1]);
                  }
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                //The user picked false.
                setState(() {
                  if (checkResult() == false) {
                    scoreKeeper.add(
                        icons[brain.getCorrectAnswer(random) == false ? 0 : 1]);
                  }
                });
              },
            ),
          ),
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: scoreKeeper,
          ),
        )
      ],
    );
  }
}
