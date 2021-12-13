// Franziska Petzold

import 'package:flutter/material.dart';
import 'package:project_moc/layout/widget.dart';

class Schwierigkeit extends StatelessWidget {
  const Schwierigkeit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar("Kollegen-Memorie"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Wähle den gewünschten Schwierigkeitsgrad"),
            const SizedBox(height: 48),
            ElevatedButton(onPressed: null, child: Text("Leicht")),
            const SizedBox(height: 24),
            ElevatedButton(onPressed: null, child: Text("Schwer")),
          ],
        ),
      ),
    );
  }
}
