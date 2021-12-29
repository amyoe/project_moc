import 'package:flutter/material.dart';
import 'package:project_moc/storage/data.dart';
import 'package:provider/provider.dart';
import 'dismissible.dart';

class CustomListView extends StatefulWidget {
  const CustomListView({Key? key}) : super(key: key);

  @override
  State<CustomListView> createState() => _CustomListViewState();
}

class _CustomListViewState extends State<CustomListView> {
  @override
  Widget build(BuildContext context) {
    var data = context.watch<Data>();


    return Flexible(
      child: ListView.builder(
        padding: const EdgeInsets.all(10),
        physics: const BouncingScrollPhysics(),
        itemCount: data.notes['titles']!.length,
        itemBuilder: (context,index) => CustomDismissible(data: data,index: index),
      ),
    );
}
}