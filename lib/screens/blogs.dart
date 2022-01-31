import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:flutter_basics/widgets/blog_card.dart';

class Blogs extends StatefulWidget {
  const Blogs({Key? key}) : super(key: key);

  @override
  _BlogsState createState() => _BlogsState();
}

class _BlogsState extends State<Blogs> {
  final url = "https://jsonplaceholder.typicode.com/posts";

  var _postJson = [];

  void fetchposts() async {
    try {
      final response = await get(Uri.parse(url));
      final jsonData = jsonDecode(response.body) as List;

      setState(() {
        _postJson = jsonData;
      });
    } catch (err) {}
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchposts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: const Text(
          "Blogs",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
        ),
      ),
      backgroundColor: Colors.black45,
      body: ListView.builder(
        itemCount: _postJson.length,
        itemBuilder: (context, i) {
          final post = _postJson[i];
          return Bcard(
            title: "${post["title"]}",
            body: "${post["body"]}",
          );
          // return ListTile(
          //   tileColor: Colors.redAccent,
          //   title: Text(
          //     "${post["title"]}",
          //     style: const TextStyle(color: Colors.white),
          //   ),
          //   subtitle: Text(
          //     "${post["body"]}",
          //     style: const TextStyle(color: Colors.white),
          //   ),
          // );
        },
      ),
    );
  }
}
