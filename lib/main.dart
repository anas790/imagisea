import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
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
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Generate screen',
      home: Scaffold(

        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 39),
              child: Container(
                alignment: Alignment.topLeft,
                height: 300,
                width: 550,
                decoration: BoxDecoration(
                  color: Colors.blue,
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
                child:
                Column(
                  children: [
                    Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0,top: 20),
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
                          padding: const EdgeInsets.only(right:8.0,top:20),
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
                          fontWeight: FontWeight.bold
                        )
                      )),

                    const Padding(
                      padding: EdgeInsets.only(top: 20.0),
                      child: TextField(
                        style: TextStyle(
                            fontSize: 10.0,
                            height: 1.5
                        ),

                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,

                          border: OutlineInputBorder(

                          ),
                          hintText: 'Alien Mechanical World',
                        ),
                      ),
                    ),

                  ],
                ),


              )

            ),


          ],

        ),

      ),
    );
  }
}
