import 'package:flutter/material.dart';



const String img1 =
    "https://images.unsplash.com/photo-1539109136881-3be0616acf4b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80";
const String img2 =
    "https://images.unsplash.com/photo-1552374196-1ab2a1c593e8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDh8fGZhc2hpb258ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60";
const String img3 =
    "https://images.unsplash.com/photo-1603189343302-e603f7add05a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80";

class FahsionHome extends StatelessWidget {
  const FahsionHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const ImageIcon(
                AssetImage("assets/icons/bag.png"),
                color: Colors.black,
              ))
        ],
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      bottomNavigationBar: Container(
          height: 70,
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 13),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              ImageIcon(AssetImage("assets/icons/home.png")),
              ImageIcon(AssetImage("assets/icons/compass.png")),
              ImageIcon(AssetImage("assets/icons/layout.png")),
              ImageIcon(AssetImage("assets/icons/user.png")),
            ],
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: ageGrps
                    .map((e) => Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 10),
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          child: Text(e),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(
                                color: e == "All"
                                    ? Colors.black
                                    : Colors.grey.shade100),
                          ),
                        ))
                    .toList(),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "New Arrival",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    height: 320,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade200,
                    ),
                    child: Image.network(
                      img1,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        clipBehavior: Clip.antiAlias,
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade200,
                        ),
                        child: Image.network(
                          img2,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        clipBehavior: Clip.antiAlias,
                        height: 115,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade200,
                        ),
                        child: Image.network(
                          img3,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Multi Fashion Zone",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              "NIKE / PUMA / MUFTI / TOPMAN",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade300),
            ),
            const SizedBox(
              height: 35,
            ),
            const Text(
              "TOP BRANDS",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}

List<String> ageGrps = ["All", "Women", "Men", "Kid", "Young Adult"];
