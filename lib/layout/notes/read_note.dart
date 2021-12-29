import 'package:flutter/material.dart';
import 'package:project_moc/storage/data.dart';
import 'package:project_moc/layout/widget.dart';
import 'package:provider/provider.dart';



class ReadNoteScreen extends StatelessWidget {
  final int index;
  ReadNoteScreen(this.index);

  @override
  Widget build(BuildContext context) {
    var data = context.watch<Data>();

    return Scaffold(
      appBar: customAppBar("Notizen"),
      body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: <Widget>[
                               ReadingTextField(
                  text: data.notes['titles']![index],
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                ),
                ReadingTextField(
                  text: data.notes['contents']![index],
                  fontWeight: FontWeight.w400,
                  fontSize: 22,
                ),
              ],
            ),
          )),
    );
  }
}

class ReadingTextField extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
   const ReadingTextField({required this.text,required this.fontSize,required this.fontWeight});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        enabled: false,
        maxLines: null,
        controller: TextEditingController(text: text),
        decoration: const InputDecoration(fillColor: Colors.transparent),
        style: TextStyle(fontSize: fontSize, fontWeight: fontWeight),
      ),
    );
  }
}