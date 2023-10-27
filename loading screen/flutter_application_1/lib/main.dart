import 'package:flutter/material.dart';
// import 'nft_screen.dart';

// import '_screen.dart';
// import 'trading_screen.dart';
// import 'profile_screen.dart';
import 'finalized.dart';

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

        // home: NFTAppScreen());
        //  home: TradingScreen());
        // home: ProfileScreen());
        home: Finalized_screen());
  }
}

// @override
// Widget build(BuildContext context) {
//   return const Placeholder();
// }
