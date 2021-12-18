//Amy Oevermann
// Funktion für die Fragen
// Das Model besteht aus Frage, richtiger Antwort und falscher Antwort
// So muss das auch hier dem Model übergeben werden

import 'package:project_moc/model/quizmodel.dart';

QuizModel loadQuestion(int questionIndex){
  List<QuizModel> questionList = [QuizModel(
      "Das flächenmäßig kleinste Bundesland in DE heißt?", "Bremen", ["Nrw","Hamburg","Berlin"]),

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