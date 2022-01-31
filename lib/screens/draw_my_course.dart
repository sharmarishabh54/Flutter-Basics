import 'package:flutter/material.dart';
import 'package:flutter_basics/widgets/big_card.dart';

class MyCourses extends StatelessWidget {
  const MyCourses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Center(
          child: Text(
            'Timeline : 90%',
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
        ),
        Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(30),
                color: Colors.grey.shade700,
              ),
              height: 10,
              width: 380,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(30),
                color: Colors.green,
              ),
              height: 10,
              width: 350,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Total Certificate🏆 Earn : 4',
            style: TextStyle(
              fontSize: 24,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Total Courses You Have : 5',
            style: TextStyle(
              fontSize: 24,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Your Courses',
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ),
              Text(
                'View All',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w800,
                  color: Colors.redAccent,
                ),
              )
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <BigCard>[
                BigCard(
                  cardColor: Colors.deepOrange.shade300,
                  courseImage: 'assets/images/rocket.png',
                  authorPicture: 'assets/images/rishabh.png',
                  authorName: 'Rishabh Sharma',
                  courseName: 'Entrepreneurship 101',
                ),
                BigCard(
                  cardColor: Colors.blue.shade300,
                  courseImage: 'assets/images/test.png',
                  authorPicture: 'assets/images/ankur.png',
                  authorName: 'Ankur Wareko',
                  courseName: 'Time Management In 90 Mins.',
                ),
                BigCard(
                  cardColor: Colors.purple.shade400,
                  courseImage: 'assets/images/avator.png',
                  authorPicture: 'assets/images/kunal.png',
                  authorName: 'Kunal Shah',
                  courseName: 'Tips for Wealth & Success',
                ),
                BigCard(
                  cardColor: Colors.green.shade300,
                  courseImage: 'assets/images/test.png',
                  authorPicture: 'assets/images/ankur.png',
                  authorName: 'Ankur Wareko',
                  courseName: 'Time Management In 90 Mins.',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
