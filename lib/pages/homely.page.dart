import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const Color fontColor = Color.fromARGB(255, 41, 41, 48);
const Color card1 = Color(0xFFF9E5C7);
const Color card2 = Color(0xFFE6DDD2);
const Color card3 = Color(0xFFC0D9CC);
const Color card4 = Color(0xFFEFBDAE);
const Color card1H = Color.fromARGB(255, 238, 208, 163);
const Color card2H = Color.fromARGB(255, 196, 188, 178);
const Color card3H = Color.fromARGB(255, 213, 236, 224);
const Color card4H = Color.fromARGB(255, 218, 173, 160);

const Color selectedColor = Color.fromARGB(255, 212, 179, 126);

List<String> filters = [
  "Popular",
  "Cheap rent",
  "Large",
  "Medium",
  "Small",
];

class HomelyDesign extends StatelessWidget {
  const HomelyDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                ImageIcon(
                  AssetImage(
                    "assets/icons/home_2.png",
                  ),
                  color: selectedColor,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Home",
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: selectedColor),
                )
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                ImageIcon(
                  AssetImage("assets/icons/toolkit.png"),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Toolkit",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                ImageIcon(
                  AssetImage("assets/icons/map.png"),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Pointer",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                ImageIcon(
                  AssetImage("assets/icons/profile.png"),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Profile",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "The right tools",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: fontColor),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Always at your fingertips",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: ImageIcon(AssetImage("assets/icons/bell.png")),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const CircleAvatar(
                    backgroundImage: AssetImage("assets/profile1.jpg"),
                    radius: 25,
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: ShapeDecoration(
                    shape: const StadiumBorder(), color: Colors.grey.shade100),
                child: Row(
                  children: const [
                    ImageIcon(AssetImage("assets/icons/search.png")),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Electric jigsaw",
                      style: TextStyle(fontSize: 11, color: Colors.grey),
                    ),
                    Spacer(),
                    ImageIcon(
                      AssetImage("assets/icons/settings.png"),
                      size: 16,
                    ),
                    SizedBox(
                      width: 10,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: filters
                      .map((e) => Container(
                          margin: const EdgeInsets.only(right: 10),
                          decoration: ShapeDecoration(
                              shape: const StadiumBorder(),
                              color: Colors.grey.shade100),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 14.0),
                          child: Text(
                            e,
                            style: const TextStyle(fontSize: 12),
                          )))
                      .toList(),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const Expanded(
                      child: HomelyCard(
                    highlight: Icon(
                      CupertinoIcons.add,
                      size: 22.0,
                    ),
                    title: "Yours set",
                    subtitle: "Assemble your toolbox",
                    bg: card1,
                    bgHighlight: card1H,
                  )),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: HomelyCard(
                    highlight: Image.asset(
                      "assets/apartment.png",
                      height: 22,
                    ),
                    title: "Apartment",
                    subtitle: "Fix a shelf, hung a picture, etc.",
                    bg: card2,
                    bgHighlight: card2H,
                  )),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                      child: HomelyCard(
                    highlight: Image.asset(
                      "assets/plant.png",
                      height: 22,
                    ),
                    title: "Garden",
                    subtitle: "Plow land, plant a tree, etc.",
                    bg: card3,
                    bgHighlight: card3H,
                  )),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: HomelyCard(
                    highlight: Image.asset(
                      "assets/house.png",
                      height: 22,
                    ),
                    title: "House",
                    subtitle: "Make a roof, erect wall, etc.",
                    bg: card4,
                    bgHighlight: card4H,
                  )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HomelyCard extends StatelessWidget {
  const HomelyCard({
    Key? key,
    required this.bg,
    required this.bgHighlight,
    required this.title,
    required this.subtitle,
    required this.highlight,
  }) : super(key: key);

  final Color bg;
  final Color bgHighlight;
  final String title;
  final String subtitle;
  final Widget highlight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: const EdgeInsets.all(20.0),
      decoration:
          BoxDecoration(color: bg, borderRadius: BorderRadius.circular(35)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: bgHighlight),
              padding: const EdgeInsets.all(10.0),
              child: highlight),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          Text(
            subtitle,
            style: const TextStyle(color: Colors.black45),
          )
        ],
      ),
    );
  }
}
