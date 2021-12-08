import 'package:project_moc/layout/games.dart';
import 'package:project_moc/layout/widget.dart';
import 'package:flutter/material.dart';
import 'package:project_moc/layout/homescreen.dart';

class ProfilScreen extends StatefulWidget {
  @override
  _ProfilScreenState createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar("Dein Benutzerprofil"),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Dein Profil',
              style: TextStyle(
                fontFamily: "Roboto",
                fontSize: 20,
              ),
            ),
            Image.asset('assets/images/teamwork.png',
              width: 100,
              height: 100,
            ),
            const ElevatedButton(
              onPressed:null,
              child: Text("Benutzername"),
            ),
            const ElevatedButton(
              onPressed:null,
              child: Text("Organisationsposition"),
            ),
            ElevatedButton(
              onPressed:(){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const GamesChoice()),
                );
              },
              child: const Text("Kollegen einladen"),
            ),
            ElevatedButton(
              onPressed:(){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const GamesChoice()),
                );
              },
              child: const Text("Statistik"),
            ),
          ],
        ),
      ),
    );
  }
}




