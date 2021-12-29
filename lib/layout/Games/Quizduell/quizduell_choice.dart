//Amy Oevermann
import 'package:google_fonts/google_fonts.dart';
import 'package:project_moc/layout/Games/Quizduell/quizduell.dart';
import 'package:project_moc/layout/Games/Quizduell/quizduell_company.dart';
import 'package:project_moc/layout/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class QuizDuellChoice extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar("Kategorie"),
      body: Container(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(),
                Text("Wähle eine Kategorie aus",
                  style: GoogleFonts.raleway(fontSize: 20),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const QuizDuell()),
                        );
                      },
                      child: Text("Allgemein"),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const QuizDuellCompany()),
                    );
                  },
                  child: Text("Wirtschaftsinformatik"),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}