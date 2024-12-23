import 'package:facebook_clone/domain/custom_text_style.dart';
import 'package:flutter/material.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'facebook',
          style: myTextStyle30(
              textColor: Colors.blueAccent, textWeight: FontWeight.bold),
        ),
        actions: [
          Container(
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Icon(
              Icons.add_sharp,
              color: Colors.white,
              size: 30,
            ),
          ),
          const SizedBox(width: 5),
          const Icon(
            Icons.search_rounded,
            size: 40,
          ),
          const SizedBox(width: 5),
          Image.asset(
            "assets/Icons/chat.png",
            height: 30,
          )
        ],
      ),
    );
  }
}
