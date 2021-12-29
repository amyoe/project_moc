import 'package:flutter/material.dart';
import 'package:project_moc/layout/notes/add_note.dart';
import 'package:project_moc/layout/notes/list_view.dart';
import 'package:project_moc/layout/widget.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'list_view.dart';

class WelcomeNotes extends StatefulWidget {
  const WelcomeNotes({Key? key}) : super(key: key);

  @override
  _WelcomeNotesState createState() => _WelcomeNotesState();
}

class _WelcomeNotesState extends State<WelcomeNotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar("Deine Notizen"),
      body: SafeArea(
        child: Column(
          children: const <Widget>[
            CustomListView(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(FontAwesomeIcons.plus),
        foregroundColor: Colors.white,
        backgroundColor: Colors.lightBlue,
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => const AddNoteScreen())),
      ),
    );
  }
}
