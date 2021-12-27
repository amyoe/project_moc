// Franziska Petzold
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

Widget info_card(String title, String info) {
  return Expanded(
    child: Container(
      margin: const EdgeInsets.all(24.0),
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
      decoration:  BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(5.0),
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
            style:
                const TextStyle(fontSize: 30.0, fontWeight: FontWeight.normal),
          ),
        ],
      ),
    ),
  );
}
