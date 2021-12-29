//Franziska Petzold
import 'package:flutter/material.dart';
import 'package:project_moc/layout/widget.dart';
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
        body: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 65.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _launchURL(
                        "https://icms.hs-hannover.de/qisserver/rds?state=user&type=0");
                  },
                  child: const Text("iCMS"),
                ),
                const SizedBox(
                  height: 24,
                ),
                ElevatedButton(
                  onPressed: () {
                    _launchURL("https://moodle.hs-hannover.de/login/index.php");
                  },
                  child: const Text(
                    "Moodle",
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                ElevatedButton(
                    onPressed: () {
                      _launchURL(
                          "https://www.studentenwerk-hannover.de/essen/mensen-und-cafes");
                    },
                    child: const Text("Mensa")),
                const SizedBox(
                  height: 24,
                ),
                ElevatedButton(
                  onPressed: () {
                    _launchURL(
                        "https://f4.hs-hannover.de/studium/plaene-und-termine/pruefungsplan/abteilung-wirtschaftsinformatik/");
                  },
                  child: const Text("Prüfungsplan - WI"),
                ),
                const SizedBox(
                  height: 24,
                ),
                ElevatedButton(
                  onPressed: () {
                    _launchURL(
                        "https://f4.hs-hannover.de/studium/plaene-und-termine/stundenplan/abteilung-wirtschaftsinformatik/");
                  },
                  child: const Text("Stundenpläne - WI"),
                ),
                const SizedBox(
                  height: 24,
                ),
                ElevatedButton(
                  onPressed: () {
                    _launchURL(
                        "https://www.hs-hannover.de/ueber-uns/organisation/akademische-angelegenheiten/studierende/semesterbeitrag-und-rueckmeldung/");
                  },
                  child: const Text("Semesterbeiträge & Rückmeldungen"),
                ),
                const SizedBox(
                  height: 24,
                ),
                ElevatedButton(
                  onPressed: () {
                    _launchURL(
                        "https://f4.hs-hannover.de/aktuelles/praktikumsstellen/");
                  },
                  child: const Text("Praktikumsstellen"),
                ),
                const SizedBox(
                  height: 24,
                ),
                ElevatedButton(
                  onPressed: () {
                    _launchURL(
                        "https://www.hs-hannover.de/ueber-uns/organisation/gebaeudemanagement/standorte/standorte-und-anfahrt/");
                  },
                  child: const Text("Standorte und Anfahrt"),
                ),
                const SizedBox(
                  height: 24,
                ),
                ElevatedButton(
                  onPressed: () {
                    _launchURL("http://opac.tib.eu/DB=4/LNG=DU/");
                  },
                  child: const Text("Bibliothek"),
                ),
                const SizedBox(
                  height: 24,
                ),
              ],
            ),
          ),
        ));
  }
}
