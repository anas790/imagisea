import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Finalized_screen extends StatefulWidget {
  const Finalized_screen({Key? key}) : super(key: key);

  @override
  State<Finalized_screen> createState() => _Finalized_screenState();
}

class _Finalized_screenState extends State<Finalized_screen> {
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
                          const Padding(
                            padding: EdgeInsets.only(left: 8.0, top: 20),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Icon(
                                Icons.menu,
                                color: Colors.white,
                                size: 35,
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
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.9),
                                  spreadRadius: 2,
                                  blurRadius: 5,
                                  offset: const Offset(0,4),
                                )
                              ]
                          ),
                          child: Image.asset(
                            'images/img2.png',
                            width: 350,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.08,
                      ),

                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left:45, right:45),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.blue.shade700),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(10.0),
                                            side: const BorderSide(
                                                color: Colors.grey)))),
                                onPressed: null,
                                child: const Text(
                                  'SAVE TO GALLERY',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height * 0.01,
                              ),

                              ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.green.shade500),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(10.0),
                                            side: const BorderSide(
                                                color: Colors.grey)))),
                                child: const Text(
                                  'GENERATE NFT',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                onPressed: (){
                                  Navigator.pop(context);
                                }
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height * 0.01,
                              ),

                              ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.orange.shade500),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(10.0),
                                            side: const BorderSide(
                                                color: Colors.grey)))),
                                onPressed: null,
                                child: const Text(
                                  'SHARE AS',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),
                    ],
                  ))),
        ],
      ),
    );
  }
}
