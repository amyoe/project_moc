//Amy Oevermann
import 'package:google_fonts/google_fonts.dart';
import 'package:project_moc/layout/Compliance/compliance_schulungen.dart';
import 'package:project_moc/layout/links.dart';
import 'package:project_moc/layout/profil.dart';
import 'package:project_moc/layout/settings.dart';
import 'package:project_moc/layout/widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_moc/layout/Games/games.dart';
import 'package:project_moc/services/auth.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    return Scaffold(
      appBar: customAppBar("Dein Ersti-Buddy"),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MyStatefulWidget(),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const GamesChoice()),
                );
              },
              child: Text("Spielauswahl",
                  style: GoogleFonts.raleway(fontSize: 18)),
            ),
            const SizedBox(
              height: 12,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const links()),
                );
              },
              child: Text("Nützliche Links",
                  style: GoogleFonts.raleway(fontSize: 18)),
            ),
            const SizedBox(
              height: 12,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ComplianceOverview()),
                );
              },
              child: Text("Compliance Schulung",
                  style: GoogleFonts.raleway(fontSize: 18)),
            ),
            const SizedBox(
              height: 60,
            ),
            ElevatedButton(
              onPressed: () async {
                await authService.signOut();
              },
              child:
                  Text("Ausloggen", style: GoogleFonts.raleway(fontSize: 18)),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: const Icon(
              FontAwesomeIcons.cog,
              size: 30,
              color: Colors.blueGrey,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Settings()),
              );
            },
          ),
          Text(
            'Willkommen!',
            style: GoogleFonts.raleway(fontSize: 30),
          ),
          IconButton(
            icon: const Icon(
              FontAwesomeIcons.user,
              size: 30,
              color: Colors.blueGrey,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilScreen()),
                //MaterialPageRoute(builder: (context)=> EditProfil()),
              );
            },
          ),
        ],
      ),
    );
  }
}
