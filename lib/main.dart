import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_moc/services/auth.dart';
import 'package:project_moc/services/wrapper.dart';
import 'package:provider/provider.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'layout/login.dart';
import 'layout/register.dart';
import 'package:flutter/cupertino.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Dein Ersti-Buddy';

    return MultiProvider(
        providers: [
          Provider<AuthService>(create: (_) => AuthService(),),
        ],
        child: MaterialApp(
          title: "Dein Ersti-Buddy",
          theme: ThemeData(
            brightness: Brightness.dark,
            primaryColor: Colors.lightBlue[800],
            fontFamily: GoogleFonts
                .raleway(color: Colors.white)
                .fontFamily,
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


