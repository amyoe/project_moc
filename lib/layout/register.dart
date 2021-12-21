//Amy Oevermann
import 'package:flutter/material.dart';
import 'package:project_moc/layout/widget.dart';
import 'package:project_moc/services/auth.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final authService = Provider.of<AuthService>(context);
    return Scaffold(
      appBar: customAppBar("Registrieren"),
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
            onPressed: () async {
             await authService.createUserWithEmailAndPassword(
                  emailController.text,
                  passwordController.text,
              );
             Navigator.pop(context);
            },
            child: Text("Registieren"),
          ),
        ],
      ),
    );
  }
}