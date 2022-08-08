import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const Color secondryColor = Color(0xFFF7ECDD);

// images
const String image1 =
    "https://images.unsplash.com/photo-1497366811353-6870744d04b2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fHdvcmtzcGFjZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60";

const String image2 =
    "https://images.unsplash.com/photo-1499951360447-b19be8fe80f5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8ZGVza3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60";

// profile images
const String av1 =
    "https://images.unsplash.com/photo-1640952131659-49a06dd90ad2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjZ8fGF2YXRhcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60";

const String av2 =
    "https://images.unsplash.com/photo-1544724107-6d5c4caaff30?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTV8fGF2YXRhcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60";

// widget
class Socially extends StatelessWidget {
  const Socially({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: secondryColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 16.0),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Column(
                      children: [
                        const _SocialHeader(),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12.0, vertical: 8.0),
                              decoration: const ShapeDecoration(
                                  shape: StadiumBorder(), color: secondryColor),
                              child: Row(
                                children: [
                                  const ImageIcon(
                                      AssetImage("assets/icons/explore.png")),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Text(
                                    "Feed",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                            const ImageIcon(AssetImage("assets/icons/chat.png")),
                            const ImageIcon(
                                AssetImage("assets/icons/notification.png")),
                            const ImageIcon(AssetImage("assets/icons/user.png")),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SociallySearchBar()
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const SocialCard(),
            const SizedBox(
              height: 15,
            ),
            const SocialCard(),
          ],
        ),
      ),
    ));
  }
}

class SocialCard extends StatelessWidget {
  const SocialCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 26,
                  backgroundImage: NetworkImage(av1),
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "New Working Setup",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        const Text("Robert"),
                        const SizedBox(
                          width: 10,
                        ),
                        CircleAvatar(
                          radius: 2,
                          backgroundColor: Colors.grey.shade300,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "1 min ago",
                          style: TextStyle(color: Colors.grey.shade400),
                        )
                      ],
                    )
                  ],
                ),
                const Spacer(),
                Icon(
                  Icons.more_horiz,
                  color: Colors.grey.shade400,
                ),
                const SizedBox(
                  width: 10,
                ),
                Icon(
                  CupertinoIcons.multiply,
                  color: Colors.grey.shade400,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
              width: double.infinity,
              clipBehavior: Clip.antiAlias,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              height: 250,
              child: Image.network(
                image2,
                fit: BoxFit.cover,
              )),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: const [
                Icon(
                  CupertinoIcons.heart,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "523 likes",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(
                  CupertinoIcons.bookmark,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "20 saves",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(
                  CupertinoIcons.share,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "100 share",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SociallySearchBar extends StatelessWidget {
  const SociallySearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 28.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 55,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(200)),
              child: Row(
                children: [
                  const Text(
                    "What's on your mind, Jacob",
                    style: TextStyle(color: Colors.black54),
                  ),
                  const Spacer(),
                  const ImageIcon(
                    AssetImage("assets/icons/camera.png"),
                    size: 25,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Container(
            height: 55,
            width: 55,
            child: const Center(
                child: ImageIcon(
              AssetImage("assets/icons/upload.png"),
              size: 20,
            )),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black12)),
          )
        ],
      ),
    );
  }
}

class _SocialHeader extends StatelessWidget {
  const _SocialHeader({
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
              "Today",
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(
              height: 3,
            ),
            const Text(
              "18 jul, 2022",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            )
          ],
        ),
        const Spacer(),
        const ImageIcon(
          AssetImage("assets/icons/search _icon.png"),
          size: 20,
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          "Search",
          style: TextStyle(fontSize: 16, color: Colors.grey.shade800),
        )
      ],
    );
  }
}
