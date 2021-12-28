// Franziska Petzold
import 'package:project_moc/model/true_false_questions.dart';

class QuizBrain {
  int _count = 0;

  List<Question> _questionBank = [
    Question(
        questionText:
            '"Customer Relationship Management" ist ein Schwerpunktmodul.',
        questionAnswer: true),
    Question(
        questionText:
            'Die Abteilung Wirtschaftsinformatik gehört zur Fakultät III.',
        questionAnswer: false),
    Question(
        questionText:
            'Software Engineering ist ein Pflichtmodul aus dem 2. Studienabschnitt.',
        questionAnswer: true),
    Question(questionText: 'Programmieren ist für das 2. Semester vorgesehen.', questionAnswer: false),
    Question(
        questionText: 'Im 2. Studienabschnitt müssen ingsesamt 4 Ergänzungsmodule belegt werden.',
        questionAnswer: false),
    Question(
        questionText: 'Der AStA ist die Interessenvertretung der Studierenden.',
        questionAnswer: true),
    Question(
        questionText:
            'Die Studierenden der HsH werden auch Alumni genannt.',
        questionAnswer: false),
    Question(
        questionText:
            'Ein Fachschaftsrat ist die Interessenvertretung der Studierenden einer Fakultät.',
        questionAnswer: true),
    Question(
        questionText:
            'Für den Studiengang Wirtschaftsinformatik sind 6 Semester Regelstudienzeit vorgesehen.',
        questionAnswer: false),
    Question(
        questionText:
            'Das höchste studentische Gremium ist das Studierendenparlament – kurz StuPa.',
        questionAnswer: true),
    Question(
        questionText: 'Herr Prof. Dr. Michael Clasen ist Studiendekan für die Abteilung Wirtschaftsinformatik.',
        questionAnswer: true),
    Question(
        questionText:
            'Die Bachelor-Arbeit im Bereich der Wirtschaftsinformatik  wird i. d. R. im 7. Semester geschrieben.',
        questionAnswer: true),
    Question(
        questionText:
            'BWL 2 ist eine Modulprüfung und besteht aus 2 Teilmodulen.',
        questionAnswer: false),
  ];

  int isFinished() {
    if (_count == 12) {
      return 1;
    }
    return 0;
  }

  void nextQuestion() {
    if (_count < _questionBank.length - 1) {
      _count++;
    } else {
      _count = 0;
    }
  }

  String getQuestionText() {
    return _questionBank[_count].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_count].questionAnswer;
  }
}
