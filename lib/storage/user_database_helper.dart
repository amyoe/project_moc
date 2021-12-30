/*
// Franziska Petzold
// Vorbereitung für User-Datenbank
import 'package:flutter/material.dart';
import 'package:project_moc/model/user.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class OurUserDBHelper {
  OurUserDBHelper._ourUserDBHelper();

  static final OurUserDBHelper userHelper = OurUserDBHelper._ourUserDBHelper();
  static Database? _database;
  static const _databaseName2 = 'ourUser.db';
  static const _tableName2 = 'ourUser';

  Future<Database?> get ourUserDatabase async {
    if (_database != null) return _database;

    return _database = await _initializingOurUserDatabase();
  }

  _initializingOurUserDatabase() async {
    var directory = await getDatabasesPath();
    String path = join(directory, _databaseName2);
    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  Future<Database?> _onCreate(Database? database, int version) async {
    await database!.execute('''
    CREATE TABLE $_tableName2(
    uid INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    bio TEXT NOT NULL
    )
    
    ''');
  }

  Future<OurUser> insertOurUser(OurUser ourUser) async {
    Database? db = await ourUserDatabase;
    debugPrint('${ourUser.toOurUserMap()}');
    await db!.insert(_tableName2, ourUser.toOurUserMap());
    return ourUser;
  }

  Future<List<OurUser>> getOurUserList() async {
    Database? db = await ourUserDatabase;
    List<Map<String, Object?>> result = await db!.query(_tableName2);
    return result.map((ourUser) => OurUser.fromOurUser(ourUser)).toList();
  }

  Future<int> deleteOurUser(int uid) async {
    Database? db = await ourUserDatabase;
    return await db!.delete(_tableName2, where: 'uid = ?', whereArgs: [uid]);
  }

  Future updateOurUser(OurUser ourUser) async {
    Database? db = await ourUserDatabase;
    await db!.update(_tableName2, ourUser.toOurUserMap(),
        where: 'uid = ?', whereArgs: [ourUser.uid]);
  }
}
*/
