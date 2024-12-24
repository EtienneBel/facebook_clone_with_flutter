import 'package:facebook_clone/domain/custom_text_style.dart';
import 'package:flutter/material.dart';

class UserPostCard extends StatefulWidget {
  const UserPostCard({super.key});

  @override
  State<UserPostCard> createState() => _UserPostCardState();
}

class _UserPostCardState extends State<UserPostCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipOval(
                    child: Image.asset("assets/Images/woman.webp", height: 50)),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Simran",
                        style: myTextStyle18(textWeight: FontWeight.bold)),
                    Row(
                      children: [
                        Text("Dec 9 ", style: myTextStyle18()),
                        SizedBox(width: 5),
                        Icon(Icons.group, size: 18)
                      ],
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              width: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.more_horiz),
                  Icon(Icons.close_rounded),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
