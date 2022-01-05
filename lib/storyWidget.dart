import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 230,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      alignment: Alignment.bottomLeft,
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage("images/img1.jpeg"))),
      child: Text(
        "Heba Alzraiy",
        style: TextStyle(
            fontSize: 12, color: Colors.white, fontWeight: FontWeight.w600),
      ),
    );
  }
}
