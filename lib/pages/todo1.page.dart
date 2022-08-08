import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const canvasColor = Color(0xFFFAF4F2);

// images
const String img1 =
    "https://images.unsplash.com/photo-1618641986557-1ecd230959aa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZmlsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60";

const String img2 =
    "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjZ8fHByb2ZpbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60";

const String img3 =
    "https://images.unsplash.com/photo-1517070208541-6ddc4d3efbcb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjl8fHByb2ZpbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60";

const String img4 =
    "https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzl8fHByb2ZpbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60";

const String img5 =
    "https://images.unsplash.com/photo-1502823403499-6ccfcf4fb453?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDJ8fHByb2ZpbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60";

class TodoList extends StatelessWidget {
  const TodoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: canvasColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        height: 75,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const ImageIcon(
              AssetImage("assets/icons/home.png"),
              size: 26,
            ),
            ImageIcon(
              const AssetImage("assets/icons/explore.png"),
              size: 26,
              color: Colors.grey.shade500,
            ),
            ImageIcon(
              const AssetImage("assets/icons/list.png"),
              size: 26,
              color: Colors.grey.shade500,
            ),
            ImageIcon(
              const AssetImage("assets/icons/calendar.png"),
              size: 26,
              color: Colors.grey.shade500,
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 25.0, left: 16.0, right: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage: NetworkImage(img3),
                        radius: 25,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Aabir Sarkar",
                        style: TextStyle(
                            color: Colors.grey.shade700, fontSize: 16),
                      ),
                      const Spacer(),
                      const ImageIcon(
                          AssetImage("assets/icons/notifictaion_bell.png"))
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text("Tasks for today:",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      const Text(
                        "5 Available",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 65,
                    width: double.maxFinite,
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        const Text(
                          "Search",
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        const Spacer(),
                        const ImageIcon(
                          AssetImage("assets/icons/search _icon.png"),
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      const Text(
                        "Last Connections",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      const Spacer(),
                      Text(
                        "See all",
                        style: TextStyle(
                            fontSize: 16, color: Colors.grey.shade800),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        backgroundImage: NetworkImage(img1),
                        radius: 30,
                      ),
                      const CircleAvatar(
                        backgroundImage: NetworkImage(img2),
                        radius: 30,
                      ),
                      const CircleAvatar(
                        backgroundImage: NetworkImage(img4),
                        radius: 30,
                      ),
                      const CircleAvatar(
                        backgroundImage: NetworkImage(img5),
                        radius: 30,
                      ),
                      const CircleAvatar(
                        backgroundColor: Colors.white12,
                        child: Center(
                          child: Icon(
                            CupertinoIcons.add,
                            color: Colors.black,
                          ),
                        ),
                        radius: 30,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
                child: Container(
              padding:
                  const EdgeInsets.only(top: 30.0, left: 16.0, right: 16.0),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        "Active projects",
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Text(
                        "See all",
                        style: TextStyle(
                            fontSize: 16, color: Colors.grey.shade700),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Expanded(
                      child: ListView.builder(
                          itemBuilder: (ctx, index) => Container(
                                margin: const EdgeInsets.symmetric(vertical: 8),
                                padding: const EdgeInsets.all(18.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Colors.grey.shade400,
                                    )),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Numero 10",
                                          style: TextStyle(
                                              color: Colors.grey.shade800),
                                        ),
                                        const Spacer(),
                                        Text(
                                          "4 hrs",
                                          style: TextStyle(
                                              color: Colors.grey.shade800),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      "Blog and social posts",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "! Deadline is today",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey.shade800),
                                    )
                                  ],
                                ),
                              )))
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
