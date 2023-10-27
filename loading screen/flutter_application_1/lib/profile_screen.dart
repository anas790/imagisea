import 'package:flutter/material.dart';

void main() => runApp(ProfileScreen());

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Imagisea"),
        ),
        body: ProfileScreen(),
      ),
    );
  }
}

class DickCartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("2.75 ETH", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Text("Djokoart"),
                Text("0x8e3a808c1db9e2031fe69..."),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("2.75 ETH", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ElevatedButton(
                  onPressed: () {
                    // Add to cart functionality
                  },
                  child: Text("Add >"),
                ),
              ],
            ),
          ),
          Divider(height: 1, color: Colors.grey),
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Items"),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Activity"),
                  ]
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Followers"),
                    Text(""),
                  ],
                ),
              ],
            ),
          ),
          Divider(height: 1, color: Colors.grey),
          ListTile(
            title: Text("Edit Profile"),
            trailing: Icon(Icons.edit),
          ),
          Divider(height: 1, color: Colors.grey),
          ListTile(
            title: Text("Activity"),
            trailing: Icon(Icons.arrow_forward),
          ),
          Divider(height: 1, color: Colors.grey),
          ExpansionTile(
            title: Text("Your Collections"),
            trailing: Icon(Icons.arrow_drop_down),
            children: [
              ListTile(
                title: Text("Rainbow Stars"),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                title: Text("Cherry Wall"),
                trailing: Icon(Icons.arrow_forward),
              ),
            ],
          ),
          Divider(height: 1, color: Colors.grey),
        ],
      ),
    );
  }
}
