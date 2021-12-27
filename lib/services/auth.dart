//Amy Oevermann
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:project_moc/model/user.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:project_moc/storage/database.dart';
import 'package:project_moc/storage/database.dart';

class AuthService {
  final auth.FirebaseAuth _firebaseAuth = auth.FirebaseAuth.instance;

  // Neues User-Objekt
  OurUser? _userFromFirebase(auth.User? user) {
    if (user == null) {
      return null;
    }
    return OurUser(user.uid, user.email);
  }

  // Stream
  Stream<OurUser?>? get user {
    return _firebaseAuth.authStateChanges().
    map(_userFromFirebase);
  }

  // E-Mail Login
  Future<OurUser?> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    final credential = await _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return _userFromFirebase(credential.user);
  }

  // Registrierung
  Future<OurUser?> createUserWithEmailAndPassword(
    String email,
    String password,
  ) async {
    final credential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
    // Neues Dokument für Firestore Storage mit der uid
    //await DatabaseService(uid: OurUser.uid)
      //  .updateUserData(OurUser.email, 'tbd', 'tbd', 'tbd');
    return _userFromFirebase(credential.user);
  }

  // Abmelden
  Future<void> signOut() async {
    return await _firebaseAuth.signOut();
  }

// User Objekt auf Basis von Firebase
//User _userFromFirebaseUser(FirebaseUser user) {
//  return user != null ? User(uid: user.uid) : null;
//}

}
