import 'package:facebook_clone/domain/custom_text_style.dart';
import 'package:flutter/material.dart';

class OtherUserStoryCard extends StatefulWidget {
  String userName;
  String imagePath;

  OtherUserStoryCard(
      {super.key, required this.userName, required this.imagePath});

  @override
  State<OtherUserStoryCard> createState() => _OtherUserStoryCardState();
}

class _OtherUserStoryCardState extends State<OtherUserStoryCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 120,
      child: Card(
        child: Stack(
          children: [
            Container(
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                image: DecorationImage(
                  image: AssetImage(widget.imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 5,
              left: 5,
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: Colors.blueAccent, width: 2),
                  image: DecorationImage(
                      image: AssetImage(widget.imagePath), fit: BoxFit.cover),
                ),
              ),
            ),
            Positioned(
              bottom: 4,
              left: 14,
              child: Text(
                widget.userName,
                style: myTextStyle15(textColor: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
