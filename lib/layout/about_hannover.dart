// Franziska Petzold
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_moc/layout/widget.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutHannover extends StatefulWidget {
  const AboutHannover({Key? key}) : super(key: key);

  @override
  _AboutHannoverState createState() => _AboutHannoverState();
}

class _AboutHannoverState extends State<AboutHannover> {
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
        appBar: customAppBar("Rund um Hannover"),
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: AssetImage("assets/images/hannover.jpg"),
              ),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                        "Du bist neu in Hannover?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                          fontSize: 20,
                            fontWeight: FontWeight.bold
                        )),
                    const SizedBox(height: 2),
                    const Text(
                        "Dann schau mal, was Hannover alles so zu bieten hat!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize:20,
                            fontWeight: FontWeight.bold
                        )),
                    const Spacer(),
                    ElevatedButton(
                        onPressed: () {
                          _launchURL(
                              "https://www.thecrazytourist.com/25-best-things-hanover-germany/");
                        },
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Must see",
                            style: GoogleFonts.raleway(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )),
                    const SizedBox(height: 12),
                    ElevatedButton(
                        onPressed: () {
                          _launchURL("https://www.hannover.de/");
                        },
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Stadt Hannover",
                            style: GoogleFonts.raleway(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )),
                    const SizedBox(height: 12),
                    ElevatedButton(
                        onPressed: () {
                          _launchURL("https://www.niedersachsen.de/Coronavirus");
                        },
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Aktuelle Coronaverordnung",
                            style: GoogleFonts.raleway(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )),
                    const SizedBox(height: 12),
                    ElevatedButton(
                        onPressed: () {
                          _launchURL("https://www.gvh.de/#/");
                        },
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Fahrpläne",
                            style: GoogleFonts.raleway(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )),
                    const SizedBox(height: 12),
                    ElevatedButton(
                        onPressed: () {
                          _launchURL(
                              "https://www.reisereporter.de/artikel/727-sechs-orte-der-bar-kultur-in-hannover");
                        },
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Bar Empfehlungen",
                            style: GoogleFonts.raleway(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )),
                    const SizedBox(height: 12),
                    ElevatedButton(
                        onPressed: () {
                          _launchURL(
                              "https://www.wg-gesucht.de/wg-zimmer-in-Hannover.57.0.1.0.html");
                        },
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "WG gesucht",
                            style: GoogleFonts.raleway(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )),
                    const Spacer(),
                  ],
                ),
              ),
            )));
  }
}
