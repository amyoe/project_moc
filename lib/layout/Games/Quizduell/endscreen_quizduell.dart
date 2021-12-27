//Amy Oevermann
//Der Screen soll die Punkte anzeigen, wenn das Spiel beendet wurde
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_moc/layout/Games/Quizduell/quizduell.dart';
import 'package:project_moc/layout/widget.dart';

import '../../homescreen.dart';
class EndScreen extends StatelessWidget {
  final int userPoints;
  const EndScreen({Key? key, required this.userPoints}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar("Dein Punktestand"),
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Super, du hast " + userPoints.toString() + " von 10 Fragen richtig beantwortet.",
                  style: GoogleFonts.raleway(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const QuizDuell()),
                  );
                  },
                      child: Text("Nochmal spielen"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const HomeScreen()),
                      );
                    },
                    child: Text("Zurück zum Hauptmenü"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
