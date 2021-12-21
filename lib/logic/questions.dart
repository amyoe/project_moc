//Amy Oevermann
// Funktion für die Fragen
// Das Model besteht aus Frage, richtiger Antwort und falscher Antwort
// So muss das auch hier dem Model übergeben werden
import 'package:project_moc/model/quizmodel.dart';

QuizModel loadQuestion(int questionIndex){
  List<QuizModel> questionList = [QuizModel(
      "Das flächenmäßig kleinste Bundesland in Deutschland heißt?", "Bremen", ["Nrw","Hamburg","Berlin"]),

    QuizModel(
        "Wer hat die Mona Lisa gemalt?", "Da Vinci", ["Goethe","Van Gogh","Picasso"]),

    QuizModel(
        "Wer wird neuer Bundeskanzler?", "Scholz", ["Baerbock","Lindner","Merkel"]),

    QuizModel(
        "Was ist die Hauptstadt von Spanien?", "Madrid", ["Köln","Barcelona","Paris"]),

    QuizModel(
        "Wo liegt New York?", "USA", ["Australien","Mexico","China"]),

    QuizModel(
        "Was ist mein Lieblingshaustier?", "Hund", ["Katze","Hase","Hamster"]),

    QuizModel(
        "Wie viele Jahreszeiten gibt es?", "4", ["2","3","6"]),

    QuizModel(
        "Was studieren wir?", "Wirtschaftsinformatik", ["BWL","Mathe","Lehramt"]),

    QuizModel(
        "Ich mag...", "Sommer", ["Kekse","Schnee","Glühwein"]),

    QuizModel(
        "YouTube ist eine ... ", "Plattform", ["Suchmaschine","Schule","Online Shop"]),
  ];
  return questionList[questionIndex];
}

//Quizduell Fragen für Company Kategorie
QuizCompanyModel loadQuestionCompany(int questionCompanyIndex){
  List<QuizCompanyModel> questionCompanyList = [QuizCompanyModel(
      "In welcher Branche sind wir tätig?", "IT", ["Gesundheit","Mode","Finanzen"]),

    QuizCompanyModel(
        "Wie viele Standorte weltweit haben wir", "9", ["5","8","6"]),

    QuizCompanyModel(
        "Wann wurde das Unternehmen gegründet?", "1997", ["2012","2000","2001"]),

    QuizCompanyModel(
        "Wie viele Mitarbeiter haben wir?", "578", ["100","90","600"]),

    QuizCompanyModel(
        "Wo ist unser Hauptstandort?", "Berlin", ["Hannover","Barcelona","Mailand"]),

    QuizCompanyModel(
        "Sind Hunde bei uns im Büro erlaubt?", "Ja", ["Nein","Kommt drauf an","Ja, mit Absprache"]),

    QuizCompanyModel(
        "Welche Abteilung ist die lustigste?", "Marketing", ["IT","Buchhaltung","HR"]),

    QuizCompanyModel(
        "Welchen Online Kanal haben wir nicht?", "Tik Tok", ["Instagram","LinkedIn","Facebook"]),

    QuizCompanyModel(
        "Wo eröffnen wir unseren nächsten Standort?", "München", ["Dortmund","Hamburg","Leipzig"]),

    QuizCompanyModel(
        "Was sind unsere Jahresziele?", "Umsatz verdoppeln", ["Weiter wachsen","Mehr Produzieren","Kosten sparen"]),
  ];
  return questionCompanyList[questionCompanyIndex];
}