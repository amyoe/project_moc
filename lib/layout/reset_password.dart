//Amy Oevermann
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_moc/layout/widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class ResetScreen extends StatefulWidget {
  @override
  _ResetScreenState createState() => _ResetScreenState();
}

class _ResetScreenState extends State<ResetScreen> {
  String email = "";

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    String email = this.email;

    final auth = FirebaseAuth.instance;

    return Scaffold(
      appBar: customAppBar("Zurücksetzen"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Gib deine E-Mail Adresse ein, um dein Passwort zurückzusetzen",
            style: GoogleFonts.raleway(fontSize: 20),
            textAlign: TextAlign.center),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: "Email",
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              auth.sendPasswordResetEmail(email: email);
              Navigator.of(context).pop;
            },
            child: Text("Passwort zurücksetzen"),
          ),
        ],
      ),
    );
  }
}
