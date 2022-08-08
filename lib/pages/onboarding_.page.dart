import 'dart:ui';

import 'package:flutter/material.dart';

class OnBoardingPage1 extends StatelessWidget {
  const OnBoardingPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 330,
            right: 100,
            child: CustomPaint(
              painter: OvalBoady(const Color.fromARGB(255, 10, 226, 255)),
            ),
          ),
          Positioned(
            top: 500,
            right: 200,
            child: CustomPaint(
              painter: OvalBoady(const Color.fromARGB(255, 25, 255, 140)),
            ),
          ),
          ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
              child: Container(
                color: Colors.white10,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "GET SCRAP METAL EASY AND SAFE",
                  style: const TextStyle(fontSize: 70, fontWeight: FontWeight.w900),
                ),
                const Spacer(),
                Container(
                  height: 60,
                  width: double.infinity,
                  child: const Center(
                    child: Text(
                      "Rent Farmer Troops",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class OvalBoady extends CustomPainter {
  final Color color;

  OvalBoady(
    this.color,
  );

  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect = Rect.fromCenter(
        center: Offset(size.width / 2, size.height / 2),
        width: 300,
        height: 320);
    final Paint paint = Paint()..color = color;
    canvas.drawOval(rect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
