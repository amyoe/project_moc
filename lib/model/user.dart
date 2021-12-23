// Franziska Petzold
// Variablen für Benutzerprofil

//class User {
//final String uid; //
//final String imagePath;
//final String nameBenutzer;
//final String vorname;
//final String nachname;
//final String email;
//final String about; // Memorie -> Funktion "Profil verbergen"
//final bool isProfilehidden; // Memorie -> Funktion "Profil verbergen"
//final bool isDarkMode;
//int Alter;
//String orgaPosition;

//User(this.uid, this.email);
//}

//Konflikt mit unserer User Klasse und der User Klasse von Fire Auth
//Deshalb hier umbenannt in OurUser
//Die Attribute die wir noch nicht benötigen auskommentiert damit keine Fehlermeldungen kommen

class OurUser {
  final String uid;
  //final String profileImage;
  //final String vorname;
  //final String nachname;
  final String? email;
  //final String bio;

  //final String nachname;
  //final bool isProfilhidden;
  //final bool isDarkMode;
  //int Alter;
  //String orgaPosition;

  OurUser(this.uid, this.email);
}
