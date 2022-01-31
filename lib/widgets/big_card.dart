import 'package:flutter/material.dart';

class BigCard extends StatelessWidget {
  final String? authorPicture;
  final String? courseName;
  final String? authorName;
  final String? courseImage;
  final Color? cardColor;

  String coursePic() {
    String courseImageAddress;
    courseImageAddress = courseImage ?? 'assets/images/avator.png';
    return courseImageAddress;
  }

  String authorPic() {
    String imgAddress;
    imgAddress = authorPicture ?? 'assets/images/face.png';
    return imgAddress;
  }

  const BigCard({
    @required this.cardColor,
    @required this.courseImage,
    @required this.authorPicture,
    @required this.courseName,
    @required this.authorName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(10),
          color: cardColor,
        ),
        height: 230,
        width: 261,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                coursePic(),
                height: 80,
                width: 80,
              ),
            ),
            FittedBox(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "$courseName",
                  style: const TextStyle(
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.redAccent,
                    child: Image.asset(authorPic()),
                    radius: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      '$authorName',
                      style: const TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
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
