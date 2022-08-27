import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const String avatar =
    "https://images.unsplash.com/photo-1640952131659-49a06dd90ad2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80";

class NFTdesignPage extends StatelessWidget {
  const NFTdesignPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 12.0),
        height: 65,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            ImageIcon(AssetImage("assets/icons/home.png")),
            ImageIcon(AssetImage("assets/icons/search.png")),
            Icon(CupertinoIcons.add),
            ImageIcon(AssetImage("assets/icons/fav.png")),
            ImageIcon(AssetImage("assets/icons/user.png")),
          ],
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.shade200),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "ONFT Word",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Welcome, soroushnz",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const Spacer(),
                const CircleAvatar(
                  backgroundImage: NetworkImage(avatar),
                  radius: 23,
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(99),
                  border: Border.all(color: Colors.grey.shade200)),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ImageIcon(
                    const AssetImage("assets/icons/search.png"),
                    size: 18,
                    color: Colors.grey.shade800,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Search NFT",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey.shade800,
                    ),
                  ),
                  const SizedBox(
                    width: 130,
                  ),
                  ImageIcon(
                    const AssetImage("assets/icons/filter.png"),
                    size: 18,
                    color: Colors.grey.shade800,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            RichText(
                text: const TextSpan(
                    style: TextStyle(fontSize: 26, color: Colors.black),
                    children: [
                  TextSpan(text: "Explore "),
                  TextSpan(
                      text: "NFT",
                      style: TextStyle(fontWeight: FontWeight.bold))
                ])),
            const SizedBox(
              height: 25,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: categories
                    .map((e) => Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: e == "Top NFTs"
                                  ? Colors.black
                                  : Colors.white),
                          padding: const EdgeInsets.all(12.0),
                          margin: const EdgeInsets.symmetric(horizontal: 6.0),
                          child: Text(
                            e,
                            style: TextStyle(
                                color: e == "Top NFTs"
                                    ? Colors.white
                                    : Colors.black),
                          ),
                        ))
                    .toList(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 370,
              child: Stack(
                children: const [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: _NftCard(
                      isDark: true,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: _NftCard(
                      isDark: true,
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: _NftCard(),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}

class _NftCard extends StatelessWidget {
  const _NftCard({
    Key? key,
    // ignore: unused_element
    this.isDark = false,
  }) : super(key: key);

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: isDark ? 0.9 : 1,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: SizedBox(
          height: 350,
          width: 280,
          child: Stack(
            children: [
              Image.asset(
                "assets/nft.jpeg",
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: ClipRRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                      child: Container(
                        height: 80,
                        width: double.infinity,
                        padding: const EdgeInsets.all(16.0),
                        color: Colors.transparent,
                        child: Column(
                          children: [
                            Row(
                              children: const [
                                Text(
                                  "23H : 22M : 45S",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Spacer(),
                                Text(
                                  "2.5 ETH",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Row(
                              children: const [
                                Text(
                                  "Remaining Time",
                                  style: TextStyle(color: Colors.white60),
                                ),
                                Spacer(),
                                Text(
                                  "Last Bid",
                                  style: TextStyle(color: Colors.white60),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )),
              Container(
                color:
                    isDark ? Colors.black.withOpacity(0.8) : Colors.transparent,
              )
            ],
          ),
        ),
      ),
    );
  }
}

List<String> categories = [
  "Recent",
  "Top NFTs",
  "Art",
  "Gaming",
  "Fashion",
  "Sports"
];
