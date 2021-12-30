// Franziska Petzold
import 'package:flutter/material.dart';
import 'package:project_moc/model/notiz_model.dart';
import 'package:project_moc/storage/database_helper.dart';

class NoteController with ChangeNotifier {
  late Future<List<Note>> _getNote;

  Future<List<Note>> get getNote => _getNote;

  Future<List<Note>> getInsertedNote() async {
    return _getNote = NoteDBHelper.noteHelper.getNoteList();
  }
}