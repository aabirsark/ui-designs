import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 40,
        width: 150,
        decoration: const ShapeDecoration(
          shape: StadiumBorder(),
          color: Colors.black,
        ),
        child: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Icon(
                CupertinoIcons.add,
                color: Colors.white,
                size: 16,
              ),
              SizedBox(
                width: 10,
              ),
              Text("Add Task",
                  style: TextStyle(color: Colors.white, fontSize: 12))
            ],
          ),
        ),
      ),
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: const Center(
            child: CircleAvatar(
              backgroundColor: Colors.black,
              child: Center(
                child: ImageIcon(
                  AssetImage("assets/icons/grid.png"),
                  color: Colors.white,
                  size: 18,
                ),
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const ImageIcon(
                AssetImage(
                  "assets/icons/notifictaion_bell.png",
                ),
                color: Colors.black,
              ),
            )
          ],
          title: const Text(
            "Task Manager",
            style: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
          )),
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome back !",
                      style: TextStyle(color: Colors.grey.shade800),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text("Here's Update Today",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black))
                  ],
                ),
                const Spacer(),
                const CircleAvatar(
                  backgroundColor: Colors.black,
                  child: ImageIcon(
                    AssetImage("assets/icons/search.png"),
                    color: Colors.white,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 40,
                    decoration: const ShapeDecoration(
                      shape: const StadiumBorder(),
                      color: Colors.black,
                    ),
                    child: const Center(
                      child: Text(
                        "Today",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 40,
                    child: const Center(
                      child: const Text("Upcoming"),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 40,
                    child: const Center(
                      child: Text("Task Done"),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: colors.length,
                itemBuilder: (ctx, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: _TaskCard(
                    color: colors.elementAt(index),
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

class _TaskCard extends StatelessWidget {
  const _TaskCard({
    Key? key,
    required this.color,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: color,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 6.0, horizontal: 18.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(99),
                    border: Border.all(color: Colors.black12)),
                child: const Text(
                  "School",
                  style: const TextStyle(fontSize: 12),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 6.0, horizontal: 18.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(99),
                    border: Border.all(color: Colors.black12)),
                child: const Text(
                  "Everyday",
                  style: const TextStyle(fontSize: 12),
                ),
              ),
              const Spacer(),
              const Icon(CupertinoIcons.pencil_circle_fill)
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Prepare Design for Next App",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.calendar,
                        size: 18,
                        color: Colors.grey.shade800,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "8 September 2022",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade800,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.clock,
                        size: 18,
                        color: Colors.grey.shade800,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "7 : 30 AM",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade800,
                        ),
                      )
                    ],
                  )
                ],
              ),
              const Spacer(),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black54)),
              )
            ],
          )
        ],
      ),
    );
  }
}

List<Color> colors = [
  Colors.cyanAccent,
  Colors.yellowAccent,
  Colors.tealAccent,
];
