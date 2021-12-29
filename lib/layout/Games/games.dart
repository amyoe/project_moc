//Amy Oevermann
import 'package:project_moc/layout/Games/Memorie/memory.dart';
import 'package:project_moc/layout/Games/True_False/true_false_game.dart';
import 'package:project_moc/layout/Games/tic_tac_toe.dart';
import 'package:project_moc/layout/widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Quizduell/quizduell_choice.dart';
import 'package:flutter/cupertino.dart';

class GamesChoice extends StatefulWidget {
  const GamesChoice({Key? key}) : super(key: key);

  @override
  State<GamesChoice> createState() => _GamesChoiceSate();
}

class _GamesChoiceSate extends State<GamesChoice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar("Spiele"),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/wuerfel.png"),
                fit: BoxFit.fitWidth)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => QuizDuellChoice()),
                    );
                  },
                  child: Text("Quiz Duell",
                      style: GoogleFonts.raleway(fontSize: 20)),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Memorie()),
                    );
                  },
                  child:
                      Text("Memorie", style: GoogleFonts.raleway(fontSize: 20)),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TicToc()),
                    );
                  },
                  child: Text("Tic Tac Toe",
                      style: GoogleFonts.raleway(fontSize: 20)),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Quizzler()),
                    );
                  },
                  child: Text("True or False",
                      style: GoogleFonts.raleway(fontSize: 20)),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
