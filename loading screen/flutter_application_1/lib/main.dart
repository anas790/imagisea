import 'package:flutter/material.dart';
import 'prompt.dart';

// import 'loading_screen.dart';

void main() {
  runApp(const Imagisea());
}

class Imagisea extends StatelessWidget {
  const Imagisea({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),

        // home: const LoadingScreen(),
        home: PromptScreen());
  }
}

@override
Widget build(BuildContext context) {
  return const Placeholder();
}
