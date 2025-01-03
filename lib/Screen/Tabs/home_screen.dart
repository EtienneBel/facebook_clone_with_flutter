import 'package:facebook_clone/Widgets/other_user_story_card.dart';
import 'package:facebook_clone/Widgets/user_post_card.dart';
import 'package:facebook_clone/domain/custom_text_style.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ClipOval(
                child: Image.asset(
                  'assets/Images/EtienneBel (1).jpg',
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 250,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "What's on your mind ?",
                    hintStyle: myTextStyle15(),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(color: Colors.black54, width: 1),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(color: Colors.black54, width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(color: Colors.black54, width: 1),
                    ),
                  ),
                ),
              ),
              const Icon(Icons.image, color: Colors.green)
            ],
          ),
          Divider(thickness: 4),
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(
                  height: 200,
                  width: 120,
                  child: Card(
                    child: Stack(
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/Images/EtienneBel (1).jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 103,
                          left: 38,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(color: Colors.white, width: 2),
                            ),
                            child: const Icon(
                              Icons.add,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 4,
                          left: 14,
                          child: Text(
                            "Create story",
                            style: myTextStyle15(),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                OtherUserStoryCard(
                  userName: "Priya Sharma",
                  imagePath:
                      "assets/Images/pexels-dana-tentis-118658-364382.jpg",
                ),
                OtherUserStoryCard(
                  userName: "Riy",
                  imagePath: "assets/Images/girl5.jpeg",
                ),
                OtherUserStoryCard(
                  userName: "Pari",
                  imagePath:
                      "assets/Images/pexels-harsh-raj-gond-218020-1485031.jpg",
                ),
                OtherUserStoryCard(
                  userName: "pooja",
                  imagePath: "assets/Images/pexels-willsantos-3383019.jpg",
                ),
                OtherUserStoryCard(
                  userName: "sonam",
                  imagePath: "assets/Images/pexels-soldiervip-1386599.jpg",
                ),
                OtherUserStoryCard(
                  userName: "Muskan",
                  imagePath:
                      "assets/Images/pexels-ira-dulger-647031-1452129.jpg",
                ),
              ],
            ),
          ),
          Divider(thickness: 4),
          UserPostCard(
            userName: "Soname",
            userProfile: "assets/Images/girls3.jpg",
            userPost: "assets/Images/pexels-willsantos-3383019.jpg",
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            thickness: 3,
          ),
          const SizedBox(
            height: 10,
          ),
          UserPostCard(
            userName: "Beauty",
            userProfile: "assets/Images/pexels-leonnebrito-1844012.jpg",
            userPost: "assets/Images/pexels-nikki-williams-1761778-3334816.jpg",
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            thickness: 3,
          ),
          const SizedBox(
            height: 10,
          ),
          UserPostCard(
            userName: "cutie",
            userProfile: "assets/Images/girl5.jpeg",
            userPost: "assets/Images/pexels-pixabay-247908.jpg",
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            thickness: 3,
          ),
          const SizedBox(
            height: 10,
          ),
          UserPostCard(
            userName: "don't try",
            userProfile: "assets/Images/pexels-leonnebrito-1844012.jpg",
            userPost: "assets/Images/pexels-minan1398-941206.jpg",
          ),
        ],
      ),
    ));
  }
}
