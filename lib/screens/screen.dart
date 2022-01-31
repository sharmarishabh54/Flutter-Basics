import 'package:flutter/material.dart';

class Screen {
  int? screen;
  Screen({@required this.screen});
  Widget makeScreen(screen) {
    if (screen == 0) {
      return const Text(
        "This is Home Page",
        style: TextStyle(
          fontSize: 14,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w800,
        ),
      );
    } else if (screen == 1) {
      return const Text(
        "This is Course Page",
        style: TextStyle(
          fontSize: 14,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w800,
        ),
      );
    } else if (screen == 2) {
      return const Text(
        "This is Course Profile Page",
        style: TextStyle(
          fontSize: 14,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w800,
        ),
      );
    } else {
      return const Text("Not Working");
    }
  }
}
