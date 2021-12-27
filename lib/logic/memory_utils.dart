import 'package:flutter/material.dart';

class Game {
  final Color hiddenCard = Colors.red;
  List<Color>? gameColors;
  List<String>? gameImg;
  List<Color> cards = [
    Colors.green,
    Colors.yellow,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.blue
  ];

  final String hiddenCardpath = "assets/images/hidden.png";

  List<String> cards_list = [
    "assets/images/student.png",
    "assets/images/studying.png",
    "assets/images/student.png",
    "assets/images/study.png",
    "assets/images/graduation-hat.png",
    "assets/images/studying.png",
    "assets/images/graduation-hat.png",
    "assets/images/study.png",
  ];
  final int cardCount = 8;
  List<Map<int, String>> matchCheck = [];

  //methods
  void initGame() {
    gameColors = List.generate(cardCount, (index) => hiddenCard);
    gameImg = List.generate(cardCount, (index) => hiddenCardpath);
  }
}
