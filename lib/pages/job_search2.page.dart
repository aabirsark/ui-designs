import 'package:flutter/material.dart';

const Color blackColor = Color(0xFF14171F);
const Color blackCanvasColor = Color(0xFF212329);

const Color purpleCanvasColor = Color(0xFFBFB5FF);
const Color yeloCanvasColor = Color.fromARGB(255, 248, 205, 119);

class JobSearch2 extends StatelessWidget {
  const JobSearch2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Hello, Lucas!",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Hope you find some suitable jobs",
                              style: TextStyle(color: Colors.grey.shade400),
                            )
                          ]),
                      const Spacer(),
                      const CircleAvatar(
                        backgroundImage: AssetImage("assets/profile1.jpg"),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                      height: 55,
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          ImageIcon(const AssetImage("assets/icons/search.png"),
                              color: Colors.grey.shade400),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Search for jobs, companies...",
                            style: TextStyle(color: Colors.grey.shade400),
                          )
                        ],
                      )),
                  const SizedBox(
                    height: 35,
                  ),
                  Row(
                    children: [
                      const Text(
                        "Popular Jobs",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      const Spacer(),
                      const Text(
                        "View All",
                        style: TextStyle(fontSize: 18, color: yeloCanvasColor),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const _JobsWidget(
                          color: purpleCanvasColor,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        const _JobsWidget(
                          color: yeloCanvasColor,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                width: double.maxFinite,
                decoration: const BoxDecoration(
                    color: blackColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                padding: const EdgeInsets.only(top: 16.0, right: 16.0, left: 16.0),
                child: Column(
                  children: [
                    Container(
                      height: 3,
                      width: 100,
                      decoration: const ShapeDecoration(
                          shape: StadiumBorder(), color: Colors.white10),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const _JobCard(),
                    const SizedBox(
                      height: 20,
                    ),
                    const _JobCard(),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _navbar("assets/icons/home.png", "Home", true),
                        _navbar("assets/icons/grid.png", "Category", false),
                        _navbar("assets/icons/graph.png", "Chart", false),
                        _navbar("assets/icons/user.png", "profile", false),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _navbar(String icon, String label, bool isSelected) {
    return Column(
      children: [
        ImageIcon(
          AssetImage(icon),
          color: isSelected ? Colors.white : Colors.white30,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          label,
          style: TextStyle(color: isSelected ? Colors.white : Colors.white30),
        )
      ],
    );
  }
}

class _JobCard extends StatelessWidget {
  const _JobCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
          color: blackCanvasColor, borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.white,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/icons/slack.png"),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "slack needs",
                style: TextStyle(color: Colors.grey.shade600),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "UI/ UX Designer",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          const Spacer(),
          const Text(
            "\$ 185k",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          )
        ],
      ),
    );
  }
}

class _JobsWidget extends StatelessWidget {
  const _JobsWidget({
    Key? key,
    required this.color,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 280,
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: color,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Image.asset("assets/icons/google.png"),
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              const Text(
                "Google needs",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Product Designer",
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
          Text(
            "cloud digital agency",
            style: TextStyle(color: Colors.grey.shade700),
          ),
          const Spacer(),
          RichText(
              text: const TextSpan(style: TextStyle(color: Colors.black), children: [
            TextSpan(
                text: "23",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            TextSpan(text: " Jobs Available")
          ]))
        ],
      ),
    );
  }
}
