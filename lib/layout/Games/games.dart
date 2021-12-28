//Amy Oevermann
import 'package:project_moc/layout/Games/Memorie/memory.dart';
import 'package:project_moc/layout/Games/tictoc.dart';
import 'package:project_moc/layout/widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Quizduell/quizduell_choice.dart';

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
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => QuizDuellChoice()),
                    );
                  },
                  child: Text("QuizDuell",
                      style: GoogleFonts.raleway(fontSize: 18)),
                ),
                const SizedBox(
                  height: 24,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Memorie()),
                    );
                  },
                  child:
                      Text("Memorie", style: GoogleFonts.raleway(fontSize: 18)),
                ),
                const SizedBox(
                  height: 24,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TicToc()),
                    );
                  },
                  child: Text("Tic Tac Toe",
                      style: GoogleFonts.raleway(fontSize: 18)),
                ),
                const SizedBox(
                  height: 24,
                ),
                const ElevatedButton(
                  onPressed: null,
                  child: Text("Stadt-Land-Fluss"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
