import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;

  DatabaseService(this.uid);

  final CollectionReference userInfoCollection =
      FirebaseFirestore.instance.collection('userInfo');

  Future updateUserData(
    String email,
    String nachname,
    String vorname,
    String bio,
  ) async {
    return await userInfoCollection.doc(uid).set({
      'nachname': nachname,
      'vorname': vorname,
      'bio': bio,
    });
  }

  Future deleteInfo(String bio) async {
    return await userInfoCollection.doc(uid).update(
      {bio: FieldValue.delete()},
    );
  }

  //Future checkIfUserExists() async {
    //if ((await FirebaseFirestore.Data.doc(uid).get()).exists) {
      //return true;
   // } else {
    //  return false;
   // }
 // }
}
