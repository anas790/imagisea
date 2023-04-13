import 'package:flutter/material.dart';
import 'package:crypto_font_icons/crypto_font_icons.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyProfile());
}

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'my profile',
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: [
              Container(
                height: 95,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
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

                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 10.0),
                  child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                  IconButton(
                  icon: const Icon(Icons.menu_rounded),
                   color: Colors.white,
                   iconSize: 30,
                   onPressed: (){},
                  ),

                      Padding(
                        padding: const EdgeInsets.only(top:8.0, right: 25.0),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.white),
                            minimumSize: MaterialStateProperty.all(const Size(5, 35)),
                            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                              const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
                            ),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                                side: const BorderSide(color: Colors.blue),
                              ),
                            ),
                          ),
                            onPressed: () {},

                          child:Padding(
                            padding: const EdgeInsets.only(right: 5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(CryptoFontIcons.ETH,
                                color: Colors.grey.shade400),
                                const SizedBox(width: 3),
                                const Text(
                                  '2.75 ETH',
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          )),
                      ),
                   ]
                      ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 30, left: 40.0),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.blue,
                      backgroundImage: AssetImage('images/nemo.png'),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top:0),
                      child: Column(
                        textDirection: TextDirection.ltr,
                        children:[
                          Text(
                            'Nemoart',
                            style: GoogleFonts.montserrat(

                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            '03xxg38idhhhgf0mf....',
                              style: GoogleFonts.montserrat(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              fontSize: 13,
                          ),
                          ),

                          Divider(
                            color: Colors.black,

                          ),


                        ],

                      ),
                    ),

                  ],
                ),
              ),




            ],
          ),



        ),

      ),



    );
  }
}
