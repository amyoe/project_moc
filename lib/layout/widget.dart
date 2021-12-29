import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

//Amy Oevermann
// AppBar für jede View, damit Anpassungen leichter sind
PreferredSizeWidget customAppBar(String title) {
  return AppBar(
    centerTitle: true,
    title: Text (
      title,
      style: GoogleFonts.raleway(fontSize: 35),
    ),
  );
}

//Antwortkarten für QuizDuell ausgelagert
//Amy Oevermann
Widget answerCard(String text, {bool? answer}) {
  return Container(
    height: 60,
    width: 160,
    child: Card(
      color: (answer == null)
          ? Colors.grey
      :(answer)
          ? Colors.green
          : Colors.red,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(text,
          textAlign: TextAlign.center,
          style: GoogleFonts.raleway(fontSize: 15)
        ),
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

//Icon Widget für die Settings View
//Amy Oevermann
class IconWidget extends StatelessWidget{
  final IconData icon;
  final Color color;
  const IconWidget ({Key? key, required this.icon, required this.color,}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
      child: Icon(icon, color: Colors.white),
    );
  }
}