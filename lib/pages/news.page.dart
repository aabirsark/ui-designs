import 'dart:ui';

import 'package:flutter/material.dart';

const String image1 =
    "https://images.unsplash.com/photo-1611689342806-0863700ce1e4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZWFnbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60";
const String image2 =
    "https://images.unsplash.com/photo-1563223771-5fe4038fbfc9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGNvY2t0YWlsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60";

const Color primaryColorNs = Color(0xFF003566);

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        height: 70,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            ImageIcon(
              AssetImage("assets/icons/home.png"),
              color: primaryColorNs,
            ),
            ImageIcon(
              AssetImage(
                "assets/icons/compass.png",
              ),
              color: Colors.grey,
            ),
            ImageIcon(
              AssetImage(
                "assets/icons/bookmark (1).png",
              ),
              color: Colors.grey,
            ),
            ImageIcon(
              AssetImage(
                "assets/icons/user.png",
              ),
              color: Colors.grey,
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage("assets/profile1.jpg"),
                      radius: 25,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Hi Mark,",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text("Good Morning!",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: primaryColorNs))
                      ],
                    ),
                    const Spacer(),
                    const ImageIcon(
                        AssetImage("assets/icons/notifictaion_bell.png")),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                      color: Colors.grey.shade200),
                  child: Row(
                    children: [
                      ImageIcon(
                        AssetImage("assets/icons/search _icon.png"),
                        color: Colors.grey.shade400,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Search article... ",
                        style: TextStyle(
                            color: Colors.grey.shade400, fontSize: 15),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: const [
                      _SelectChips(
                        isSelected: true,
                        title: "Trending",
                      ),
                      _SelectChips(
                        isSelected: false,
                        title: "Cryptocurrency",
                      ),
                      _SelectChips(
                        isSelected: false,
                        title: "Technology",
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                        image: NetworkImage(image1), fit: BoxFit.cover),
                  ),
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 16, sigmaY: 16),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 12.0),
                                color: Colors.white12,
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage:
                                          AssetImage("assets/profile1.jpg"),
                                      radius: 14,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Charlie Herwitz",
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 16, sigmaY: 16),
                              child: Container(
                                padding: EdgeInsets.all(10.0),
                                color: Colors.white12,
                                child: ImageIcon(
                                  AssetImage("assets/icons/fav.png"),
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Spacer(),
                      Text(
                        "Bald Eagle sighting in Lowa, Minnesota",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Text(
                        "4 hrs ago * 3 min read",
                        style: TextStyle(fontSize: 12, color: Colors.white54),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Text(
                      "News For You",
                      style: TextStyle(
                          fontSize: 18,
                          color: primaryColorNs,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Text(
                      "Show More",
                      style: TextStyle(
                          fontSize: 16, color: Colors.blueGrey.shade500),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 90,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade100),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          width: 100,
                          child: Image.network(
                            image2,
                            fit: BoxFit.cover,
                          )),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Making the best cocktail at your home!",
                                style: TextStyle(
                                    color: primaryColorNs,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 13,
                              ),
                              Text(
                                "2hr ago * 4 min read",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ImageIcon(
                          AssetImage("assets/icons/fav.png"),
                          color: primaryColorNs,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _SelectChips extends StatelessWidget {
  const _SelectChips({
    Key? key,
    required this.isSelected,
    required this.title,
  }) : super(key: key);

  final bool isSelected;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 20.0),
      margin: EdgeInsets.only(right: 10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isSelected ? primaryColorNs : Colors.grey.shade100),
      child: Text(
        title,
        style: TextStyle(
            color: isSelected ? Colors.white : Colors.blueGrey.shade500,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
