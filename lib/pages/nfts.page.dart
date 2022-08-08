import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const Color blueColor = Color(0xFF552DDC);
const Color lightPinkColor = Color(0xFFB7BBF5);
const Color pinkColor = Color(0xFFDE7AE7);
const Color yellowColor = Color(0xFFEDFB8B);
const Color canvasColor = Color.fromARGB(85, 22, 22, 24);
const Color blueGradientColor = Color(0xFFAC98EA);

class NFTSPage extends StatelessWidget {
  const NFTSPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: ClipRRect(
          borderRadius: BorderRadius.circular(300),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
            child: Container(
              height: 90,
              width: 90,
              color: Colors.white10,
              child: Center(
                child: Container(
                  height: 65,
                  width: 65,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: const Center(
                    child: Icon(
                      CupertinoIcons.add,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        body: Stack(
          children: [
            Positioned(
              top: 30,
              child: CustomPaint(
                painter: CirclePainter(300, blueColor),
              ),
            ),
            Positioned(
              right: 0,
              child: CustomPaint(
                painter: CirclePainter(200, lightPinkColor),
              ),
            ),
            Positioned(
              right: 0,
              top: 300,
              child: CustomPaint(
                painter: CirclePainter(200, pinkColor),
              ),
            ),
            Positioned(
              top: 300,
              child: CustomPaint(
                painter: CirclePainter(100, pinkColor),
              ),
            ),
            Positioned(
              top: 450,
              left: 100,
              child: CustomPaint(
                painter: CirclePainter(100, blueColor),
              ),
            ),
            Positioned(
              top: 500,
              left: 0,
              right: 0,
              child: CustomPaint(
                painter: CirclePainter(50, blueColor),
              ),
            ),
            Positioned(
              top: 600,
              right: 100,
              child: CustomPaint(
                painter: CirclePainter(50, blueColor),
              ),
            ),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 90, sigmaY: 90),
              child: Container(),
            ),
            SafeArea(
                child: Column(
              children: [
                const Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                  child: _NFTheader(),
                ),
                const SizedBox(
                  height: 20,
                ),
                const NewNFTCollection(),
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: GridView.builder(
                      physics: const BouncingScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: .8, crossAxisCount: 2),
                      itemCount: cards.length,
                      itemBuilder: (ctx, index) => Container(
                            margin: const EdgeInsets.all(5.0),
                            decoration: BoxDecoration(
                                color: cards[index].color,
                                borderRadius: BorderRadius.circular(40)),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 26.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 24.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              cards[index].title,
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: cards[index].textDark
                                                      ? Colors.black
                                                      : Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            const Spacer(),
                                            Text(
                                              "+5.76%",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: cards[index].textDark
                                                      ? Colors.black
                                                      : Colors.white),
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 6,
                                        ),
                                        Text(
                                          cards[index].id,
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: cards[index].textDark
                                                  ? Colors.black
                                                  : Colors.white60),
                                        )
                                      ],
                                    ),
                                  ),
                                  const ImageIcon(
                                    AssetImage("assets/hard_graph.png"),
                                    size: 100,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 25,
                                          backgroundColor: Colors.white12,
                                          child: Image.asset(
                                            cards.elementAt(index).imageUrl,
                                            height: 35,
                                          ),
                                        ),
                                        const Spacer(),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              "0.00065",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: cards[index].textDark
                                                      ? Colors.black
                                                      : Colors.white),
                                            ),
                                            const SizedBox(
                                              height: 6,
                                            ),
                                            Text(
                                              "\$21.596",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: cards[index].textDark
                                                      ? Colors.black54
                                                      : Colors.white60),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )),
                )
              ],
            ))
          ],
        ));
  }
}

class NewNFTCollection extends StatelessWidget {
  const NewNFTCollection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 6.0),
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30.0),
      child: Column(
        children: [
          Row(
            children: [
              const Text(
                "We found small\nbalances on your wallet",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    "18",
                    style: TextStyle(fontSize: 18),
                  ),
                  const Text(
                    "coins",
                    style: TextStyle(fontSize: 12, color: Colors.white54),
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  child: const Icon(
                    CupertinoIcons.right_chevron,
                    color: Colors.black,
                  ),
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                ),
                const Spacer(),
                Text(
                  "Check Balances",
                  style: TextStyle(color: Colors.white.withOpacity(0.8)),
                ),
                const Spacer(),
                const ImageIcon(
                  AssetImage("assets/icons/forward.png"),
                  size: 18,
                ),
                const SizedBox(
                  width: 20,
                )
              ],
            ),
            width: double.infinity,
            decoration: const ShapeDecoration(
                shape: StadiumBorder(), color: Colors.white12),
          )
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.2),
          borderRadius: BorderRadius.circular(40)),
    );
  }
}

class _NFTheader extends StatelessWidget {
  const _NFTheader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Main Wallet (BTC)",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 3,
            ),
            const Text(
              "0.002541",
              style: TextStyle(
                fontSize: 50,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 14.0, vertical: 8.0),
              decoration: const ShapeDecoration(
                  shape: StadiumBorder(), color: yellowColor),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  ImageIcon(AssetImage("assets/icons/arrows.png"),
                      color: Colors.black),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "+3.21%",
                    style: TextStyle(color: Colors.black),
                  )
                ],
              ),
            )
          ],
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.all(2.0),
          height: 140,
          width: 80,
          decoration: const ShapeDecoration(
              shape: StadiumBorder(), color: Colors.white12),
          child: Column(
            children: [
              Container(
                height: 80,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.white10),
                child: const Center(
                  child: ImageIcon(
                    AssetImage("assets/icons/grid.png"),
                    size: 25,
                  ),
                ),
              ),
              const Spacer(),
              const ImageIcon(
                AssetImage("assets/icons/row.png"),
                color: Colors.white54,
                size: 23,
              ),
              const SizedBox(
                height: 10,
              ),
              const Spacer(),
            ],
          ),
        )
      ],
    );
  }
}

class CirclePainter extends CustomPainter {
  final double radius;
  final Color color;

  CirclePainter(this.radius, this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()..color = color;
    canvas.drawCircle(Offset(size.width / 2, size.height / 2), radius, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class NFTcards {
  final String title;
  final String id;
  final String imageUrl;
  final Color color;
  final bool textDark;

  NFTcards(
      {required this.title,
      required this.id,
      required this.color,
      required this.imageUrl,
      required this.textDark});
}

List<NFTcards> cards = [
  NFTcards(
      title: "BTC",
      id: "Bitcoin",
      color: blueGradientColor,
      imageUrl: "assets/icons/bitcoin.png",
      textDark: false),
  NFTcards(
      title: "SOL",
      id: "Solana",
      color: canvasColor,
      imageUrl: "assets/icons/solana.png",
      textDark: false),
  NFTcards(
      title: "DASH",
      id: "Dash",
      color: canvasColor,
      imageUrl: "assets/icons/dash.png",
      textDark: false),
  NFTcards(
      title: "ETH",
      id: "Ethereum",
      color: yellowColor,
      imageUrl: "assets/icons/ethereum.png",
      textDark: true),
];
