//Amy Oevermann
import 'package:google_fonts/google_fonts.dart';
import 'package:project_moc/logic/question_controller.dart';
import 'package:project_moc/logic/questions.dart';
import 'package:project_moc/layout/widget.dart';
import 'package:flutter/material.dart';
import 'package:project_moc/model/quizmodel.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'endscreen_quizduell.dart';
import 'package:flutter/cupertino.dart';

class QuizDuell extends StatefulWidget{
  const QuizDuell({Key? key}) : super(key: key);

  @override
  State<QuizDuell> createState() => _QuizDuellSate();
}

class _QuizDuellSate extends State<QuizDuell> {

  int currentLevel = 1;
  int userPoints = 0;
  late QuizModel currentQuestion;
  late List<String> answers;
  late List<int> questionIndex;
  List<bool?> answerValidation = [null, null, null, null];

  @override
  void initState() {
    super.initState();
    questionIndex = getQuestionIndexRandom(10);
    loadNewQuestion();
  }

  loadNewQuestion() {
    setState(() {
      currentQuestion = loadQuestion(questionIndex[currentLevel - 1]);
      answers = getQuestionRandomList(currentQuestion.wrongAnswers, currentQuestion.correctAnswer);
      answerValidation = [null, null, null, null];
    });
  }

  validateAndShowAnswers(int userAnswerIndex) async {
    setState(() {
      int correctIndex = getCorrectAnswerIndex(answers, currentQuestion.correctAnswer);
      answerValidation[correctIndex] = true;
      if(userAnswerIndex == correctIndex ){
        userPoints++;
      } else {
        answerValidation[userAnswerIndex] = false;
      }
    });
    //Neue Fragen wird nach 2 Sekunden geladen, solange das Level nicht größer als 10 ist
    await Future.delayed(Duration(seconds: 2));
    currentLevel++;
    if (currentLevel<=10) {
      loadNewQuestion();
    } else{
        Navigator.push(context,
                      MaterialPageRoute(builder: (context) => EndScreen(userPoints: this.userPoints,)));
    }
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
                Spacer(),
                StepProgressIndicator(
                  totalSteps: 10,
                  currentStep: currentLevel,
                  selectedColor: Colors.green,
                  unselectedColor: Colors.grey,
                ),
                Spacer(),
                Text(
                  currentQuestion.question,
                  style: GoogleFonts.raleway(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                Spacer(),
                Text("Punkte: "+ userPoints.toString(),
                  style: GoogleFonts.raleway(fontSize: 20),
                  ),
                Spacer(),
                GestureDetector(
                  child:answerCard(answers[0], answer: answerValidation[0]),
                  onTap:(){
                  validateAndShowAnswers(0);
                },),
                GestureDetector(
                  child:answerCard(answers[1], answer: answerValidation[1]),
                  onTap:(){
                  validateAndShowAnswers(1);
                },),
                GestureDetector(
                  child:answerCard(answers[2], answer: answerValidation[2]),
                  onTap:(){
                  validateAndShowAnswers(2);
                },),
                GestureDetector(
                  child:answerCard(answers[3], answer: answerValidation[3]),
                  onTap:(){
                  validateAndShowAnswers(3);
                },),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}