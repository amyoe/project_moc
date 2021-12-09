
import 'package:project_moc/layout/widget.dart';
import 'package:flutter/material.dart';
import 'package:project_moc/layout/games.dart';


class ComplianceOverview extends StatelessWidget {
  const ComplianceOverview({Key? key}) : super (key: key);

  @override
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar("Meine Schulungen"),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GamesChoice()),
                  );
                },
                child: const Text("Brandschutz"),
            ),
          ],
    ),
    ),
    );
  }
}
