import 'package:project_moc/layout/Games/Quizduell/quizduell.dart';
import 'package:project_moc/layout/Games/Quizduell/quizduell_company.dart';
import 'package:project_moc/layout/widget.dart';
import 'package:flutter/material.dart';

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
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const QuizDuell()),
                      );
                    },
                    child: Text("Kategorie Allgemein"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const QuizDuellCompany()),
                    );
                  },
                  child: Text("Kategorie Company"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}