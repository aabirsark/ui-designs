import 'dart:math';

import 'package:flutter/material.dart';

class FashionOnboard extends StatelessWidget {
  const FashionOnboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "IRNBY",
          style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
        height: 55,
        color: Colors.black,
        child: const Center(
          child: Text(
            "GET STARTED",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 500,
            child: Stack(
              children: [
                SizedBox(
                  height: 500,
                  width: double.infinity,
                  child: Image.asset(
                    "assets/fashion_onBoard.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 60,
                  right: -100,
                  left: -100,
                  child: Transform.rotate(
                    angle: pi * 0.05,
                    child: Container(
                      height: 20,
                      // width: MediaQuery.of(context).size.width + 20,
                      color: const Color(0xFFCCD5AE),
                      child: const Text(
                        "ALL THE TREANDY CLOTHES WITH THOUSANDS OF COLLECTIVE BRANDS OVER THE WORLD TO ENGAGE AND DELIVER THE QUALITY PRODUCT YOU NEED",
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 80,
                  right: -100,
                  left: -100,
                  child: Transform.rotate(
                    angle: pi * 1.9,
                    child: Container(
                      height: 20,
                      color: const Color(0xFFFAEDCD),
                      child: const Center(
                        child: Text(
                          "ALL THE TREANDY CLOTHES WITH THOUSANDS OF COLLECTIVE BRANDS OVER THE WORLD TO ENGAGE AND DELIVER THE QUALITY PRODUCT YOU NEED",
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "CLOTHES FOR\nEVERY(Y)BODY",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Not actually sport ",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
