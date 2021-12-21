//Amy Oevermann
// Klasse, in der die Fragen angezeigt werden
class QuizModel {
  String question;
  String correctAnswer;
  List<String> wrongAnswers;

  QuizModel(this.question, this.correctAnswer, this.wrongAnswers);
}

//Klasse für die Unternehmensfragen
class QuizCompanyModel {
  String companyQuestion;
  String companyCorrectAnswer;
  List<String> companyWrongAnswers;

  QuizCompanyModel(this.companyQuestion, this.companyCorrectAnswer, this.companyWrongAnswers);
}