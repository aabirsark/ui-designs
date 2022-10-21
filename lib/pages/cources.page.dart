import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const Color bgColor = Color(0xFF181818);
const Color yellowColor = Color(0xFFFBBF52);
const Color pinkColor = Color(0xFFFFA2FD);
const Color prupleColor = Color(0xFF5D54AB);
const String profileImageAddress =
    "https://images.unsplash.com/photo-1543610892-0b1f7e6d8ac1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjR8fGF2YXRhcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60";

class CourcesPage extends StatelessWidget {
  const CourcesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 2)),
                    child: Image.network(
                      profileImageAddress,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Hello Aabir",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        "Elementary level",
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: const [
                  Expanded(
                      child: _TaskIndicator(
                    noOfTask: 25,
                    isdark: false,
                  )),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: _TaskIndicator(
                    noOfTask: 17,
                    isdark: true,
                  )),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: const [
                  Text(
                    "Homework",
                    style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Class",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const _Card(),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Special for you",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                  child: GridView.builder(
                      itemCount: 4,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 15,
                          childAspectRatio: .9,
                          crossAxisSpacing: 15),
                      itemBuilder: (context, index) => Container(
                            padding: const EdgeInsets.all(16.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: cards[index].color,
                                border: Border.all(
                                    color: cards[index].showBorder
                                        ? Colors.white
                                        : Colors.transparent)),
                            child: Column(
                              children: [
                                Text(
                                  cards.elementAt(index).title,
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: cards.elementAt(index).showBorder
                                          ? Colors.white
                                          : Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Spacer(),
                                Row(
                                  children: [
                                    Text(
                                      cards.elementAt(index).subtitle,
                                      style: TextStyle(
                                          color:
                                              cards.elementAt(index).showBorder
                                                  ? Colors.white38
                                                  : Colors.black45,
                                          fontSize: 12),
                                    ),
                                    const Spacer(),
                                    Container(
                                      height: 45,
                                      width: 45,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,
                                      ),
                                      child: Center(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: const [
                                            Text(
                                              "20",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                            Text(
                                              "OCT",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )))
            ],
          ),
        ),
      ),
    );
  }
}

class _Card extends StatelessWidget {
  const _Card({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
      decoration: BoxDecoration(
        color: yellowColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
              height: 200,
              width: 150,
              child: SvgPicture.asset(
                "assets/windy.svg",
                fit: BoxFit.contain,
              )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    "Class 19",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 30),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "All About Travelling",
                    style: TextStyle(
                        color: Colors.black45, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  RichText(
                      text: const TextSpan(children: [
                    TextSpan(
                        text: "70",
                        style: TextStyle(fontSize: 18, color: Colors.black)),
                    TextSpan(
                        text: "/100%",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black,
                        )),
                  ])),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _TaskIndicator extends StatelessWidget {
  const _TaskIndicator({
    Key? key,
    required this.noOfTask,
    required this.isdark,
  }) : super(key: key);

  final int noOfTask;
  final bool isdark;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: isdark ? Colors.white : Colors.transparent),
          color: isdark ? Colors.transparent : Colors.white,
          borderRadius: BorderRadius.circular(20)),
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
              text: TextSpan(children: [
            TextSpan(
                text: "$noOfTask ",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: isdark ? Colors.white : Colors.black)),
            TextSpan(
                text: "tasks",
                style: TextStyle(
                    fontSize: 14, color: isdark ? Colors.white : Colors.black)),
          ])),
          const SizedBox(
            height: 5,
          ),
          Text(
            isdark ? "To complete" : "Completed",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: isdark ? Colors.white : Colors.black),
          )
        ],
      ),
    );
  }
}

class GridCardDetail {
  final String title;
  final String subtitle;
  final Color color;
  final bool showBorder;

  GridCardDetail(this.title, this.subtitle, this.color, this.showBorder);
}

List<GridCardDetail> cards = [
  GridCardDetail(
      "Speaking club with Kate", "Zoom lesson", Colors.transparent, true),
  GridCardDetail("Parties with Megan", "Live Stream", pinkColor, false),
  GridCardDetail("Grammer course", "Zoom lesson", yellowColor, false),
  GridCardDetail("Speaking club with Kate", "Live Stream", prupleColor, false),
];
