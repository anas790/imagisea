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
      padding: const EdgeInsets.only(top: 30.0, bottom: 10, left: 10),
      child: SizedBox(
        height: 200,
        child: ListView(
          children: [
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyProfile(),
                  ),
                );
              },
              title: Row(
                children: [
                  Icon(
                    Icons.account_circle,
                    color: Colors.blue.shade200,
                  ),
                  const SizedBox(
                    width:12,
                  ),
                  Text(
                    'My Profile',
                    style: GoogleFonts.montserrat(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(
                    Icons.insert_link_rounded,
                    color: Colors.blue.shade200,
                  ),
                  const SizedBox(
                    width:12,
                  ),
                  Text(
                    'Copy Profile Link',
                    style: GoogleFonts.montserrat(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Row(
                children: [
                  Icon(
                    Icons.logout,
                    color: Colors.blue.shade200,
                  ),
                  const SizedBox(
                    width:12,
                  ),
                  Text(
                    'Logout',
                    style: GoogleFonts.montserrat(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}