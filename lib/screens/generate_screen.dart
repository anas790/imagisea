import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imagisea/screens/HomeScreen.dart';
import 'package:imagisea/screens/finalized_screen.dart';
import 'package:imagisea/screens/login_screen.dart';

class Generate_screen extends StatefulWidget {
  const Generate_screen({Key? key}) : super(key: key);

  @override
  State<Generate_screen> createState() => _Generate_screenState();
}

class _Generate_screenState extends State<Generate_screen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Flexible(
            flex: 2,
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(55),
                    bottomRight: Radius.circular(55),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.blue.shade900,
                      Colors.blue.shade500,
                    ],
                  ),
                ),
                child: SafeArea(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0, top: 20),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: IconButton(
                                onPressed: () {
                                  _scaffoldKey.currentState!.openDrawer();
                                },
                                icon: const Icon(
                                  Icons.menu,
                                  color: Colors.white,
                                  size: 25,
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0, top: 20),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: SizedBox(
                                width: 40.0,
                                height: 40.0,
                                child: Image.asset(
                                  'images/imagisea1.png',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                          'IMAGISEA',
                          style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold))),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(top: 50.0),
                          child: SizedBox(
                            height: 45,
                            width: 350,
                            child: TextField(
                              keyboardType: TextInputType.text,
                              style: TextStyle(
                                fontSize: 15.0,
                              ),
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                hintText: 'Alien Mechanical World',
                                hintStyle: TextStyle(
                                  fontStyle: FontStyle.italic,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(15)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
              ),
          Flexible(
              flex: 4,
              child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: Container(
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.9),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 4),
                            )
                          ]),
                          child: Image.asset(
                            'images/img2.png',
                            width: 300,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.7),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(0, 4),
                              )
                            ]),
                            child: Image.asset(
                              'images/img3.png',
                              width: 80,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Container(
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.7),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: const Offset(0, 4),
                                )
                              ]),
                              child: Container(
                                decoration: BoxDecoration(boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.7),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset: const Offset(0, 4),
                                  )
                                ]),
                                child: Image.asset(
                                  'images/img4.png',
                                  width: 77,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Container(
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.7),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: const Offset(0, 4),
                                )
                              ]),
                              child: Image.asset(
                                'images/img5.png',
                                width: 77,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.06,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 45, right: 45),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            ElevatedButton(
                              style: ButtonStyle(
                                  minimumSize: MaterialStateProperty.all(const Size(200, 50)),
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.blue.shade700),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          ))),
                              child: const Text(
                                'FINALIZE THE SELECTED IMAGE',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Finalized_screen()));
                              },
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            ElevatedButton(
                              style: ButtonStyle(
                                  minimumSize: MaterialStateProperty.all(const Size(200, 50)),
                                  backgroundColor: MaterialStateProperty.all(
                                      Colors.red.shade900),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          ))),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                'REGENERATE',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ))),
        ],
      ),
    );
  }
}
