import 'package:project_moc/layout/Compliance/Compliance%20Schulungen.dart';
import 'package:project_moc/layout/profil.dart';
import 'package:project_moc/layout/settings.dart';
import 'package:project_moc/layout/widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_moc/layout/Games/games.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar("Willkommen"),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MyStatefulWidget(),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const GamesChoice()),
                );
              },
              child: const Text("Spielauswahl"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const GamesChoice()),
                );
              },
              child: const Text("Meine Organisation"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ComplianceOverview()),
                );
              },
              child: const Text("Compliance Schulung"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const GamesChoice()),
                );
              },
              child: const Text("Monatsranking"),
            ),
          ],
        ),
      ),
    );
  }
}

// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
          icon: const Icon(
            FontAwesomeIcons.cog,
            size: 40,
            color: Colors.blueGrey,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Settings()),
            );
          },
        ),
        const Text(
          'Hallo User!',
          style: TextStyle(
            fontFamily: "Roboto",
            fontSize: 20,
          ),
        ),
        IconButton(
          icon: const Icon(
            FontAwesomeIcons.user,
            size: 40,
            color: Colors.blueGrey,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfilScreen()),
            );
          },
        ),
      ],
    );
  }
}
