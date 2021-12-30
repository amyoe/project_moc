import 'package:project_moc/layout/widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilScreen extends StatefulWidget {
  @override
  _ProfilScreenState createState() => _ProfilScreenState();
}

class _ProfilScreenState extends State<ProfilScreen> {
  void initState() {
    super.initState();
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar("Dein Benutzerprofil"),
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 48),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Image.asset(
                    'assets/images/teamwork.png',
                    width: 125,
                    height: 125,
                  ),
                  const SizedBox(height: 24),
                  TextFormField(
                    style: GoogleFonts.raleway(fontSize: 16),
                    keyboardType: TextInputType.text,
                    autocorrect: false,
                    decoration: const InputDecoration(
                      labelText: 'Dein Name',
                      border: OutlineInputBorder(),
                    ),
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'Bitte gib deinen Namen ein';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    style: GoogleFonts.raleway(fontSize: 16),
                    keyboardType: TextInputType.datetime,
                    decoration: const InputDecoration(
                      labelText: 'Dein Geburtstag',
                      hintText: 'tt/mm/yyyy',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    style: GoogleFonts.raleway(fontSize: 16),
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      labelText: 'E-Mail',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    style: GoogleFonts.raleway(fontSize: 16),
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Passwort',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    style: GoogleFonts.raleway(fontSize: 16),
                    maxLines: 5,
                    maxLength: 120,
                    decoration: const InputDecoration(
                      hintText: 'Über Dich',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.grey,
                            textStyle: TextStyle(color: Colors.white)),
                        onPressed: () {
                          // reset() setzt alle Felder wieder auf den Initalwert zurück.
                          _formKey.currentState!.reset();
                        },
                        child: const Text('Löschen'),
                      ),
                      const SizedBox(width: 24),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            textStyle: const TextStyle(color: Colors.white)),
                        onPressed: () {
                          // Wenn alle Validatoren der Felder gültig sind.
                          if (_formKey.currentState!.validate()) {
                            print("Deine Eingaben sind gültig");
                          } else {
                            print("Deine Eingaben sind nicht gültig");
                          }
                        },
                        child: const Text('Speichern'),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
