import 'package:flutter/material.dart';
// import 'package:imagisea/screens/loading_screen.dart';
import 'package:imagisea/Screens/HomeScreen.dart';
import 'package:imagisea/Screens/profile_screen.dart';
import 'package:imagisea/screens/finalized_screen.dart';
import 'package:imagisea/screens/generate_screen.dart';
import 'package:imagisea/screens/loading_screen.dart';
import 'package:imagisea/Widgets/bottomDrawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Imagisea',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const Loading_screen(),
      home: const Loading_screen(),
    );
  }
}
