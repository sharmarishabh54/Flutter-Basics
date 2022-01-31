import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final Color? cardColor;
  final String? author_name;
  final String? author_tag;
  final String? author_picture;
  final void Function()? onpressed;

  // final navigateTo;
  const CourseCard(
      {@required this.author_name,
      @required this.author_tag,
      @required this.cardColor,
      @required this.author_picture,
      @required this.onpressed});

  String imgAddress() {
    String img_Address;
    img_Address = author_picture ?? 'assets/images/face.png';
    return img_Address;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GestureDetector(
        onTap: onpressed,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: BorderRadius.circular(30),
            color: cardColor,
          ),
          height: 100,
          width: 320,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: CircleAvatar(
                  backgroundColor: Colors.redAccent,
                  child: Image.asset(imgAddress()),
                  radius: 20,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$author_name',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w800),
                  ),
                  RichText(
                    text: TextSpan(
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600),
                      children: <TextSpan>[
                        TextSpan(text: "$author_tag | "),
                        const TextSpan(text: "Mentor"),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
