// AppBar für jeden View, damit Anpassungen leichter sind
import 'package:flutter/material.dart';

PreferredSizeWidget customAppBar(String title) {
  return AppBar(
    centerTitle: true,
    title: Text (
      title,
      style: const TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
    ),
  );
}

// Global ausgelagert die Antwortkarten
Widget answerCard(String text){
  return Container(
    height: 60,
    width: 150,
    child: Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(text),
      ),
    ),
  );
}