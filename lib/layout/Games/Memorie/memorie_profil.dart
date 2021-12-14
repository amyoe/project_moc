// Franziska Petzold

import 'package:flutter/material.dart';
import 'package:project_moc/layout/widget.dart';


class MemorieProfil extends StatefulWidget {
  const MemorieProfil({Key? key}) : super(key: key);

  @override
  _MemorieProfilState createState() => _MemorieProfilState();
}

class _MemorieProfilState extends State<MemorieProfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar("Memorie-Profil"),
    );
  }
}
