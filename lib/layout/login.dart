//Amy Oevermann
import 'package:flutter/material.dart';
import 'package:project_moc/layout/widget.dart';
import 'package:project_moc/model/user.dart';
import 'package:project_moc/services/auth.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final authService = Provider.of<AuthService>(context);
    final auth = FirebaseAuth.instance;

    return Scaffold(
      appBar: customAppBar("Login"),
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
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: "Passwort",
              ),
              obscureText: true,
            ),
          ),
          ElevatedButton(
              onPressed: (){
                authService.signInWithEmailAndPassword(
                    emailController.text,
                    passwordController.text,
                );
              },
              child: Text("Login"),
          ),
          ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, '/register');
              },
              child: Text("Registieren"),
          ),
          TextButton(
            onPressed: (){
             // auth.sendPasswordResetEmail(email: OurUser.email);
              Navigator.of(context).pop;
            },
            child: Text("Password zurücksetzen"),
          ),
        ],
      ),
    );
  }
}