import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:project_moc/services/auth.dart';
import 'package:project_moc/services/wrapper.dart';
import 'package:provider/provider.dart';
import 'layout/login.dart';
import 'layout/register.dart';
import 'layout/start_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const appTitle = 'Quiz App Hochschule Hannover';


    //https://www.youtube.com/watch?v=j_SJ7XmT2MM&list=PL4cUxeGkcC9j--TKIdkb3ISfRbJeJYQwC&index=8
    // So ab Minute 3 schreibt er was dazu, sieht aber wanders aus als deins, gibt aber glaube ich die user info zurück

    return MultiProvider(
      providers: [
        Provider<AuthService>(create: (_) => AuthService(),),
      ],
      child: MaterialApp(
      title: appTitle,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        fontFamily: 'Georgia',
      ),
        initialRoute: '/',
        routes: {
          '/': (context) => Wrapper(),
          '/login': (context) => LoginScreen(),
          '/register': (context) => RegisterScreen(),
        },
      ),
    );
  }
}

