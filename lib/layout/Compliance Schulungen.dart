
import 'package:project_moc/layout/widget.dart';
import 'package:flutter/material.dart';
import 'package:project_moc/layout/games.dart';


class ComplianceOverview extends StatefulWidget {
  const ComplianceOverview({Key? key}) : super (key: key);

  @override
  State<ComplianceOverview> createState() => _ComplianceOverviewState();
}

class _ComplianceOverviewState extends State<ComplianceOverview> {

  int brandschutzLevel = 0;
  int sozialLevel = 0;
  int gesundheitsLevel = 0;
  int maxBrandschutzLevel = 0;
  int maxSozialLevel = 0;
  int maxGesundheitsLevel = 0;


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
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: const Text("Brandschutz"),
                )
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const GamesChoice()),
                );
              },
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: const Text("Gesundheitsschutz"),
                ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const GamesChoice()),
                );
              },
              child: Align(
                alignment: Alignment.centerLeft,
                child: const Text("Service- und Sozialangebote"),
              ),
            ),
          ],
    ),
    ),
    );
  }
}
