import 'package:facebook_clone/domain/custom_text_style.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class UserVideoPostCard extends StatefulWidget {
  String userProfile;
  String userPost;
  String? postDate;
  String? numLike;
  String? numComment;
  String? numShare;
  String userName;

  UserVideoPostCard(
      {super.key,
      required this.userProfile,
      required this.userPost,
      required this.userName,
      this.numComment,
      this.numLike,
      this.numShare,
      this.postDate});

  @override
  State<UserVideoPostCard> createState() => _UserPostCardState();
}

class _UserPostCardState extends State<UserVideoPostCard> {
  // late VideoPlayerController
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipOval(
                      child: Image.asset(
                    widget.userProfile,
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  )),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.userName,
                          style: myTextStyle18(textWeight: FontWeight.bold)),
                      Row(
                        children: [
                          Text(
                            widget.postDate ?? "Today",
                            style: myTextStyle18(),
                          ),
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
        ),
        SizedBox(height: 15),
        Image.asset(widget.userProfile),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 100,
                child: Stack(
                  children: [
                    Image.asset("assets/Icons/like.png", height: 30),
                    Positioned(
                      left: 20,
                      child:
                          Image.asset("assets/Icons/heart (2).png", height: 30),
                    ),
                    Positioned(
                      left: 55,
                      child: Text(widget.numLike ?? "10k",
                          style: myTextStyle18(textColor: Colors.black87)),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Text(widget.numComment ?? "100 comments",
                      style: myTextStyle15(textColor: Colors.black54)),
                  const SizedBox(width: 10),
                  Text(widget.numShare ?? "10 shares",
                      style: myTextStyle15(textColor: Colors.black54))
                ],
              )
            ],
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.thumb_up_alt_outlined),
                  Text("Like", style: myTextStyle15())
                ],
              ),
              Row(
                children: [
                  Icon(Icons.chat_bubble_outline),
                  Text("Comment", style: myTextStyle15())
                ],
              ),
              Row(
                children: [
                  Icon(Icons.share),
                  Text("Send", style: myTextStyle15())
                ],
              ),
              Row(
                children: [
                  Icon(Icons.mobile_screen_share_rounded),
                  Text("Share", style: myTextStyle15())
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 10.0)
      ],
    );
  }
}
