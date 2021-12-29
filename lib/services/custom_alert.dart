// Franziska Petzold
import 'package:flutter/material.dart';

class CustomAlertDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget myFlatButton(title, color, value){
      return FlatButton(
        child: Text(title,style: TextStyle(color: color),),
        onPressed: () => Navigator.of(context).pop(value),
      );
    }

    return AlertDialog(
      title: const Text('Löschen bestätigen'),
      content: const Text('Bist du sicher, dass du diese Notiz löschen möchtest?'),
      actions: <Widget>[
        myFlatButton('Löschen', Colors.redAccent, true),
        myFlatButton('Abbrechen', Colors.grey, false),
      ],
      contentPadding: const EdgeInsets.fromLTRB(25, 15, 25, 5),
      insetPadding: const EdgeInsets.symmetric(horizontal: 20),
    );
  }
}