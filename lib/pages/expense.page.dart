import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const Color blackCanvasColor = Color(0xFF141318);
const Color yelloCanvas = Color(0xFFFECA65);
const Color greenCanvas = Color(0xFFB2DFB7);
const Color pinkCanvas = Color(0xFFF0BCE7);
const Color blueCanvas = Color(0xFFB9C9EC);
const Color redTextColor = Color(0xFFC48E90);

class ExpensePage extends StatelessWidget {
  const ExpensePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.grey.shade50,
        title: const Text(
          "Banksad",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: IconButton(
                onPressed: () {},
                icon: const ImageIcon(
                  AssetImage("assets/icons/alarm.png"),
                  color: Colors.black,
                  size: 30,
                )),
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(right: 16.0, left: 16, bottom: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const ImageIcon(
              AssetImage("assets/icons/home.png"),
              color: yelloCanvas,
            ),
            const ImageIcon(AssetImage("assets/icons/graph.png")),
            Container(
              height: 55,
              width: 55,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: blackCanvasColor,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        color: Colors.black45,
                        offset: Offset(1, 1))
                  ]),
              padding: const EdgeInsets.all(14),
              child: const ImageIcon(
                AssetImage(
                  "assets/icons/scan.png",
                ),
                color: Colors.white,
              ),
            ),
            const ImageIcon(AssetImage("assets/icons/wallet.png")),
            const ImageIcon(AssetImage("assets/icons/file.png")),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 180,
                    padding: const EdgeInsets.all(25.0),
                    decoration: BoxDecoration(
                        color: blackCanvasColor,
                        borderRadius: BorderRadius.circular(25)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "\$1,200",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            ImageIcon(
                              AssetImage("assets/icons/insta.png"),
                              color: Colors.white,
                              size: 40,
                            )
                          ],
                        ),
                        const Text(
                          "4225 **** *** ****",
                          style: TextStyle(color: Colors.white),
                        ),
                        Row(
                          children: const [
                            Text(
                              "Debit Card",
                              style: TextStyle(
                                  fontSize: 12, color: Colors.white60),
                            ),
                            Spacer(),
                            Text(
                              "09/24",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                DottedBorder(
                    borderType: BorderType.RRect,
                    color: Colors.grey,
                    dashPattern: const [5, 10],
                    strokeCap: StrokeCap.round,
                    radius: const Radius.circular(20),
                    child: const ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: SizedBox(
                        height: 180,
                        width: 50,
                        child: Center(
                          child: Icon(
                            CupertinoIcons.add,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: yelloCanvas,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          ImageIcon(
                            AssetImage("assets/icons/send.png"),
                            size: 20,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Transfer",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: greenCanvas,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          ImageIcon(
                            AssetImage("assets/icons/outbox.png"),
                            size: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Recieve",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                const Text(
                  "Recent Transactions",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                Icon(
                  Icons.more_horiz,
                  color: Colors.grey.shade700,
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: trans.length,
                itemBuilder: (context, index) => Container(
                  height: 70,
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      AspectRatio(
                        aspectRatio: 1,
                        child: Container(
                          height: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: trans.elementAt(index).color,
                          ),
                          child: Center(
                            child: ImageIcon(
                              AssetImage(trans.elementAt(index).imageUrl),
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 3,
                          ),
                          Text(
                            trans.elementAt(index).title,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            "3 Dec 2021",
                            style: TextStyle(
                                fontSize: 12, color: Colors.grey.shade800),
                          )
                        ],
                      ),
                      const Spacer(),
                      Text(
                        "${trans.elementAt(index).decrease ? '+' : "-"} \$ ${trans.elementAt(index).value}",
                        style: TextStyle(
                            color: trans.elementAt(index).decrease
                                ? Colors.redAccent
                                : Colors.greenAccent),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ExpenseModel {
  final String title;
  final Color color;
  final String imageUrl;
  final bool decrease;
  final int value;

  ExpenseModel(
      {required this.title,
      required this.color,
      required this.imageUrl,
      required this.decrease,
      required this.value});
}

final List<ExpenseModel> trans = [
  ExpenseModel(
      title: "Dribbble Premium",
      color: pinkCanvas,
      imageUrl: "assets/icons/dribbble.png",
      decrease: true,
      value: 180),
  ExpenseModel(
      title: "Snapchat Ads",
      color: yelloCanvas,
      imageUrl: "assets/icons/snapchat.png",
      decrease: false,
      value: 60),
  ExpenseModel(
      title: "Skype Premium",
      color: blueCanvas,
      imageUrl: "assets/icons/skype.png",
      decrease: true,
      value: 124),
];
