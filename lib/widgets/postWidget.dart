import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  final String userName;
  final String userImage;
  final String content;
  final String postTime;

  PostWidget({
    required this.userName,
    required this.userImage,
    required this.content,
    required this.postTime,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(userImage),
                      radius: 40,
                    ),
                    SizedBox(width: 10),
                    Text(
                      userName,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    Spacer(),
                    Text(postTime)
                  ],
                ),
                SizedBox(height: 8.0),
                SizedBox(
                  height: 8,
                ),
                Text(
                  content,
                  style: TextStyle(fontSize: 16),
                ),
                Divider(
                  thickness: 1,
                ),
                Row(
                  children: [
                    Spacer(),
                    IconButton(onPressed: () {}, icon: Icon(Icons.thumb_up)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.message)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.share)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.bookmark_add))
                  ],
                )
              ]),
        ));
  }
}
