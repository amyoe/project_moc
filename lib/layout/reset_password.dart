import 'package:flutter/material.dart';
import 'package:project_moc/layout/widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:project_moc/model/user.dart';
import 'package:project_moc/services/auth.dart';


class ResetScreen extends StatefulWidget {

@override
_ResetScreenState createState() => _ResetScreenState();
}

class _ResetScreenState extends State<ResetScreen> {
  //String get email => null;

@override
Widget build(BuildContext context) {
  final TextEditingController emailController = TextEditingController();
 // String email = this.email;
  //, password;
  final auth = FirebaseAuth.instance;

  return Scaffold(
    appBar: customAppBar("Password zurücksetzen"),
    body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
              onPressed: (){
              //auth.sendPasswordResetEmail(email: email);
              Navigator.of(context).pop;
              },
              child: Text("Password zurücksetzen"),
          ),
  ],
  ),
  );
}
}