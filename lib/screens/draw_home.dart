// ignore_for_file: non_constant_identifier_names

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/widgets/big_card.dart';
import 'package:flutter_basics/widgets/course_card.dart';
import 'package:flutter_basics/widgets/search_card.dart';
import 'blogs.dart';
import 'dp.dart';

class DrawHome extends StatefulWidget {
  const DrawHome({Key? key}) : super(key: key);

  @override
  State<DrawHome> createState() => _DrawHomeState();
}

class _DrawHomeState extends State<DrawHome> {
  TextEditingController tController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 60,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Find your favorite course here 😗',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          CupertinoSearchTextField(
            controller: tController,
            onChanged: (value) {
              showModalBottomSheet(
                  backgroundColor: Colors.black45,
                  context: context,
                  builder: (context) {
                    return SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: const [
                          SearchCard(
                            coursePic: 'assets/images/avator.png',
                            courseName: 'Time Management',
                            courseDisc: 'Learn Time Management in No Time!',
                            coursePrice: '200',
                          ),
                          SearchCard(
                            coursePic: 'assets/images/rocket.png',
                            courseName: 'To The Moon',
                            courseDisc: 'Learn to code faster',
                            coursePrice: '260',
                          ),
                          SearchCard(
                            coursePic: 'assets/images/test.png',
                            courseName: 'Typescript',
                            courseDisc:
                                'Typescript is the new rule to code better tech in 2022',
                            coursePrice: '150',
                          ),
                          SearchCard(
                            coursePic: 'assets/images/avator.png',
                            courseName: 'Time Management 101',
                            courseDisc: 'Learn Time Management in No Time!',
                            coursePrice: '200',
                          ),
                          SearchCard(
                            coursePic: 'assets/images/avator.png',
                            courseName: 'Time Management',
                            courseDisc: 'Learn Time Management in No Time!',
                            coursePrice: '200',
                          ),
                          SearchCard(
                            coursePic: 'assets/images/rocket.png',
                            courseName: 'To The Moon',
                            courseDisc: 'Learn to code faster',
                            coursePrice: '260',
                          ),
                          SearchCard(
                            coursePic: 'assets/images/test.png',
                            courseName: 'Typescript',
                            courseDisc:
                                'Typescript is the new rule to code better tech in 2022',
                            coursePrice: '150',
                          ),
                          SearchCard(
                            coursePic: 'assets/images/avator.png',
                            courseName: 'Time Management 101',
                            courseDisc: 'Learn Time Management in No Time!',
                            coursePrice: '200',
                          ),
                        ],
                      ),
                    );
                  });
            },
            borderRadius: BorderRadius.circular(20),
            backgroundColor: Colors.white24,
            prefixIcon: const Icon(
              CupertinoIcons.search,
              color: Colors.redAccent,
            ),
            suffixIcon: const Icon(
              CupertinoIcons.xmark_circle_fill,
              color: Colors.redAccent,
            ),
            placeholder: 'Search Your Course',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 10,
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
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Courses By Mentors',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          Expanded(
            flex: 1,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <CourseCard>[
                  CourseCard(
                    author_name: 'Rishabh Sharma',
                    author_tag: "Founder, Fortheye",
                    cardColor: Colors.blueAccent,
                    author_picture: const ProfilePicture().profliePicture[0],
                    onpressed: () {
                      print('Hello Rishabh');
                    },
                  ),
                  CourseCard(
                    author_name: 'Kunal',
                    author_tag: "Founder, Cred",
                    cardColor: Colors.deepPurpleAccent,
                    author_picture: const ProfilePicture().profliePicture[1],
                    onpressed: () {
                      print('Hello Kunal');
                    },
                  ),
                  CourseCard(
                    author_name: 'Ankur Warikoo',
                    author_tag: "Founder, Nearby",
                    cardColor: Colors.redAccent,
                    author_picture: const ProfilePicture().profliePicture[2],
                    onpressed: () {
                      print('Hello Ankur');
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Blogs",
                style: const TextStyle(
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Blogs(),
                    ),
                  );
                },
                child: Text('View All'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  primary: Colors.redAccent,
                  elevation: 6.0,
                  textStyle: const TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
