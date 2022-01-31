// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'about.dart';

// ignore: camel_case_types
class drawProfile extends StatelessWidget {
  final String name = 'Jack';
  final String prof = 'Flutter Dev';
  final int size = 30;
  final String profile_picture = 'assets/images/face.png';
  const drawProfile();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            child: Hero(
              tag: 'dp',
              child: Image.asset(
                profile_picture,
                height: 150,
                width: 150,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "$prof",
            style: const TextStyle(
              fontSize: 30,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(30),
                color: Colors.white24),
            margin: const EdgeInsetsDirectional.only(top: 30),
            height: 280,
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Card(
                    child: ListTile(
                      leading: const Icon(
                        Icons.person,
                        color: Colors.redAccent,
                        size: 30,
                      ),
                      title: Text(
                        name,
                        style: const TextStyle(
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Card(
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.redAccent,
                        size: 30,
                      ),
                      title: Text(
                        '+91-6565119087',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Card(
                    child: ListTile(
                      leading: Icon(
                        Icons.mail,
                        color: Colors.redAccent,
                        size: 30,
                      ),
                      title: Text(
                        'jack@flutter',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: FloatingActionButton.extended(
              backgroundColor: Colors.redAccent,
              icon: const Icon(
                Icons.person_outline_outlined,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const About(),
                  ),
                );
              },
              label: const Text(
                "About",
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
