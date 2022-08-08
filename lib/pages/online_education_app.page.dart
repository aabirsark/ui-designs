import 'package:flutter/material.dart';

const cardColor = Color(0xFF25262A);

class OnlineEducation extends StatelessWidget {
  const OnlineEducation({Key? key}) : super(key: key);

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
              AssetImage("assets/icons/list.png"),
              color: Colors.black,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const ImageIcon(
                AssetImage("assets/icons/notifictaion_bell.png"),
                color: Colors.black,
              ))
        ],
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(left: 16, bottom: 12, right: 16),
        decoration: BoxDecoration(
            color: cardColor, borderRadius: BorderRadius.circular(20)),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const ImageIcon(
              AssetImage("assets/icons/home.png"),
              color: Colors.white,
            ),
            ImageIcon(
              const AssetImage("assets/icons/empty-folder.png"),
              color: Colors.grey.shade500,
            ),
            ImageIcon(
              const AssetImage("assets/icons/graph.png"),
              color: Colors.grey.shade500,
            ),
            ImageIcon(
              const AssetImage("assets/icons/settin.png"),
              color: Colors.grey.shade500,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Welcome back, Mike!",
              style: const TextStyle(
                  color: Colors.indigo, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("Hey, keep up the good work",
                style:
                    const TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  color: cardColor, borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Interface Design",
                            style: TextStyle(
                                fontSize: 16,
                                // fontWeight: FontWeight.bold,
                                color: Colors.white60),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "UI&UX Animation",
                            style: const TextStyle(
                                fontSize: 25,
                                // fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      const Spacer(),
                      const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: const ImageIcon(
                          AssetImage("assets/icons/design_to.png"),
                          color: Colors.white,
                          size: 100,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      const Text(
                        "Progress",
                        style: const TextStyle(
                            fontSize: 12, color: Colors.white70),
                      ),
                      const Spacer(),
                      const Text(
                        "40%",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 5,
                        decoration: const ShapeDecoration(
                            shape: StadiumBorder(), color: Colors.white),
                      ),
                      Container(
                        height: 5,
                        width: 150,
                        decoration: const ShapeDecoration(
                            shape: StadiumBorder(), color: Color(0xFFCB8EFB)),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 3,
                    width: 30,
                    decoration: const ShapeDecoration(
                        shape: const StadiumBorder(), color: cardColor),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 3,
                    width: 15,
                    decoration: ShapeDecoration(
                        shape: const StadiumBorder(),
                        color: Colors.grey.shade400),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 3,
                    width: 15,
                    decoration: ShapeDecoration(
                        shape: const StadiumBorder(),
                        color: Colors.grey.shade400),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 3,
                    width: 15,
                    decoration: ShapeDecoration(
                        shape: const StadiumBorder(),
                        color: Colors.grey.shade400),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "New courses",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  childAspectRatio: .87,
                  mainAxisSpacing: 12),
              itemBuilder: (ctx, index) => Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                    color: courses[index].color,
                    borderRadius: BorderRadius.circular(25)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      courses[index].category,
                      style: TextStyle(
                          fontSize: 14, color: courses[index].textColor),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      courses[index].title,
                      style: const TextStyle(
                          fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Text(
                      "#online #Basic",
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                    const Spacer(),
                    RichText(
                        text: TextSpan(
                            style: const TextStyle(color: Colors.black),
                            children: [
                          const TextSpan(text: "Duration :  "),
                          TextSpan(
                              text: "3 months",
                              style: TextStyle(color: Colors.grey.shade700))
                        ])),
                    const SizedBox(
                      height: 6,
                    )
                  ],
                ),
              ),
              itemCount: 2,
            ))
          ],
        ),
      ),
    );
  }
}

class NewCourses {
  final String title;
  final String category;
  final Color color;
  final Color textColor;

  NewCourses(
      {required this.color,
      required this.textColor,
      required this.title,
      required this.category});
}

List<NewCourses> courses = [
  NewCourses(
      title: "Information Structure",
      category: "UX Design",
      color: const Color(0xFFDDF2F3),
      textColor: const Color(0xFF7CC39C)),
  NewCourses(
      title: "Product Managment",
      category: "Managment",
      color: const Color(0xFFD7D0FF),
      textColor: Colors.indigo),
];
