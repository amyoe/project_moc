// // Franziska Petzold
//
// import 'package:flutter/material.dart';
// import 'package:project_moc/layout/Games/Memorie/data.dart';
// import 'package:project_moc/model/card_model.dart';
// import '../../widget.dart';
// import  'dart:async' ;
//
// class Memorie extends StatefulWidget {
//   const Memorie({Key? key}) : super(key: key);
//
//   @override
//   _MemorieState createState() => _MemorieState();
//
// }
//
// class _MemorieState extends State<Memorie> {
//   List<CardModel > gridViewTiles = <CardModel>[];
//   List<CardModel > QuestionPairs = <CardModel>[];
//
//   @override
//   void iniState() {
//     // Implement iniState
//     super.initState();
//
//     pairs = getPairs();
//     pairs.shuffle();
//     visiblePairs = pairs;
//     selected = true;
//
//     Future.delayed(const Duration(seconds: 3), () {
//       setState(() {
//         selected = false;
//       });
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: customAppBar("Memorie"),
//       body: Container(
//         padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
//         child: Column(
//           children: <Widget>[
//             const SizedBox(height: 48,),
//             punkte != 600 ? Column(
//               children: <Widget>[
//                 Text("$punkte/600",
//                   style: const TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.w500
//                   ),),
//                 Text("Punkte"),
//               ],
//             ) : Container(),
//             const SizedBox(
//               height: 24,
//             ),
//             GridView(
//               shrinkWrap: true,
//               gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
//                   mainAxisSpacing: 0.0, maxCrossAxisExtent: 100),
//               children: List.generate(visiblePairs.length, (index) {
//                 return Card(
//                   imageAssetPath: visiblePairs[index].getImageAssetPath(),
//                   parent: this,
//                   cardIndex: index,
//                 );
//               }),
//             )
//           ],
//         )
//         ,
//       )
//       ,
//     );
//   }
// }
//
// class Card extends StatefulWidget {
//   String imageAssetPath;
//   int cardIndex;
//
//   _MemorieState parent;
//
//   Card(
//       {required this.imageAssetPath, required this.parent, required this.cardIndex});
//
//   // const Card({Key? key}) : super(key: key);
//
//   @override
//   _CardState createState() => _CardState();
// }
//
// class _CardState extends State<Card> {
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//         onTap: ()
//     {
//       if (!selected) {
//         if (selectedImageAssetPath != "") {
//           if (selectedImageAssetPath ==
//               pairs[widget.cardIndex].getImageAssetPath()) {
//             // korrekt
//             print("korrekt");
//             selected = true;
//             Future.delayed(const Duration(seconds: 2), () {
//               punkte = punkte + 100;
//               setState(() {});
//               selected = false;
//               widget.parent.setState(() {
//                 pairs[widget.cardIndex].setImageAssetPath("");
//                 pairs[selectedCardIndex].setImageAssetPath("");
//               });
//               selectedImageAssetPath = "";
//             });
//           } else {
//             // falsch
//             print("falsch");
//             selected = true;
//             Future.delayed(const Duration(seconds: 2), () {
//               selected = false;
//               widget.parent.setState(() {
//                 pairs[widget.cardIndex].setIsSelected(false);
//                 pairs[selectedCardIndex].setIsSelected(false);
//                 selectedImageAssetPath = "";
//               });
//             });
//           } else {
//           selectedCardIndex = widget.cardIndex;
//           selectedImageAssetPath =
//               pairs[widget.cardIndex].getImageAssetPath();
//         }
//         setState(() {
//           pairs[widget.cardIndex].setIsSelected(true);
//         });
//        // print("Du hast mich angeklickt");
//       }
//     }
//     Container(
//         margin: EdgeInsets.all(5),
//         child: pairs[widget.cardIndex].getImageAssetPath() != "" ? Image
//             .asset(
//             pairs[widget.cardIndex].getIsSelected() ? pairs[widget
//                 .cardIndex]
//                 .getImageAssetPath() : widget.imageAssetPath) : Image.asset(
//             "assets(correct.png")
//     )
//     );
//   }
//   }
// }