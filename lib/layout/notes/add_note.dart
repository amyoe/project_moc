import 'package:flutter/material.dart';
import 'package:project_moc/layout/notes/text_field.dart';
import 'package:project_moc/layout/widget.dart';
import 'package:project_moc/storage/data.dart';
import 'package:provider/provider.dart';

class AddNoteScreen extends StatelessWidget {
  const AddNoteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = context.watch<Data>();

    return Scaffold(
      appBar: customAppBar("Notiz hinzufügen"),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                if (data.title != '' && data.content != '') {
                  data.addNote();
                  Navigator.pop(context);
                }
              }, child: const Text ("Hinzufügen"),
            ),
             AddingTextField(maxLines: 1, hintText: 'Titel'),
             Flexible(child: AddingTextField(maxLines: 50, hintText: 'Notiz')),
          ],
        ),
      ),
    );
  }
}