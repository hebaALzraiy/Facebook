import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("images/img2.jpg"),
              ),
              SizedBox(
                width: 10,
              ),
              Text("Lorem Ipsum is simply dummy text")
            ],
          ),
          Container(
            width: 370,
            height: 250,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            alignment: Alignment.bottomLeft,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage("images/img1.jpeg"))),
          ),
          Container(
            margin: EdgeInsets.only(left: 9.0, right: 9.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.face,
                        color: Colors.blue[800],
                        size: 40.0,
                      ),
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 40.0,
                      ),
                    ],
                  ),
                ),
                Text(
                  "122 comment",
                  style: TextStyle(
                      color: Colors.grey[500],
                      fontWeight: FontWeight.bold,
                      fontSize: 13.0),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
