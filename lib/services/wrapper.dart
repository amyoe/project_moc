import 'package:firebase_auth/firebase_auth.dart';
import 'package:project_moc/layout/homescreen.dart';
import 'package:project_moc/model/user.dart';
import 'package:flutter/material.dart';
import 'package:project_moc/services/auth.dart';
import 'package:provider/provider.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';


class Wrapper extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final authService = Provider.of<AuthService>(context);
    return StreamBuilder<User?>(
      stream: authService.user,
      builder: (_, AsyncSnapshot<User?> snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          final User? user = snapshot.data;
          return user == null ? HomeScreen() : HomeScreen();
        } else {
          return Scaffold(
            body: Center(
              child: Text("Hi"),
            ),
          );
        }
      },);
  }
}
