import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 0.5,
            child: ListView(
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.blue.shade900,
                        Colors.blue,
                      ],
                    ),
                  ),
                  child: Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: CircleAvatar(
                            backgroundColor: Colors.white54,
                            radius: 50.0,
                            child: CircleAvatar(
                              radius: 45.0,
                              child: Image.asset('images/imagisea1.png'),
                            ),
                          ),
                        ),
                        Text("User Name",
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            )),
                        Text(
                          "UserId: kjbdofnapfmlbjfownfp7645998u0u",
                          style: GoogleFonts.montserrat(
                            color: Colors.white60,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                          ),
                          maxLines: 1,
                        ),
                      ],
                    ),
                  ),
                ),
                ListTile(
                  subtitle: Text("View/update your wallet balance.",
                      style: GoogleFonts.montserrat(color: Colors.grey)),
                  title: Text(
                    "Wallet",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  onTap: () {
                    //Navigate to wallet Screen
                  },
                ),
                ListTile(
                  subtitle: Text("View your owned NFTs.",
                      style: GoogleFonts.montserrat(color: Colors.grey)),
                  title: Text(
                    "Portfolio",
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  onTap: () {
                    //Navigate to portfolio Screen
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.share,
                    color: Colors.grey,
                  ),
                  title: Text(
                    "Share App Link With Friends",
                    style: GoogleFonts.montserrat(color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
