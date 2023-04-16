import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Screens/profile_screen.dart';

class BottomDrawer extends StatelessWidget {
  const BottomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        height: 200,
        child: ListView(
          children: [
            Row(
              children: [
                Icon(
                  Icons.settings,
                  color: Colors.blue.shade200,
                ),
                 const SizedBox(
                  width:12,
                ),
                Text(
                  'Settings',
                  style: GoogleFonts.montserrat(
                    color: Colors.blue.shade200,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyProfile(),
                  ),
                );
              },
              title: Text(
                'Profile Details',
                style: GoogleFonts.montserrat(
                  color: Colors.blue,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Copy Profile Link',
                style: GoogleFonts.montserrat(
                  color: Colors.blue,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Logout',
                style: GoogleFonts.montserrat(
                  color: Colors.blue,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
