import 'package:flutter/material.dart';
import 'package:project_moc/layout/widget.dart';
import 'package:project_moc/model/notiz_model.dart';
import 'package:project_moc/storage/database_helper.dart';


class UpdateNoteScreen extends StatefulWidget {
  final String title;
  final String description;

  const UpdateNoteScreen(
      {Key? key, required this.title, required this.description})
      : super(key: key);

  @override
  State<UpdateNoteScreen> createState() => _UpdateNoteScreenState();
}

class _UpdateNoteScreenState extends State<UpdateNoteScreen> {
  TextEditingController? titleController;

  TextEditingController? descriptionController;

  @override
  void initState() {
    super.initState();
    titleController = TextEditingController(text: widget.title);
    descriptionController = TextEditingController(text: widget.description);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar("Notiz aktualisieren"),
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
                  await NoteDBHelper.noteHelper.updateNote(Note(
                    title: titleController!.text,
                    description: descriptionController!.text,
                  ));
                },
                child:const Align(
                  alignment: Alignment.center,
                  child: Text("Notiz aktualisieren"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}