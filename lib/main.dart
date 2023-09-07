import 'package:adeuto/classes/loginpage.dart';
import 'package:adeuto/classes/registerpage.dart';

import 'package:adeuto/classes/welcomepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Adeuto',
      theme: ThemeData(
        primaryColor: Colors.white,
        splashColor: Colors.white,
        highlightColor: Colors.black.withOpacity(0.5),
        fontFamily: 'Montserrat',
      ),
      debugShowCheckedModeBanner: false,
      home: const WelcomePage(),
    );
  }
}
