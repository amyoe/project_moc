//Der Screen soll die Punkte anzeigen, wenn das Spiel beendet wurde
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_moc/layout/widget.dart';

class EndScreen extends StatelessWidget {
  final int userPoints;
  const EndScreen({Key? key, required this.userPoints}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar("Dein Punktestand"),
      body: Text("Hallo du hast " + userPoints.toString() + " von 10 Fragen richtig beantwortet." ),
    );
  }
}
