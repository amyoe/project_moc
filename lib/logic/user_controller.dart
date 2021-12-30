/*
//Franziska Petzold
import 'package:flutter/cupertino.dart';
import 'package:project_moc/model/user.dart';
import 'package:project_moc/storage/user_database_helper.dart';

class UserController with ChangeNotifier {
  late Future<List<OurUser>> _getOurUser;

  Future<List<OurUser>> get getOurUser => _getOurUser;

  Future<List<OurUser>> getInsertOurUser() async {
    return _getOurUser = OurUserDBHelper.userHelper.getOurUserList();
  }
}
*/
