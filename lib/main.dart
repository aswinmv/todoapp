import 'package:flutter/material.dart';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:learningclub/home.dart';
import 'package:learningclub/utilities/Gettingstarted.dart';

import 'package:shared_preferences/shared_preferences.dart';

bool repeat = false;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  repeat = prefs.getBool("SHOWN") ?? false;

//  hive adding
  await Hive.initFlutter();

  // ignore: unused_local_variable
  var box = await Hive.openBox("myBox");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        //   home: const Getstarted(),
        // );
        home: repeat == false ? const Homepage() : const Getstarted());
  }
}
