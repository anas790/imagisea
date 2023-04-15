import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:select_card/select_card.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<String> titles = <String>[
    '1:1',
    '2:3',
    '3:2',
  ];
  final List<String> id = <String>[
    'one-one',
    'two-three',
    'three-two',
  ];

  String? cardGroupResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 3,
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.blue.shade900,
                    Colors.blue,
                  ],
                ),
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
              ),
              child: SafeArea(
                child: Column(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.menu,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Text(
                              'IMAGISEA',
                              style: GoogleFonts.montserrat(
                                textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 3,
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          CircleAvatar(
                            radius: 25.0,
                            child: Image.asset('images/imagisea1.png'),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 50,
                    ),
                    Flexible(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(40)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                               Padding(
                                padding: const EdgeInsets.only(
                                  top: 30,
                                  left: 10,right: 10,
                                ),
                                child: TextField(
                                  maxLines: 4,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintMaxLines: 2,
                                    hintText: 'Go Crazy on your imagination! '
                                        '\nAnything•Everything You want',
                                    hintStyle: GoogleFonts.montserrat(
                                      textStyle:  TextStyle(
                                        color: Colors.grey.shade400,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w200,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  IconButton(
                                    onPressed: null,
                                    icon: Icon(
                                      Icons.restart_alt_sharp,
                                      color: Colors.black,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: null,
                                    icon: Icon(
                                      Icons.close,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 18,
                left: 8,
                right: 8,
                bottom: 8,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Aspect Ratio:',
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SelectGroupCard(context,
                      titles: titles,
                      ids: id,
                      cardBackgroundColor: Colors.grey.shade100,
                      titleTextColor: Colors.blue.shade700,
                      onTap: (title, id) {
                    debugPrint(title);
                    debugPrint(id);
                    setState(() {
                      cardGroupResult = title + " " + id;
                    });
                  }),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Text(
                    "Select ",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  RichText(
                    text: const TextSpan(
                      text: 'Style ',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: 'Optional',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            height: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: null,
                    child: Row(
                      children: const [
                        Text('View All'),
                        Icon(Icons.arrow_right),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Create Art',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            const Center(
              child: Text(
                'Selected Style : None',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            // Divider(
            //   height: 10,
            //   thickness: 1,
            //   indent: 20,
            //   endIndent: 30,
            //   color: Colors.blue.shade900,
            // ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    'For ',
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Text(
                    'Inspiration:',
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox.expand(
            //   child: ListView.builder(
            //     scrollDirection: Axis.vertical,
            //     itemCount: 5,
            //     itemBuilder: (context, index) {
            //       return SizedBox(
            //         width: MediaQuery.of(context).size.width * .5,
            //         child: const ListTile(
            //           title: Text("Test"),
            //         ),
            //       );
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
