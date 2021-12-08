import 'package:project_moc/layout/widget.dart';
import 'package:flutter/material.dart';
import 'package:project_moc/layout/homescreen.dart';

class Settings extends StatelessWidget {
  const Settings ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'Grid List';

    return MaterialApp(
      title: title,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.lightBlue[800],
        fontFamily: 'Georgia',
      ),
      home: Scaffold(
        appBar: customAppBar("Einstellungen"),
        body: const Center (
          child: Text("Hello"),
        ),
      ),
    );
  }
}
