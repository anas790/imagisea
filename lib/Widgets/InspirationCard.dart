import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class InspirationCard extends StatelessWidget {
  InspirationCard({
    super.key,
    required this.image,
    required this.prompt,
  });

  String image;
  String prompt;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.3,
      height: MediaQuery.of(context).size.height * 0.3,
      decoration:  BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(40)),
        image: DecorationImage(
          image: AssetImage(
            image,
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              prompt,
              style: GoogleFonts.montserrat(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 50,
              width: 90,
              child: ElevatedButton(
                onPressed: null,
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all(Colors.black),
                  shape: MaterialStateProperty.all<
                      RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                ),
                child: Text(
                  'Try',
                  style: GoogleFonts.montserrat(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
