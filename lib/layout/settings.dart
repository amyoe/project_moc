//Amy Oevermann
import 'package:project_moc/layout/widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State <Settings> {

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
                children:[
                  Icon(FontAwesomeIcons.user, color: Colors.orange,
                  ),
                  SizedBox(width: 8,),
                  Text("Account",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Divider(height: 15, thickness: 2,
            ),
            SizedBox(
              height: 10,
            ),
            buildAccountOptionRow(context, "Password ändern"),
            buildAccountOptionRow(context, "Sprache ändern"),
            buildAccountOptionRow(context, "Einen Verstoß melden"),
            buildAccountOptionRow(context, "Nutzungsbedinungen"),
            SizedBox( height: 40,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children:[
                  Icon(FontAwesomeIcons.volumeUp, color: Colors.orange,
                  ),
                  SizedBox(width: 8,),
                  Text("Notification",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Divider(height: 15, thickness: 2,),
            SizedBox(height: 10,),
            buildNotificationOptionRow("Neues für dich", true),
            buildNotificationOptionRow("Account Activitäten", true),
            buildNotificationOptionRow("Gruppenbenachrichtigungen", false),
          ],
        ),
      ),
    );
  }
}
// Account Optionen ausgelagert, damit man nur einmal schreiben muss und nicht doppelt
GestureDetector buildAccountOptionRow (BuildContext context, String title){
  return GestureDetector(
    onTap: (){
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
          }
      );
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.grey[600],
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

// Benachrichtigungsoptionen ausgelagert, damit man es nur einmal schreiben muss
Row buildNotificationOptionRow(String title, bool isActive) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(title,
        style: TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey[600]
        ),
      ),
      Switch(value: isActive, onChanged: (bool val){},),
    ],
  );
}