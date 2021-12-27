import 'package:flutter/cupertino.dart';
import 'package:project_moc/layout/widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:project_moc/storage/database.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project_moc/model/user.dart';
import 'package:project_moc/storage/database.dart';

class EditProfil extends StatefulWidget {
  const EditProfil({Key? key}) : super(key: key);

  @override
  _EditProfilState createState() => _EditProfilState();
}

class _EditProfilState extends State<EditProfil> {
 void connectToFirebase() async {
  //  final FirebaseAuth authenticate = FirebaseAuth.instance;
   // AuthResult result = await authenticate.signInWithEmailAndPassword(
     //   email: email, password: password);
    //OurUser = result.OurUser;
    
   // database = DatabaseService(OurUser.uid);
  }

  void initState() {
    super.initState();
   connectToFirebase();
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
                  SizedBox(height: 24),
                  TextFormField(
                    style: GoogleFonts.raleway(fontSize: 16),
                    keyboardType: TextInputType.text,
                    autocorrect: false,
                    decoration: const InputDecoration(
                      labelText: 'Dein Vorname',
                      border: OutlineInputBorder(),
                    ),
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'Bitte gib deinen Vornamen ein';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 24),
                  TextFormField(
                    style: GoogleFonts.raleway(fontSize: 16),
                    keyboardType: TextInputType.text,
                    autocorrect: false,
                    decoration: const InputDecoration(
                      labelText: 'Dein Nachname',
                      border: OutlineInputBorder(),
                    ),
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'Bitte gib deinen Nachnamen ein';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 12),
                  TextFormField(
                    style: GoogleFonts.raleway(fontSize: 16),
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                      labelText: 'Dein Geburtstag',
                      hintText: 'tt/mm/yyyy',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 12),
                  TextFormField(
                    style: GoogleFonts.raleway(fontSize: 16),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'E-Mail',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 12),
                  TextFormField(
                    style: GoogleFonts.raleway(fontSize: 16),
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Passwort',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 12),
                  TextFormField(
                    style: GoogleFonts.raleway(fontSize: 16),
                    maxLines: 5,
                    maxLength: 120,
                    decoration: InputDecoration(
                      hintText: 'Über Dich',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 12),
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
                        child: Text('Löschen'),
                      ),
                      SizedBox(width: 24),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            textStyle: TextStyle(color: Colors.white)),
                        onPressed: () {
                          // Wenn alle Validatoren der Felder gültig sind.
                          if (_formKey.currentState!.validate()) {
                            print("Deine Eingaben sind gültig");
                          } else {
                            print("Deine Eingaben sind nicht gültig");
                          }
                        },
                        child: Text('Speichern'),
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
