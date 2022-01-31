import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: const Text(
          "About Me",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
        ),
      ),
      backgroundColor: Colors.black45,
      body: Center(
        child: Column(
          children: [
            ClipRRect(
              child: Hero(
                tag: 'dp',
                child: Image.asset(
                  'assets/images/face.png',
                  height: 200,
                  width: 150,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white24),
              margin: const EdgeInsetsDirectional.only(top: 30),
              height: 450,
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
                    child: Center(
                      child: Text(
                        " Description ",
                        style: TextStyle(
                          color: Colors.red.shade300,
                          fontFamily: 'Poppins',
                          fontSize: 34,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15),
                        child: RichText(
                          text: TextSpan(
                            style: const TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                  text: '👋',
                                  style: TextStyle(
                                    color: Colors.red.shade300,
                                    fontFamily: 'Poppins',
                                    fontSize: 34,
                                    fontWeight: FontWeight.w500,
                                  )),
                              const TextSpan(text: '\nHello There,'),
                              TextSpan(
                                text: '\nJack',
                                style: TextStyle(
                                  color: Colors.purple.shade400,
                                  fontFamily: 'Poppins',
                                  fontSize: 24,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              const TextSpan(
                                text:
                                    " this s,ide, I'm passionate   and Flutter developer, sharing my knowledge with the community and contributing to open-source projects.",
                              ),
                              TextSpan(
                                text: ' Tech Entrepreneur',
                                style: TextStyle(
                                  color: Colors.purple.shade400,
                                  fontFamily: 'Poppins',
                                  fontSize: 24,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              const TextSpan(
                                text:
                                    " and Flutter developer, sharing my knowledge with the community and contributing to",
                              ),
                              TextSpan(
                                text: ' Open-Source',
                                style: TextStyle(
                                  color: Colors.purple.shade400,
                                  fontFamily: 'Poppins',
                                  fontSize: 24,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              const TextSpan(
                                text: " projects.",
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
