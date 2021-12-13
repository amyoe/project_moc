// Franziska Petzold

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project_moc/layout/MemorieProfil.dart';
import 'package:project_moc/layout/Schwierigkeitsstufe.dart';
import 'package:project_moc/layout/widget.dart';

class WelcomeMemorie extends StatelessWidget {
  const WelcomeMemorie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar("Kollegen-Memorie"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hey <Vorname>,"),
            // <Vorname> durch Variable ersetzen
            Text("hier kannst Du spielerisch Deine Kollegen kennenlernen."),
            const SizedBox(height: 48),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Schwierigkeit()),
                  );
                },
                child: Text("Spiel Starten")),
            const SizedBox(height: 24),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MemorieProfil()),
                  );
                },
                child: Text("Memorie-Profil")),
          ],
        ),
      ),
    );
  }
}
