import 'package:flutter/material.dart';

void main() => runApp(PromptScreen());

class PromptScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Full-Screen Container Demo',
        home: Scaffold(
          body: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
            // child: const Center(),
            child: Stack(
        children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Prompt ',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  
                  ),
                ),
                Text(
                  'Inspirations',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Container(
  padding: EdgeInsets.all(30.0),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ Container(
            
             decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10.0),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 2,
        blurRadius: 5,
        offset: Offset(0, 3),
      ),
    ],
  ),
          height: 190.0,
          width: 220.0,
            child:Text(
              'Super mario on scooter,city background, unreal...',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                
              ),
            ),
          
              ),
            
          ],
        ),
      ),
      Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [ Container(
             decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10.0),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 2,
        blurRadius: 5,
        offset: Offset(0, 3),
      ),
    ],
  ),
          height: 190.0, // set the height of the Container widget to 100.0
          width: 220.0,
            child:Text(
              'Darth vader is bride with flowers, white wedding...',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            
          //  child: 
      // Padding(padding: EdgeInsets.all(20)),
      // Expanded(
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Text(
      //         'Column 2',
      //         style: TextStyle(
      //           fontSize: 24.0,
      //           fontWeight: FontWeight.bold,
      //         ),
      //       ),
      //       Text(
      //         'Content for column 2 goes here',
      //         style: TextStyle(
      //           fontSize: 16.0,
      //         ),
      //       ),
          
        ),
          ]
      ),
    ],
  ),
)

         ,
         const SizedBox(height: 15),
         Container(
          // alignment: AlignmentDirectional.centerStart,
  padding: EdgeInsets.all(30.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    // mainAxisSize: MainAxisSize.min,
    children: [
      Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.baseline,
          //   textBaseline: TextBaseline.alphabetic,
          children: [ Container(
             decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10.0),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 2,
        blurRadius: 5,
        offset: Offset(0, 3),
      ),
    ],
  ),
          height: 190.0, // set the height of the Container widget to 100.0
          width: 220.0,
            child:Text(
              'A grey and white striped cat wearing a lab coat and..',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          //  child: Text(
          //     'Content for column 1 goes here',
              // style: TextStyle(
              //   fontSize: 16.0,
              ),
            
          ],
        ),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.baseline,
          //   textBaseline: TextBaseline.alphabetic,
          children: [ Container(
             decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10.0),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 2,
        blurRadius: 5,
        offset: Offset(0, 3),
      ),
    ],
  ),
          height: 190.0, // set the height of the Container widget to 100.0
          width: 220.0,
            child:Text(
              'A robot looked sadly, style of Van Gogh',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
        
       ),
        ]
            ),
          ]
            ),
          
         ),
            const SizedBox(height: 15),
         Container(
          // alignment: AlignmentDirectional.centerStart,
  padding: EdgeInsets.all(30.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.end,
    crossAxisAlignment: CrossAxisAlignment.start,
    // mainAxisSize: MainAxisSize.min,
    children: [
      Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.baseline,
          //   textBaseline: TextBaseline.alphabetic,
          children: [ Container(
             decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10.0),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 2,
        blurRadius: 5,
        offset: Offset(0, 3),
      ),
    ],
  ),
          height: 190.0, // set the height of the Container widget to 100.0
          width: 220.0,
            child:Text(
              'Super mario,walking on the moon,octane render,...',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          //  child: Text(
          //     'Content for column 1 goes here',
              // style: TextStyle(
              //   fontSize: 16.0,
              ),
            
          ],
        ),
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.baseline,
          //   textBaseline: TextBaseline.alphabetic,
          children: [ Container(
             decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10.0),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 2,
        blurRadius: 5,
        offset: Offset(0, 3),
      ),
    ],
  ),
          height: 190.0, // set the height of the Container widget to 100.0
          width: 220.0,
            child:Text(
              'Background of mountains with snow on the top,a...',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
        ),
        ]
        ),
          
        )
       
        ]
        )
        
        )
        )
    );
  }
}
