//Amy Oevermann
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_moc/layout/reset_password.dart';
import 'package:project_moc/layout/widget.dart';
import 'package:project_moc/services/auth.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final authService = Provider.of<AuthService>(context);
    final auth = FirebaseAuth.instance;
    String email = "";

    return Scaffold(
      appBar: customAppBar("Login"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Willkommen zu deinem Ersti-Buddy",
              style: GoogleFonts.raleway(fontSize: 22)),
          const SizedBox(
            height: 24,
          ),
          Image.asset(
            'assets/images/study_buddy.png',
            height: 180,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: "E-Mail",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                labelText: "Passwort",
              ),
              obscureText: true,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          ElevatedButton(
            onPressed: () {
              authService.signInWithEmailAndPassword(
                emailController.text,
                passwordController.text,
              );
            },
            child: const Text("Login"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/register');
            },
            child: const Text("Registieren"),
          ),
          TextButton(
            onPressed: () {
             //auth.sendPasswordResetEmail(email: email);
             // Navigator.of(context).pop;
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ResetScreen()),
              );
            },
            child: const Text("Passwort zurücksetzen"),
          ),
        ],
      ),
    );
  }
}
