


import 'package:flutter/material.dart';

void main() => runApp(TradingScreen());

class TradingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("IMAGISEA"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 42, 47, 97),
          elevation: 0,
        ),
        body: ImagiseaScreen(),
      ),
    );
  }
}

class ImagiseaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          Container(
            // decoration: BoxDecoration(
            //   shape: BoxShape.rectangle,
            //   color: Colors.purple,
            // ),
            padding: EdgeInsets.all(20),
            // child: Icon(Icons.clear, color: Colors.white, size: 48),
          ),
          
          SizedBox(height: 20),
          Text("Main Wallet", style: TextStyle(fontSize: 16)),
          Text("\$62,588.05", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Text("₸ 8.82% (+\$970)"),
          SizedBox(height: 20),
          Text("Assets NFTs"),
          SizedBox(height: 20),
          CryptoItem("Ethereum", "1.5 ETH", "1,740\$", "8.82% (+\$274)"),
          CryptoItem("Binance Coin", "73.5 BNB", "632\$", "7.53% (-\$51)"),
          SizedBox(height: 20),
          Text("Learn how to trade"),
          Text("₿", style: TextStyle(fontSize: 24)),
          SizedBox(height: 20),
          Text("More info here"),
        ],
      ),
    );
  }
}

class CryptoItem extends StatelessWidget {
  final String name;
  final String quantity;
  final String value;
  final String change;

  CryptoItem(this.name, this.quantity, this.value, this.change);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 198, 148, 196),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
          Text(quantity),
          Text(value),
          Text(change),
        ],
      ),
    );
  }
}
