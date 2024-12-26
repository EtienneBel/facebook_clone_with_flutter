import 'package:flutter/material.dart';

import '../../domain/custom_text_style.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:
              Text("Video", style: myTextStyle30(textWeight: FontWeight.bold)),
          actions: [
            Icon(Icons.person, size: 30),
            SizedBox(width: 10),
            Icon(Icons.search_rounded, size: 30)
          ],
        ),
        body: Column(
          children: [
            Divider(thickness: 3),
            // UserVideoPostCard(
            //     userProfile: "userProfile",
            //     userPost: "userPost",
            //     userName: "userName")
          ],
        ));
  }
}
