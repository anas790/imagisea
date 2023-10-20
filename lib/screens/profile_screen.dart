import 'package:flutter/material.dart';
import 'package:crypto_font_icons/crypto_font_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imagisea/Widgets/Buttons.dart';
import 'package:imagisea/Widgets/profileCard.dart';
import 'package:imagisea/Widgets/sideDrawer.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.grey.shade100,
        drawer: const SideDrawer(),
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
                  padding: const EdgeInsets.only(top: 35.0, left: 10.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MenuButton(scaffoldKey: _scaffoldKey),
                        Padding(
                          padding: const EdgeInsets.only(right: 25.0),
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white),
                                minimumSize: MaterialStateProperty.all(
                                    const Size(5, 35)),
                                padding: MaterialStateProperty.all<
                                    EdgeInsetsGeometry>(
                                  const EdgeInsets.symmetric(
                                      horizontal: 7, vertical: 2),
                                ),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18),
                                    side: const BorderSide(color: Colors.blue),
                                  ),
                                ),
                              ),
                              onPressed: () {},
                              child: Padding(
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
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20.0,
                  left: 30.0,
                  right: 20.0,
                  bottom: 10.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.blue,
                      backgroundImage: AssetImage('images/nemo.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'UserName',
                            style: GoogleFonts.montserrat(
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            'kjbdofnapfmlbjfownfp7645998u0u',
                            style: GoogleFonts.montserrat(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: 1.0,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(7.0),
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0))),
                  ),
                  onPressed: null,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Icon(CryptoFontIcons.ETH, color: Colors.black),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          '2.75 ETH',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          width: 140.0,
                        ),
                        Text(
                          'ADD',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Icon(Icons.keyboard_arrow_right, color: Colors.white),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ProfileCard(icon: Icons.image,title: 'Item',),
                    ProfileCard(icon: Icons.bar_chart, title: 'Activity'),
                    ProfileCard(icon: Icons.people, title: 'Followers'),
                  ],
                ),
              ),
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: ActivityButton(title: 'Edit Profile', icon: Icons.person,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ActivityButton(icon: Icons.library_books_outlined, title: 'Activity'),
              ),
              const SizedBox(
                height: 15.0,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Your Collections',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CollectionButton(title: 'Rainbow Stars', specialCharacter: '🌈'),
              ),
              const SizedBox(
                height: 10.0,
              ),
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: CollectionButton(specialCharacter: '🍒',title: 'Cherry Wall',),
              ),
            ],
          ),
        ),
      ),
    );
  }
}






