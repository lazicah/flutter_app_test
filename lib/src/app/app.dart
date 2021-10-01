import 'package:flutter/material.dart';
import 'package:flutter_app_test/src/screens/intro_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: const IntroScreen(),
    );
  }
}


