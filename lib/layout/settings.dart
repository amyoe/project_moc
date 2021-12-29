//Amy Oevermann
import 'package:google_fonts/google_fonts.dart';
import 'package:project_moc/layout/widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isSwitched = false;
  bool isSwitchedEvent = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar("Einstellungen"),
      body: Container(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Icon(
                    FontAwesomeIcons.user,
                    color: Colors.lightBlue,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Account",
                    style: GoogleFonts.raleway(fontSize: 22),
                  ),
                ],
              ),
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Nutzungsbedingungen"),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text("1. Allgemeine Geschätsbedingungen \n"
                                    "2. Ermittlung persönlicher Daten \n"
                                    "3. Haftung"),
                              ],
                            ),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text("Schließen")),
                            ],
                          );
                        });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Nutzungsbedingungen",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Icon(
                  FontAwesomeIcons.arrowRight,
                  color: Colors.grey,
                ),
              ],
            ),
            buildAccountOptionRow(context, "Feedback senden"),
            buildAccountOptionRow(context, "Sprache ändern"),
            buildAccountOptionRow(context, "Einen Verstoß melden"),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Icon(
                    FontAwesomeIcons.volumeUp,
                    color: Colors.lightBlue,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Notification",
                    style: GoogleFonts.raleway(fontSize: 22),
                  ),
                ],
              ),
            ),
            Divider(height: 15, thickness: 2),
            Padding(
              padding: EdgeInsets.only(top: 7.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Neuigkeiten",
                    style: GoogleFonts.raleway(fontSize: 18),
                  ),
                  Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Neues Ereignis",
                      style: GoogleFonts.raleway(fontSize: 18)),
                  Switch(
                    value: isSwitchedEvent,
                    onChanged: (value) {
                      setState(() {
                        isSwitchedEvent = value;
                      });
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Account Optionen ausgelagert, damit man nur einmal schreiben muss und nicht doppelt
GestureDetector buildAccountOptionRow(BuildContext context, String title) {
  return GestureDetector(
    onTap: () {
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(title),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Option 1"),
                  Text("Option 2"),
                  Text("Option 3"),
                ],
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("Schließen")),
              ],
            );
          });
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          Icon(
            FontAwesomeIcons.arrowRight,
            color: Colors.grey,
          ),
        ],
      ),
    ),
  );
}
