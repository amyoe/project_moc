// Franziska Petzold

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

Widget info_card(String title, String info) {
  return Expanded(
    child: Container(
      margin: EdgeInsets.all(24.0),
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
      decoration: const BoxDecoration(
        color: Colors.blueGrey,
      ),
      child: Column(
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.normal,
            ),
          ),
          const SizedBox(
            height: 6.0,
          ),
          Text(
            info,
            style: TextStyle(fontSize: 34.0, fontWeight: FontWeight.normal),
          ),
        ],
      ),
    ),
  );
}