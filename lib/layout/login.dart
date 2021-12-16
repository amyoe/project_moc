import 'package:flutter/material.dart';
import 'package:project_moc/layout/widget.dart';
import 'package:project_moc/services/auth.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    final authService = Provider.of<AuthService>(context);

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
        ],
      ),
    );
  }


}