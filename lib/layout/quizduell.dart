import 'package:project_moc/logic/questions.dart';
import 'package:project_moc/layout/widget.dart';
import 'package:flutter/material.dart';
import 'package:project_moc/layout/profil.dart';
import 'package:project_moc/model/quizmodel.dart';

class QuizDuell extends StatefulWidget{
  const QuizDuell({Key? key}) : super(key: key);

  @override
  State<QuizDuell> createState() => _QuizDuellSate();
}


class _QuizDuellSate extends State<QuizDuell> {

  late QuizModel currentQuestion;
  @override
  void initState() {
    currentQuestion = loadQuestion(1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar("Quizduell Fragen"),
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  currentQuestion.question,
                ),
                answerCard(loadQuestion(1).correctAnswer),
              ],
            ),
          ),
        ),
      ),
    );
  }
}