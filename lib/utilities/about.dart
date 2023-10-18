import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:learningclub/utilities/aboutextended.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        title: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(right: 70),
            child: Text(
              "Settings",
              style: GoogleFonts.poppins(
                  fontSize: 30, fontWeight: FontWeight.w500),
            ),
          ),
        ),
        backgroundColor: Colors.yellow,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 1,
          ),
          Container(
            height: 60,
            width: double.infinity,
            color: Colors.yellow[200],
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Ionicons.help_circle_outline,
                    size: 40,
                  ),
                ),
                Text(
                  "Help Center",
                  style: GoogleFonts.poppins(
                      fontSize: 17, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 1,
          ),
          Container(
            height: 60,
            width: double.infinity,
            color: Colors.yellow[200],
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Ionicons.at_circle_outline,
                    size: 40,
                  ),
                ),
                Text(
                  "Contact ",
                  style: GoogleFonts.poppins(
                      fontSize: 17, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 1,
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const Extended(),
              ));
            },
            child: Container(
              height: 60,
              width: double.infinity,
              color: Colors.yellow[200],
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Ionicons.alert_circle_outline,
                      size: 40,
                    ),
                  ),
                  Text(
                    "App Info",
                    style: GoogleFonts.poppins(
                        fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 1,
          ),
          Container(
            height: 60,
            width: double.infinity,
            color: Colors.yellow[200],
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Ionicons.mail_outline,
                    size: 40,
                  ),
                ),
                Text(
                  "Report An Issue",
                  style: GoogleFonts.poppins(
                      fontSize: 17, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          SizedBox(
            height: 80,
            width: 150,
            child: Column(
              children: [
                Text(
                  "Build",
                  style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                Text(
                  "1.0.1",
                  style: GoogleFonts.poppins(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
