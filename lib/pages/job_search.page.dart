import 'package:flutter/material.dart';

const jobSearchbgColor = Color(0xFF22232C);
const canvasColor = Color(0xFF17181C);
const greenCavas = Color(0xFF8AC186);
const yellowCanvas = Color(0xFFFFD987);
const pinkColor = Color(0xFFFFABC7);
const darkPurpleColor = Color(0xFF7767D8);

class JobSearch extends StatelessWidget {
  const JobSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: jobSearchbgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: const Padding(
          padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 16.0),
          child: ImageIcon(AssetImage("assets/icons/more.png")),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Find the World's most Amazing Job",
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: canvasColor, borderRadius: BorderRadius.circular(10)),
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 14.0),
              child: Row(
                children: [
                  const ImageIcon(
                    AssetImage("assets/icons/search.png"),
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    "Search for Jobs",
                    style: TextStyle(color: Colors.white54, fontSize: 16),
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(
                        color: jobSearchbgColor,
                        borderRadius: BorderRadius.circular(10)),
                    height: 40,
                    width: 40,
                    child: const Center(
                      child: ImageIcon(
                        AssetImage(
                          "assets/icons/filter.png",
                        ),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "Job Matched",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: greenCavas,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Master Card",
                        style: TextStyle(
                            fontSize: 11, color: Colors.grey.shade800),
                      ),
                      const Spacer(),
                      const ImageIcon(
                        AssetImage(
                          "assets/icons/card.png",
                        ),
                        color: Colors.black,
                        size: 25,
                      )
                    ],
                  ),
                  const Text(
                    "Sr. Product Designer",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      FilterChip(
                        label: const Text(
                          "User Interface",
                          style: TextStyle(fontSize: 10, color: Colors.black),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 2, horizontal: 16.0),
                        backgroundColor: Colors.white,
                        onSelected: (t) {},
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      FilterChip(
                        label: const Text(
                          "User Research / Flow",
                          style: TextStyle(fontSize: 10, color: Colors.black),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 2, horizontal: 16.0),
                        backgroundColor: Colors.white,
                        onSelected: (t) {},
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      const ImageIcon(
                        AssetImage("assets/icons/clock.png"),
                        size: 18,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      const Text(
                        "Be in the first 31 Applicants",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 30,
                        width: 100,
                        child: Stack(
                          children: [
                            const CircleAvatar(
                              radius: 15,
                              backgroundImage:
                                  AssetImage("assets/profile1.jpg"),
                            ),
                            const Positioned(
                              left: 25,
                              child: CircleAvatar(
                                radius: 15,
                                backgroundImage:
                                    AssetImage("assets/profile2.jpg"),
                              ),
                            ),
                            Positioned(
                                left: 50,
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      border: Border.all(color: Colors.white),
                                      shape: BoxShape.circle),
                                  child: const Center(
                                    child: Text(
                                      "27",
                                      style: TextStyle(
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                )),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "6 hours ago",
                        style: TextStyle(
                            fontSize: 12, color: Colors.grey.shade800),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "Job Category",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                _OtherJobCard(
                  image: "assets/icons/design.png",
                  title: "Design",
                  color: yellowCanvas,
                ),
                _OtherJobCard(
                  image: "assets/icons/network.png",
                  title: "Network",
                  color: pinkColor,
                ),
                _OtherJobCard(
                  image: "assets/icons/shield.png",
                  title: "Security",
                  color: darkPurpleColor,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _OtherJobCard extends StatelessWidget {
  const _OtherJobCard({
    Key? key,
    required this.color,
    required this.title,
    required this.image,
  }) : super(key: key);

  final Color color;
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 145,
      width: 113,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Center(
              child: ImageIcon(
                AssetImage(image),
                color: Colors.black,
                size: 18,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 10, color: Colors.black),
          ),
          const Text(
            "3.2k Jobs",
            style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          Container(
            height: 25,
            width: double.maxFinite,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(6)),
            child: const Center(
              child: Text(
                "View Jobs",
                style: TextStyle(fontSize: 9),
              ),
            ),
          )
        ],
      ),
    );
  }
}
