import 'package:flutter/material.dart';
import 'package:project_moc/layout/register.dart';
import 'package:project_moc/layout/widget.dart';

import 'homescreen.dart';
import 'login.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar("Herzlich Willkommen"),
      body: Container(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const LoginScreen()),
                      );
                    },
                    child: Text("Sich einloggen"),
                ),
                ElevatedButton(
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const RegisterScreen()),
                    );
                  },
                  child: Text("Sich registrieren"),
                ),
                ElevatedButton(
                  onPressed: (){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const HomeScreen()),
                    );
                  },
                  child: Text("Zum Hauptmenu"),
                ),
              ],
            ),
          ),
        )
      ),
    );
  }

}