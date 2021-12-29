// Franziska Petzold
import 'package:flutter/material.dart';
import 'package:project_moc/layout/Notizen/note_detail.dart';
import 'package:project_moc/layout/widget.dart';
import 'package:project_moc/logic/note_controller.dart';
import 'package:project_moc/model/notiz_model.dart';
import 'package:project_moc/storage/database_helper.dart';
import 'package:provider/provider.dart';

// Neue Notiz erstellen

class NoteView extends StatelessWidget {
   NoteView({Key? key}) : super(key: key);
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  NoteDBHelper? helper;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar("Neue Notiz"),
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: titleController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6.0)),
                    hintText: 'Titel'),
              ),
              const SizedBox(height: 10.0),
              TextField(
                controller: descriptionController,
                maxLines: 10,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    hintText: 'Beschreibung'),
              ),
              const SizedBox(height: 10.0),
              MaterialButton(
                color: Colors.lightBlue,
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                onPressed: () async {
                  await NoteDBHelper.noteHelper
                      .insertNote(
                    Note(
                      title: titleController.text,
                      description: descriptionController.text,
                    ),
                  )
                      .then((value) {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ChangeNotifierProvider(
                          create: (context) => NoteController(),
                          child: const NoteDetailsScreen(),
                        ),
                      ),
                    );
                    debugPrint('Notiz wurde erfolgreich hinzugefügt');
                  });
                },
                child: const Align(
                  alignment: Alignment.center,
                  child: Text("Notiz speichern"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}