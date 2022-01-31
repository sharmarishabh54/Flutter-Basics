import 'package:flutter/material.dart';

class Courses extends StatelessWidget {
  const Courses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black45,
        appBar: AppBar(
          backgroundColor: Colors.black45,
          title: const Text(
            "Dversity",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
          ),
        ),
        body: const Center(
          child: Text(
            'Hello Courses',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ));
  }
}
