// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_2/storyWidget.dart';
import 'package:flutter_application_2/postWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: EdgeInsets.only(top: 50.0, left: 10.0, right: 10.0),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 20.0),
            child: Row(
              children: [
                Icon(Icons.camera_alt, size: 40.0),
                Container(
                  width: 280,
                  height: 50,
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.grey[350],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [Icon(Icons.search), Text("Search")],
                  ),
                ),
                Icon(
                  Icons.chat,
                  color: Colors.blue[800],
                  size: 40.0,
                )
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Stories",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17.0),
                ),
                Container(
                    child: Row(
                  children: [Text("See Archive"), Icon(Icons.arrow_right)],
                )),
              ],
            ),
          ),
          Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        StoryWidget(),
                        StoryWidget(),
                        StoryWidget(),
                        StoryWidget()
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: PostWidget(),
          ),
        ],
      ),
    ));
  }
}
