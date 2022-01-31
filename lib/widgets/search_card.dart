import 'package:flutter/material.dart';

class SearchCard extends StatelessWidget {
  final String? coursePic;
  final String? courseName;
  final String? courseDisc;
  final String? coursePrice;

  String coursePicAddress() {
    String coursePicAddress;
    coursePicAddress = coursePic ?? 'assets/images/avator.png';
    return coursePicAddress;
  }

  const SearchCard(
      {@required this.coursePic,
      @required this.courseName,
      @required this.courseDisc,
      @required this.coursePrice});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            height: 120,
            width: 370,
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    coursePicAddress(),
                    height: 80,
                    width: 80,
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '$courseName',
                        style: const TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.black54,
                        ),
                      ),
                      Text(
                        '$courseDisc',
                        style: const TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: -2,
            right: 4,
            child: ElevatedButton(
              onPressed: () {},
              child: Text('\$ $coursePrice'),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                primary: Colors.redAccent,
                elevation: 6.0,
                textStyle: const TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
