import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black45,
        appBar: AppBar(
          backgroundColor: Colors.black45,
          title: const Text(
            "Flutter Basics",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 100.0,
                backgroundImage: AssetImage(
                  'assets/images/face.png',
                ),
                backgroundColor: Colors.redAccent,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Flutter Dev",
                style: TextStyle(
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
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Card(
                        child: ListTile(
                          leading: Icon(
                            Icons.person,
                            color: Colors.redAccent,
                            size: 40,
                          ),
                          title: Text(
                            'Jeff',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w800),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                      child: Card(
                        child: ListTile(
                          leading: Icon(
                            Icons.phone,
                            color: Colors.redAccent,
                            size: 40,
                          ),
                          title: Text(
                            '911',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w800),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                      child: Card(
                        child: ListTile(
                          leading: Icon(
                            Icons.mail,
                            color: Colors.redAccent,
                            size: 40,
                          ),
                          title: Text(
                            'jeff@xyz.flutter',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w800),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
