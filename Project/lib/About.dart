// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class About extends StatelessWidget {
  const About({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                height: 300,
                width: 500,
                child: Image.asset(
                  "images/Logo.png",
                  fit: BoxFit.fill,
                )),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Text(
                "Run and Fun ",
                style:
                    GoogleFonts.lato(fontSize: 50, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: SizedBox(
                width: 250,
                child: Text(
                  "Our Goals is to keep you healthy and fit, while having fun doing it ",
                  style: GoogleFonts.lato(fontSize: 20),
                ),
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Text(
                "Contect Info:97819785",
                style: GoogleFonts.lato(fontSize: 15),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: GestureDetector(
                onTap: _launchURL,
                child: Text(
                  'Visit Out Website For More Information',
                  style: TextStyle(
                      color: Colors.pink,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: _launchEmail,
                    child: Icon(
                      Icons.mail,
                      size: 50,
                    ),
                  ),
                  GestureDetector(
                    onTap: _launchTwitter,
                    child: Icon(
                      EvaIcons.twitter,
                      size: 50,
                    ),
                  ),
                  GestureDetector(
                    onTap: _launchYoutube,
                    child: FaIcon(
                      FontAwesomeIcons.youtubeSquare,
                      size: 50,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void _launchURL() async {
    const String _url = 'https://www.trainerize.com/';

    if (!await launch(_url, forceWebView: true)) throw 'Could not launch $_url';
  }

  void _launchEmail() async {
    const String _url = 'https://www.trainerize.com/contact.aspx';

    if (!await launch(_url, forceWebView: true)) throw 'Could not launch $_url';
  }

  void _launchTwitter() async {
    const String _url = 'https://twitter.com/trainerize';

    if (!await launch(_url)) throw 'Could not launch $_url';
  }

  void _launchYoutube() async {
    const String _url = 'https://www.youtube.com/c/TrainerizeYoutube';

    if (!await launch(_url)) throw 'Could not launch $_url';
  }
}
