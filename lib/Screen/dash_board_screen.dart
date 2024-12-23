import 'package:facebook_clone/Screen/Tabs/friends_screen.dart';
import 'package:facebook_clone/Screen/Tabs/home_screen.dart';
import 'package:facebook_clone/Screen/Tabs/notification_screen.dart';
import 'package:facebook_clone/Screen/Tabs/profile_screen.dart';
import 'package:facebook_clone/Screen/Tabs/store_screen.dart';
import 'package:facebook_clone/Screen/Tabs/video_screen.dart';
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
          length: 6,
          child: Scaffold(
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
                    size: 20,
                  ),
                ),
                const SizedBox(width: 5),
                const Icon(
                  Icons.search_rounded,
                  size: 30,
                ),
                const SizedBox(width: 5),
                Image.asset(
                  "assets/Icons/chat.png",
                  height: 20,
                ),
                const SizedBox(width: 5),
              ],
              bottom: TabBar(
                  indicatorColor: Colors.blueAccent,
                  labelColor: Colors.blueAccent,
                  automaticIndicatorColorAdjustment: true,
                  tabs: [
                    Tab(icon: Icon(Icons.home_filled)),
                    Tab(icon: Icon(Icons.video_collection)),
                    Tab(icon: Icon(Icons.group)),
                    Tab(icon: Icon(Icons.storefront)),
                    Tab(icon: Icon(Icons.notifications)),
                    Tab(
                        icon: ClipOval(
                      child: Image.asset(
                        'assets/Images/girls3.jpg',
                        height: 30,
                        width: 40,
                        fit: BoxFit.cover,
                      ),
                    )),
                  ]),
            ),
            body: const TabBarView(children: [
              ProfileScreen(),
              HomeScreen(),
              VideoScreen(),
              FriendsScreen(),
              StoreScreen(),
              NotificationScreen(),
            ]),
          )),
    );
  }
}
