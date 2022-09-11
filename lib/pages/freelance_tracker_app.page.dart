import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const Color yelloCanvasColor = Color(0xFFF9DB6A);
const Color darkCanvas = Color(0xFF111111);
const Color lightBlueCanvas = Color(0xFFF1EDE7);
const Color blueCanvas = Color(0xFFC8C8FF);
const String profileImage =
    "https://images.unsplash.com/photo-1640960543409-dbe56ccc30e2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjZ8fGF2YXRhcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60";

class FreeLanceTrackerApp extends StatelessWidget {
  const FreeLanceTrackerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {},
            icon: const ImageIcon(
              AssetImage("assets/icons/grid.png"),
              color: Colors.black,
            )),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: CircleAvatar(backgroundImage: NetworkImage(profileImage)),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const Text(
                  "Projects",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                Container(
                  decoration: const ShapeDecoration(
                      shape: StadiumBorder(), color: yelloCanvasColor),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(
                        CupertinoIcons.add,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Add", style: TextStyle(fontWeight: FontWeight.bold))
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: darkCanvas),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Total Budget",
                        style: TextStyle(color: Colors.white70),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "\$10,500",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Container(
                    height: 100,
                    width: 1,
                    color: Colors.white54,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Pending",
                        style: TextStyle(color: Colors.white70),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "\$3,200",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: const [
                Text(
                  "Recent Projects",
                  style: TextStyle(fontSize: 22),
                ),
                Spacer(),
                Icon(Icons.more_horiz)
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Column(
                children: items
                    .map((e) => Container(
                          height: 100,
                          color: e.color,
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Center(
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      e.title,
                                      style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      e.desc,
                                      style: const TextStyle(
                                          color: Colors.black87, fontSize: 13),
                                    )
                                  ],
                                ),
                                const Spacer(),
                                SizedBox(
                                  height: 60,
                                  width: 60,
                                  child: Stack(
                                    children: [
                                      SizedBox(
                                        height: 60,
                                        width: 60,
                                        child: CircularProgressIndicator(
                                          color: Colors.black,
                                          backgroundColor: Colors.black12,
                                          value: e.percent.toDouble() / 100,
                                          strokeWidth: 2,
                                        ),
                                      ),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Text("${e.percent}%",
                                              style: const TextStyle(fontSize: 18)))
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ))
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _ItemClas {
  final String title;
  final String desc;
  final int percent;
  final Color color;

  _ItemClas(
      {required this.color,
      required this.title,
      required this.desc,
      required this.percent});
}

List<_ItemClas> items = [
  _ItemClas(
      title: "Fitness App",
      desc: "App design & prototype",
      percent: 70,
      color: lightBlueCanvas),
  _ItemClas(
      title: "Unika Dashboard",
      desc: "wireframes & Design",
      percent: 60,
      color: blueCanvas),
  _ItemClas(
      title: "Orizin Guam",
      desc: "Web Design & Development",
      percent: 80,
      color: yelloCanvasColor),
];
