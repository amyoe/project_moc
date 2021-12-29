import 'package:flutter/material.dart';
import 'package:project_moc/layout/notes/read_note.dart';
import 'package:project_moc/storage/data.dart';
import 'package:provider/provider.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile(this.index, {Key? key}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    var data = context.watch<Data>();

    return ListTile(
      title: Text(
        data.notes['Titel']![index],
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Text(
          data.notes['Inhalt']![index],
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
        ),
      ),
      trailing: Text(
        data.notes['timeSnapShots']![index],
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: Color(0xff959EA7),
        ),
      ),
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (context) => ReadNoteScreen(index))),
      contentPadding: const EdgeInsets.all(17),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    );
  }
}