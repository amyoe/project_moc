// // Franziska Petzold
//
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:project_moc/layout/Games/Memorie/memorie2.dart';
// import 'package:project_moc/layout/widget.dart';
//
// class WelcomeMemorie extends StatelessWidget {
//   const WelcomeMemorie({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: customAppBar("Kollegen-Memorie"),
//         body: Center(
//           child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//               Text("Hey Name,"),
//           // <Vorname> durch Variable ersetzen
//           Text("hier kannst Du spielerisch Deine Kollegen kennenlernen."),
//           const SizedBox(height: 48),
//           ElevatedButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => const Memorie()),
//               );
//             },
//             child: const Text("Spiel starten"),
//           ),
//           const SizedBox(height: 24),);),}
//
//
// // wurde auskommentiert, da dies nicht mehr notwendig ist
// // ElevatedButton(
// //  onPressed: () {
// //   Navigator.push(
// //   context,
// //   MaterialPageRoute(builder: (context) => Schwierigkeit()),
// //   );
// //   },
// //  child: Text("Spiel Starten")),
//
// // ElevatedButton(
// //     onPressed: () {
// //       Navigator.push(
// //         context,
// //         MaterialPageRoute(builder: (context) => MemorieProfil()),
// //       );
// //     },
// //     child: Text("Memorie-Profil")),
// //           ],
// //         ),
// //         ],
// //       ),
// //     ),);
// //   }
// // }
