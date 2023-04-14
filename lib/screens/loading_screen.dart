import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imagisea/screens/login_screen.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';


class Loading_screen extends StatefulWidget {
  const Loading_screen({Key? key}) : super(key: key);

  @override
  State<Loading_screen> createState() => _Loading_screenState();
}

class _Loading_screenState extends State<Loading_screen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Login()),
      );
    });
    return MaterialApp(
      title: 'Loading Screen',
      home: Scaffold(
        body: Column(
         children: [
           Container(
             height: 500,
             width: 500,
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
                       Padding(
                         padding: const EdgeInsets.only(top: 100.0),
                         child: Column(
                           children: [
                             Center(
                                     child: SizedBox(
                                       width: 230.0,
                                       height: 230.0,
                                       child: Image.asset(
                                         'images/imagisea1.png',
                                       ),
                                     ),
                             ),
                             const SizedBox(
                               height: 50,
                             ),

                             Text(
                               'IMAGISEA',
                               style: GoogleFonts.montserrat(
                               textStyle: const TextStyle(
                                 color: Colors.white,
                                 fontSize: 40,
                                 fontWeight: FontWeight.bold,
                                 letterSpacing: 3,
                               ),
                               ),
                             ),
                           ],
                         ),
                       ),
                     ),

          Padding(
            padding: const EdgeInsets.only(top: 130.0),
            child: LoadingAnimationWidget.prograssiveDots(color: Colors.blue, size: 80),
          ),
           // LoadingAnimationWidget.horizontalRotatingDots(
           //     color: Colors.blue.shade500,
           //     size: 50),

           Text(
             'Loading Imagine Engine...',

               style: GoogleFonts.alikeAngular(
                 textStyle: const TextStyle(
                   color: Colors.grey,
                   fontSize: 20,
                   fontWeight: FontWeight.bold,
                   letterSpacing: 1,
                 ),
               ),
           ),
         ],

        ),

      ),
    );
  }
}
