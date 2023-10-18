import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learningclub/utilities/mybutton.dart';

// ignore: must_be_immutable
class Dialogbox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  Dialogbox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: SizedBox(
        height: 140,
        child: Column(
          children: [
            TextField(
              style: GoogleFonts.poppins(
                  fontSize: 18, fontWeight: FontWeight.w400),
              controller: controller,
              decoration: const InputDecoration(
                  hintText: 'Add a new Task . .', border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Mybutton(
                  text: "Save",
                  onPressed: onSave,
                ),
                Mybutton(
                  text: "Cancel",
                  onPressed: onCancel,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
