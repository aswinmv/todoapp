import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learningclub/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Getstarted extends StatefulWidget {
  const Getstarted({super.key});

  @override
  State<Getstarted> createState() => _GetstartedState();
}

class _GetstartedState extends State<Getstarted> {
  void showIntro() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('shown', true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 39, 38, 38),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                      image: AssetImage("lib/assets/yellow.jpg"),
                      fit: BoxFit.cover)),
              width: 400,
              height: 755,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      width: 325,
                      height: 60,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2),
                        borderRadius: const BorderRadiusDirectional.all(
                            Radius.circular(10)),
                        color: Colors.yellow[600],
                      ),
                      child: Center(
                          child: InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                            builder: (context) => const Homepage(),
                          ));
                        },
                        child: Text(
                          "Get Started >",
                          style: GoogleFonts.poppins(
                              fontSize: 25, fontWeight: FontWeight.w500),
                        ),
                      )),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
