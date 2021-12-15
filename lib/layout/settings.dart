import 'package:project_moc/layout/widget.dart';
import 'package:flutter/material.dart';
import 'package:project_moc/layout/homescreen.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'Grid List';
    return Scaffold(
      appBar: customAppBar("Deine Einstellungen"),
      body: Container(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Hier sind deine Einstellungen"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
