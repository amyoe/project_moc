// Franziska Petzold
// Variablen für Benutzerprofil

//Konflikt mit unserer User Klasse und der User Klasse von Fire Auth
//Deshalb hier umbenannt in OurUser
//Die Attribute die wir noch nicht benötigen auskommentiert damit keine Fehlermeldungen kommen

class OurUser {
  final String uid;
 // final String name;
 // final String bio;
  final String? email;

  //final String profileImage;
  //final bool isProfilhidden;
  //int Alter;

  OurUser(this.uid,
     // this.name,
      this.email,);
     // this.bio);

// Vorbereitung für User-Datenbank
  /*OurUser.fromOurUser(Map<String, dynamic> fromOurUserMap)
      : uid = fromOurUserMap['uid'],
        name = fromOurUserMap['uid'],
        email = fromOurUserMap['email'],
        bio = fromOurUserMap['bio'];

  Map<String, dynamic> toOurUserMap() {
    return {'uid': uid, 'name': name, 'email': email, 'bio': bio};
  }*/
}
