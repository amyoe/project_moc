import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:project_moc/model/user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // User Objekt auf Basis von Firebase
  User _userFromFirebaseUser(FirebaseUser user) {
    return user != null ? User(uid: user.uid) : null;
  }

// E-Mail Login

// Registrierung

// Abmelden
}


