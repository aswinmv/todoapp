import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Extended extends StatefulWidget {
  const Extended({
    super.key,
  });

  @override
  State<Extended> createState() => _ExtendedState();
}

class _ExtendedState extends State<Extended> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow[200],
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 70),
              child: Text(
                "About",
                style: GoogleFonts.poppins(
                    fontSize: 30, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Text(
              maxLines: 40,
              '''About Simple To-Do App (Version 1.0.1)
        
Welcome to Simple To-Do App, your new solution for efficient task management. Our user-friendly app is designed to make your daily life easier and more organized. Whether you're planning your day, setting reminders, or keeping track of important tasks, we've got you covered.
        
Key Features:
- Create and manage to-do lists effortlessly.
- Prioritize tasks to stay focused on what matters most.
- Mark tasks as completed and revel in your accomplishments.
        
        We're committed to continually improving your experience with our app, and we welcome your feedback. If you have any questions, suggestions, or need assistance, please don't hesitate to contact me at *Aswinmv888@gmail.com.*
        
        Thank you for choosing To-Do App, and we look forward to helping you stay organized and productive  ''',
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 10,
              ),
            ),
          ),
        ));
  }
}
