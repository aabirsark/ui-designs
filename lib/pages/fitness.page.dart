import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FitnessWidget extends StatelessWidget {
  const FitnessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: CircleAvatar(
              backgroundColor: Colors.black,
              child: ImageIcon(
                AssetImage("assets/icons/apps.png"),
                size: 18,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFFCEFF67)),
                height: 50,
                width: 50,
                padding: const EdgeInsets.all(12.0),
                child: const Center(
                    child: ImageIcon(AssetImage("assets/icons/home.png"))),
              ),
              const SizedBox(
                height: 50,
                width: 50,
                child: Center(
                    child: ImageIcon(AssetImage("assets/icons/bookmark.png"))),
              ),
              const SizedBox(
                height: 50,
                width: 50,
                child: Center(
                    child: ImageIcon(AssetImage("assets/icons/timer.png"))),
              ),
              const SizedBox(
                height: 50,
                width: 50,
                child: Center(
                    child: ImageIcon(AssetImage("assets/icons/gow.png"))),
              ),
            ],
          ),
        ),
      ),
      body: DefaultTextStyle(
        style: TextStyle(
            fontFamily: GoogleFonts.oswald().fontFamily, color: Colors.black),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: TextSpan(
                      style: TextStyle(
                          fontSize: 35,
                          color: Colors.black,
                          fontFamily: GoogleFonts.oswald().fontFamily),
                      children: const [
                    TextSpan(
                      text: "Hi, ",
                    ),
                    TextSpan(
                        text: " Aabir",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ])),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Your boards looks \nso good",
                style: TextStyle(
                    fontSize: 25,
                    fontFamily: GoogleFonts.mukta().fontFamily,
                    letterSpacing: .5,
                    color: Colors.grey.shade800,
                    height: 1.2),
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  fontSize: 50,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: GoogleFonts.oswald().fontFamily),
                              children: [
                            const TextSpan(
                              text: "61.2 ",
                            ),
                            TextSpan(
                                text: "lb",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: GoogleFonts.mukta().fontFamily,
                                    fontSize: 20)),
                          ])),
                      Text(
                        "Current Weight",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: GoogleFonts.mukta().fontFamily,
                          letterSpacing: .5,
                          color: Colors.grey.shade700,
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  fontSize: 35,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: GoogleFonts.oswald().fontFamily),
                              children: [
                            const TextSpan(
                              text: "2.5 ",
                            ),
                            TextSpan(
                                text: "lb",
                                style: TextStyle(
                                    fontFamily: GoogleFonts.mukta().fontFamily,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25)),
                          ])),
                      Stack(
                        children: [
                          Container(
                              height: 6,
                              width: 150,
                              decoration: const ShapeDecoration(
                                  shape: StadiumBorder(),
                                  color: Color(0xFF252727))),
                          Container(
                              height: 6,
                              width: 80,
                              decoration: const ShapeDecoration(
                                  shape: StadiumBorder(),
                                  color: Color(0xFFCEFF67))),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Left to Gain",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: GoogleFonts.mukta().fontFamily,
                          letterSpacing: .5,
                          color: Colors.grey.shade700,
                        ),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                        height: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color(0xFFC0B6FF)),
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Row(
                              children: const [
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 23,
                                  child: ImageIcon(
                                    AssetImage(
                                      "assets/icons/pacman.png",
                                    ),
                                    size: 18,
                                    color: Colors.black,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "36%",
                                  style: TextStyle(fontSize: 25),
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Icon(
                                  Icons.arrow_downward,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                              ],
                            ),
                            const Spacer(),
                            RichText(
                                text: TextSpan(
                                    style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.black,
                                        fontFamily:
                                            GoogleFonts.oswald().fontFamily),
                                    children: [
                                  const TextSpan(
                                      text: "2.346 ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                      text: " Calories",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontFamily:
                                              GoogleFonts.mukta().fontFamily,
                                          color: Colors.grey.shade900)),
                                ])),
                          ],
                        )),
                  )),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.grey)),
                      child: Center(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            CircleAvatar(
                              radius: 25,
                              backgroundColor: Color(0xFFC0B6FF),
                              child: ImageIcon(
                                AssetImage("assets/icons/running.png"),
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "4.569",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Container(
                      height: 120,
                      width: 130,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.black),
                      child: const Center(
                          child: Text(
                        "Start",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: Colors.black)),
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Members",
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontFamily:
                                            GoogleFonts.mukta().fontFamily,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const Spacer(),
                                  SizedBox(
                                    height: 40,
                                    width: double.infinity,
                                    child: Stack(
                                      children: [
                                        const CircleAvatar(
                                          backgroundImage:
                                              AssetImage("assets/profile1.jpg"),
                                        ),
                                        const Positioned(
                                          left: 30,
                                          child: CircleAvatar(
                                            backgroundImage: AssetImage(
                                                "assets/profile2.jpg"),
                                          ),
                                        ),
                                        Positioned(
                                            left: 60,
                                            child: Container(
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(
                                                      color: Colors.black),
                                                  shape: BoxShape.circle),
                                              child: const Center(
                                                child: Text(
                                                  "+8",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            )),
                                      ],
                                    ),
                                  )
                                ]),
                          ))),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
