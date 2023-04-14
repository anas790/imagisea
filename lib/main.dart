import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imagisea/screens/loading_screen.dart';
import 'package:imagisea/screens/profile_screen.dart';
import 'package:imagisea/screens/finalized_screen.dart';
import 'package:imagisea/screens/generate_screen.dart';
import 'package:imagisea/screens/login_screen.dart';



void main() {
  runApp(const MyApp());
  const Generate_screen();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Imagisea',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.montserratTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: const Generate_screen(),
      // const Loading_screen(),
    );
  }
}
