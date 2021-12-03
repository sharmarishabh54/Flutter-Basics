import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Card(
                        child: ListTile(
                          leading: Icon(
                            Icons.person,
                            color: Colors.redAccent,
                            size: 30,
                          ),
                          title: Text(
                            'Jeff',
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
                    Padding(
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
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Card(
                        child: ListTile(
                          leading: Icon(
                            Icons.mail,
                            color: Colors.redAccent,
                            size: 30,
                          ),
                          title: Text(
                            'jeff@xyz.flutter',
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
                    print("Working");
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
        ),
      ),
    );
  }
}
