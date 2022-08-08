import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ZaraOnbardingDesign extends StatelessWidget {
  const ZaraOnbardingDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 60,
        margin: const EdgeInsets.symmetric(horizontal: 12.0),
        decoration:
            const ShapeDecoration(shape: StadiumBorder(), color: Colors.black),
        child: const Center(
          child: Text(
            "Start",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 120,
                ),
                const Text(
                  "Create\nYour\nStyle",
                  style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Mix and match clothes\nto create the style you \nwant among +100 \nvariations",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                ),
                const Spacer(),
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 6,
                      backgroundColor: Colors.black,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: Colors.grey.shade300,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 4,
                      backgroundColor: Colors.grey.shade300,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
              right: 5,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Container(
                  height: 750,
                  width: 200,
                  child: Image.asset(
                    "assets/zara.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
