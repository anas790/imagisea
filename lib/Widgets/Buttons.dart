import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({
    super.key,
    required GlobalKey<ScaffoldState> scaffoldKey,
  }) : _scaffoldKey = scaffoldKey;

  final GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        _scaffoldKey.currentState!.openDrawer();
      },
      icon: const Icon(
        Icons.menu,
        color: Colors.white,
        size: 25,
      ),
    );
  }
}

class ActivityButton extends StatelessWidget {
  ActivityButton({
    super.key,
    required this.icon,
    required this.title,
  });

  String title;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: const BorderSide(color: Colors.grey)),
        ),
        backgroundColor:
        MaterialStateProperty.all(Colors.grey.shade100),
      ),
      onPressed: null,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  icon,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Text(
              title,
              style: const TextStyle(color: Colors.black),
            ),
            const Spacer(),
            const Icon(Icons.keyboard_arrow_right,
                color: Colors.black),
          ],
        ),
      ),
    );
  }
}

class CollectionButton extends StatelessWidget {
  CollectionButton({
    super.key,
    required this.title,
    required this.specialCharacter
  });

  String specialCharacter;
  String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: const BorderSide(color: Colors.white)),
        ),
        backgroundColor: MaterialStateProperty.all(Colors.white),
      ),
      onPressed: null,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0)),
              child:  Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  specialCharacter,
                  style: const TextStyle(color: Colors.black),
                ),
              ),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Text(
              title,
              style: const TextStyle(color: Colors.black),
            ),
            const Spacer(),
            const Icon(Icons.keyboard_arrow_right,
                color: Colors.black),
          ],
        ),
      ),
    );
  }
}