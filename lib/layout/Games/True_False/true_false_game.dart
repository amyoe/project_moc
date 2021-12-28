// Franziska Petzold

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_moc/logic/true_false_questionbank.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import '../../widget.dart';

QuizBrain quizBrain = QuizBrain();

class Quizzler extends StatefulWidget {
  @override
  _QuizzlerState createState() => _QuizzlerState();
}

class _QuizzlerState extends State<Quizzler> {
  List<Icon> scoreKeeper = [];

  void checkAnswer(bool x) {
    setState(() {
      if (x == quizBrain.getQuestionAnswer()) {
        scoreKeeper.add(
          const Icon(
            Icons.check,
            color: Colors.green,
          ),
        );
      } else {
        scoreKeeper.add(
          const Icon(
            Icons.close,
            color: Colors.red,
          ),
        );
      }
      int check = quizBrain.isFinished();
      if (check == 1) {
        Alert(
          context: context,
          type: AlertType.error,
          title: 'QUIZ BEENDET',
          buttons: [
            DialogButton(
              color: Colors.lightBlue,
              child: Text(
                "Fertig",
                style: GoogleFonts.raleway(fontSize: 18),
              ),
              onPressed: () => Navigator.pop(context),
              width: 120,
            )
          ],
        ).show();
        scoreKeeper.clear();
      }
      quizBrain.nextQuestion();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar("True or False"),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 5,
              child: Center(
                child: Text(quizBrain.getQuestionText(),
                    textAlign: TextAlign.center,
                    style: GoogleFonts.raleway(fontSize: 25)),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  checkAnswer(true);
                },
                child: Container(
                  color: Colors.green,
                  child: Center(
                    child: Text('Richtig',
                        style: GoogleFonts.raleway(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w700)),
                  ),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  checkAnswer(false);
                },
                child: Container(
                  color: Colors.red,
                  child: Center(
                    child: Text('Falsch',
                        style: GoogleFonts.raleway(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w700)),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              child: Row(
                children: scoreKeeper,
              ),
            )
          ],
        ));
  }
}
