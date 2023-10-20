import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:imagisea/screens/loading_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData(
      primarySwatch: Colors.blue,
    );
    return const MaterialApp(
      title: 'Imagisea',
      debugShowCheckedModeBanner: false,
      home: Loading_screen(),
    );
  }
}
