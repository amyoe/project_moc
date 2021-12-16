import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:project_moc/model/user.dart';
import 'package:firebase_core/firebase_core.dart';


class AuthService {
  final auth.FirebaseAuth _firebaseAuth = auth.FirebaseAuth.instance;

  OurUser? _userFromFirebase(auth.User? user) {
    if(user == null){
      return null;
    }
    return OurUser(user.uid, user.email);
  }

  Stream<User?>? get user{
    return _firebaseAuth.authStateChanges().map((event) => null);
  }

  Future<OurUser?> signInWithEmailAndPassword(
      String email,
      String password,
      ) async {
        final credential = await _firebaseAuth.signInWithEmailAndPassword(
            email: email,
            password: password
        );

    return _userFromFirebase(credential.user);
  }

  Future<OurUser?> createUserWithEmailAndPassword(
      String email,
      String password,
      ) async{
        final credential = await _firebaseAuth.createUserWithEmailAndPassword(
            email: email,
            password: password
        );
        return _userFromFirebase(credential.user);
      }

  Future<void> signOut() async{
    return await _firebaseAuth.signOut();
  }


  // User Objekt auf Basis von Firebase
  //User _userFromFirebaseUser(FirebaseUser user) {
  //  return user != null ? User(uid: user.uid) : null;
  //}


// E-Mail Login

// Registrierung

// Abmelden
}


