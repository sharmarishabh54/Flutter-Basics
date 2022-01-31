import 'package:flutter/material.dart';
import 'package:flutter_basics/screens/draw_home.dart';
import 'package:flutter_basics/screens/draw_my_course.dart';
import 'draw_profile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final String _userName = const drawProfile().name;
  int currentIndex = 0; // 0 because first bottom navBar icon start with index 0
  int screen = 0;
  int? provideValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,

        currentIndex: currentIndex,
        onTap: (value) {
          currentIndex = value;
          switch (value) {
            case 0:
              provideValue = 0;
              //screenPage = Screen(screen: 0).makeScreen(0);
              break;
            case 1:
              provideValue = 1;
              //screenPage = Screen(screen: 0).makeScreen(0);
              break;
            case 2:
              provideValue = 2;
              break;
          }
          setState(() {});
        },
        // backgroundColor: Colors.black45,
        selectedItemColor: Colors.redAccent,
        unselectedItemColor: Colors.grey.shade700,
        unselectedLabelStyle: const TextStyle(
          fontSize: 14,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w800,
        ),
        selectedLabelStyle: const TextStyle(
          fontSize: 14,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w800,
        ),
        items: const [
          BottomNavigationBarItem(
              backgroundColor: Colors.black45,
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              backgroundColor: Colors.black45,
              icon: Icon(
                Icons.book,
                size: 30,
              ),
              label: 'Courses'),
          BottomNavigationBarItem(
              backgroundColor: Colors.black45,
              icon: Icon(
                Icons.person,
                size: 30,
              ),
              label: 'Profile')
        ],
      ),
      backgroundColor: Colors.black45,
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: Text(
          "Hi, $_userName 👋",
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              //We need to navigate to drawprofile and set bottom navigation bar to profile
            },
            child: CircleAvatar(
              backgroundColor: Colors.black54,
              radius: 18,
              child: Image.asset(const drawProfile().profile_picture),
            ),
          )
        ],
      ),
      body: makeDrawing(provideValue),
    );
  }
}

Widget makeDrawing(screen) {
  if (screen == 0) {
    return const DrawHome();
  } else if (screen == 1) {
    return const MyCourses();
  } else if (screen == 2) {
    return const drawProfile();
  } else {
    return const DrawHome();
  }
}

// ignore: camel_case_types, must_be_immutable
class draw extends StatelessWidget {
  late String? display;
  draw({Key? key, @required this.display}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "$display",
        style: const TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w800),
      ),
    );
  }
}
