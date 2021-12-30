//Amy Oevermann
// Klasse, in der die Allgemeinen Fragen angezeigt werden
class QuizModel {
  String question;
  String correctAnswer;
  List<String> wrongAnswers;

  QuizModel(this.question, this.correctAnswer, this.wrongAnswers);
}

//Klasse für die Wirtschaftinformatik Fragen
class QuizCompanyModel {
  String companyQuestion;
  String companyCorrectAnswer;
  List<String> companyWrongAnswers;

  QuizCompanyModel(this.companyQuestion, this.companyCorrectAnswer, this.companyWrongAnswers);
}