import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts';

// ignore: camel_case_types
class Finalized_screen extends StatefulWidget {
  const Finalized_screen({Key? key}) : super(key: key);

  @override
  _Finalized_screenState createState() => _Finalized_screenState();
}

class _Finalized_screenState extends State<Finalized_screen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState();
  double _containerOpacity = 0.0;
  double _buttonTranslation = 0.0;

  void _showButtons() {
    setState(() {
      _containerOpacity = 1.0;
      _buttonTranslation = 0.0;
    });
  }

  @override
  void initState() {
    super.initState();
    // Add some delay before showing the buttons (you can adjust the duration)
    Future.delayed(Duration(milliseconds: 500), _showButtons);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Your Title'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            // Add your drawer items here
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedOpacity(
              duration: Duration(seconds: 1),
              opacity: _containerOpacity,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  // Your text form field
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                AnimatedContainer(
                  duration: Duration(seconds: 1),
                  transform: Matrix4.translationValues(_buttonTranslation, 0, 0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      // Your button style
                    ),
                    onPressed: () {
                      // Your button action
                    },
                    child: const Text('SAVE TO GALLERY'),
                  ),
                ),
                // Add other buttons with animations here
              ],
            ),
          ],
        ),
      ),
    );
  }
}
