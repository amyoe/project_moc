// AppBar für jeden View, damit Anpassungen leichter sind
import 'package:flutter/material.dart';

PreferredSizeWidget customAppBar(String title) {
  return AppBar(
    centerTitle: true,
    title: Text (title)
  );
}

// Global ausgelagert die Antwortkarten
Widget answerCard(String text, {bool? answer}) {
  return Container(
    height: 60,
    width: 150,
    child: Card(
      color: (answer == null)
          ? Colors.grey
      :(answer)
          ? Colors.green
          : Colors.red,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(text),
      ),
    ),
  );
}

//Widget für das PopUp Dialog

Widget buildPopupDialog(BuildContext context) {
  return AlertDialog(
    title: const Text('Popup example'),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        Text("Hello"),
      ],
    ),
    actions: <Widget>[
      TextButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Text('Close'),
      ),
    ],
  );
}