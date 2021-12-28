//Franziska Petzold

import 'package:flutter/material.dart';
import 'package:project_moc/layout/widget.dart';
import 'package:url_launcher/link.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class links extends StatefulWidget {
  const links({Key? key}) : super(key: key);

  @override
  _linksState createState() => _linksState();
}

class _linksState extends State<links> {
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Konnte nicht gefunden werden: $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar("Nützliche Links"),
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _launchURL(
                        "https://icms.hs-hannover.de/qisserver/rds?state=user&type=0");
                  },
                  child: Text("iCMS", style: GoogleFonts.raleway(fontSize: 18)),
                ),
                const SizedBox(
                  height: 24,
                ),
                ElevatedButton(
                  onPressed: () {
                    _launchURL("https://moodle.hs-hannover.de/login/index.php");
                  },
                  child:
                      Text("Moodle", style: GoogleFonts.raleway(fontSize: 18)),
                ),
                const SizedBox(
                  height: 24,
                ),
                ElevatedButton(
                  onPressed: () {
                    _launchURL(
                        "https://f4.hs-hannover.de/studium/plaene-und-termine/pruefungsplan/abteilung-wirtschaftsinformatik/");
                  },
                  child: Text("Prüfungsplan - WI",
                      style: GoogleFonts.raleway(fontSize: 18)),
                ),
                const SizedBox(
                  height: 24,
                ),
                ElevatedButton(
                  onPressed: () {
                    _launchURL(
                        "https://f4.hs-hannover.de/studium/plaene-und-termine/stundenplan/abteilung-wirtschaftsinformatik/");
                  },
                  child: Text("Stundenpläne - WI",
                      style: GoogleFonts.raleway(fontSize: 18)),
                ),
                const SizedBox(
                  height: 24,
                ),
                ElevatedButton(
                  onPressed: () {
                    _launchURL(
                        "https://www.hs-hannover.de/ueber-uns/organisation/akademische-angelegenheiten/studierende/semesterbeitrag-und-rueckmeldung/");
                  },
                  child: Text("Semesterbeiträge & Rückmeldungen",
                      style: GoogleFonts.raleway(fontSize: 18)),
                ),
                const SizedBox(
                  height: 24,
                ),
                ElevatedButton(
                  onPressed: () {
                    _launchURL(
                        "https://www.hs-hannover.de/ueber-uns/organisation/gebaeudemanagement/standorte/standorte-und-anfahrt/");
                  },
                  child: Text("Standorte und Anfahrt",
                      style: GoogleFonts.raleway(fontSize: 18)),
                ),
                const SizedBox(
                  height: 24,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
