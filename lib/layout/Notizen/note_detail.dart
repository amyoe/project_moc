// Franziska Petzold

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_moc/layout/Notizen/note_screen.dart';
import 'package:project_moc/layout/Notizen/update_note_screen.dart';
import 'package:project_moc/layout/homescreen.dart';
import 'package:project_moc/layout/widget.dart';
import 'package:project_moc/logic/note_controller.dart';
import 'package:project_moc/logic/note_route.dart';
import 'package:project_moc/model/notiz_model.dart';
import 'package:project_moc/storage/database_helper.dart';
import 'package:provider/provider.dart';

// Übersicht der Notizen

class NoteDetailsScreen extends StatelessWidget {
  const NoteDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final noteController = Provider.of<NoteController>(context);
    return Scaffold(
        appBar: customAppBar("Notizen"),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
          child: FutureBuilder<List<Note>>(
            future: noteController.getInsertedNote(),
            builder: (context, AsyncSnapshot<List<Note>> snapshot) {
              if (snapshot.data == null || snapshot.data!.isEmpty) {
                return const Center(child: Text('Leere Notiz'));
              } else {
                return snapshot.hasData
                    ? GridView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, position) {
                          final Note note = snapshot.data![position];
                          return Container(
                              height: 200.0,
                              width: MediaQuery.of(context).size.width / 2.0,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(6.0),
                              ),
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 6.0),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: 120.0,
                                          height: 40.0,
                                          child: Text(
                                            note.title,
                                            style:
                                                const TextStyle(fontSize: 17.0),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        PopupMenuButton(
                                            itemBuilder: (context) => [
                                                  PopupMenuItem(
                                                      onTap: () {
                                                        goToNext(
                                                            context: context,
                                                            screen: UpdateNoteScreen(
                                                                title:
                                                                    note.title,
                                                                description: note
                                                                    .description));
                                                        //debugPrint('Clicked...');
                                                      },
                                                      child: const Text(
                                                          'Aktualisieren')),
                                                  PopupMenuItem(
                                                      onTap: () async {
                                                        await NoteDBHelper
                                                            .noteHelper
                                                            .deleteNote(
                                                                note.id!)
                                                            .then((val) {
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .showSnackBar(SnackBar(
                                                                  content: Text(
                                                                      '$position id ist gelöscht')));
                                                        });
                                                      },
                                                      child: const Text(
                                                          'Löschen')),
                                                ])
                                      ],
                                    ),
                                    const SizedBox(height: 5.0),
                                    Text(note.description),
                                  ],
                                ),
                              ));
                        },
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 10.0,
                                crossAxisSpacing: 0.0),
                      )
                    : const Center(child: CircularProgressIndicator());
              }
            },
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
            child: const Icon(FontAwesomeIcons.plus),
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => NoteView())),
            foregroundColor: Colors.white,
            backgroundColor: Colors.lightBlue,
          ),
            const SizedBox(
              height: 12,
            ),
            FloatingActionButton(
              child: const Icon(FontAwesomeIcons.home),
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomeScreen())),
              foregroundColor: Colors.white,
              backgroundColor: Colors.lightBlue,
            ),
          ]
        )
    );
  }
}
