import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_moc/logic/note_controller.dart';
import 'package:project_moc/services/auth.dart';
import 'package:project_moc/services/wrapper.dart';
import 'package:project_moc/storage/database_helper.dart';
import 'package:provider/provider.dart';
import 'layout/login.dart';
import 'layout/register.dart';

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
    return MultiProvider(
      providers: [
        Provider<AuthService>(
          create: (_) => AuthService(),
        ),
        ChangeNotifierProvider(
          create: (_) => NoteController(),
        )
      ],
      child: MaterialApp(
        title: "Dein Ersti-Buddy",
        theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.lightBlue[800],
          fontFamily: GoogleFonts.raleway(
            color: Colors.white,
            fontSize: 35,
          ).fontFamily,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => Wrapper(),
          '/login': (context) => LoginScreen(),
          '/register': (context) => RegisterScreen(),
        },
        // home: Splash(),
        // debugShowCheckedModeBanner: false,
      ),
    );
  }
}

// class Splash extends StatelessWidget {
//   const Splash({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     bool lightMode =
//         MediaQuery.of(context).platformBrightness == Brightness.dark;
//     return Scaffold(
//       backgroundColor:
//       lightMode ? const Color(0xffe1f5fe) : const Color(0xff0277bd),
//       body: Center(
//           child: lightMode
//               ? Image.asset('assets/splash_screen.png')
//               : Image.asset('assets/splash_screen.png')),
//     );
//   }
// }
