//Amy Oevermann
// Funktion für die Fragen
// Das Model besteht aus Frage, richtiger Antwort und falscher Antwort
// Diese Reihenfolge muss in der Funktion bestehen bleiben
import 'package:project_moc/model/quizmodel.dart';

QuizModel loadQuestion(int questionIndex){
  List<QuizModel> questionList = [
    QuizModel(
      "Wie viele Fakultäten hat die Hochschule Hannover?", "5", ["6","4","7"]),

    QuizModel(
        "Welcher Studiengang ist nicht an der Fak. 4?", "Maschinenbau", ["BWL","IBS","Informatik"]),

    QuizModel(
        "Welches Modul gibt es in Wirtschaftsinformatik nicht?", "Leadership Management", ["Wirtschaftsmathe","Data Mining","Mobile Computing"]),

    QuizModel(
        "Wie viele Semester studiert man IBS an der HSH?", "8", ["7","6","Gibt es gar nicht."]),

    QuizModel(
        "Wo ist kein Standort der Hoschule Hannover?", "Herrenhausen", ["Ahlem","Kleefeld","Expo Plaza"]),

    QuizModel(
        "Wann ist Semesterbeginn bei den Verwaltungsinformatik?", "Wintersemester", ["Sommersemester","Beides","Jedes ungerade Jahr"]),

    QuizModel(
        "Welchen Studiengang kann man Berufsbegleitend studieren?", "Heilpädagogik", ["Produktdesgin","Modedesign","Mechatronik"]),

    QuizModel(
        "Was studieren wir?", "Wirtschaftsinformatik", ["BWL","Mathe","Lehramt"]),

    QuizModel(
        "Wie viele Studiengänge gibt es an der HSH?", "64", ["59","69","71"]),

    QuizModel(
        "Wie viele Studierende gibt es insgesamt an der HSH?", "9744", ["8432","10012","8999"]),
  ];
  return questionList[questionIndex];
}

//Quizduell Fragen für Hochschule
QuizCompanyModel loadQuestionCompany(int questionCompanyIndex){
  List<QuizCompanyModel> questionCompanyList = [QuizCompanyModel(
      "Wie viele Semster studieren wir?", "7", ["6","5","6 1/2"]),

    QuizCompanyModel(
        "In welchem Modul muss man einen Einstufungstest machen?", "Englisch", ["Wirtschaftsmathe","BWL 2","IM Projekt"]),

    QuizCompanyModel(
        "Wer ist neuer Dozent in Informationsmanagement?", "Mengelkamp", ["Disterer","Neumann","Fels"]),

    QuizCompanyModel(
        "Wie viele Semester beinhaltet der 1. Studienabschnitt?", "3", ["4","2","5"]),

    QuizCompanyModel(
        "In welchem Semester absolviert man das Praktikum?", "7", ["6","4 & 7","5"]),

    QuizCompanyModel(
        "Wie lang soll das Pflichtpraktikum sein?", "19 Wochen", ["3 Monate","Kommt drauf an","10 Wochen"]),

    QuizCompanyModel(
        "Wie viele Module muss man im Schwerpunkt belegen?", "4", ["5","3","6"]),

    QuizCompanyModel(
        "Wie viele Schwerpunkte haben wir?", "4", ["3","5","7"]),

    QuizCompanyModel(
        "Aus wie vielen Modulen besteht BWL 3?", "3", ["2","4","1"]),

    QuizCompanyModel(
        "Wie viele Ergänzungsmodule muss man belegen?", "5", ["4","3","6"]),
  ];
  return questionCompanyList[questionCompanyIndex];
}