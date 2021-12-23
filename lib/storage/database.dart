import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;

  DatabaseService(this.uid);

  final CollectionReference userInfoCollection =
      Firestore.instance.collection('userInfo');

  Future updateUserData(
    String email,
    String nachname,
    String vorname,
    String bio,
  ) async {
    return await userInfoCollection.document(uid).setData({
      'nachname': nachname,
      'vorname': vorname,
      'bio': bio,
    });
  }

  Future deleteInfo(String bio) async {
    return await userInfoCollection.document(uid).updateData(
      {bio: FieldValue.delete()},
    );
  }

  Future checkIfUserExists() async {
    if ((await Firestore.Data.document(uid).get()).exists) {
      return true;
    } else {
      return false;
    }
  }
}
