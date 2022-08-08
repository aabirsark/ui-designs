import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class FindAcottage extends StatelessWidget {
  const FindAcottage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        // centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            SizedBox(
              width: 20,
            ),
            Icon(
              Iconsax.search_normal,
              color: Colors.black,
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              "Search countries...",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: const [
                  CusFilterChips(
                    label: "USA",
                    isDark: true,
                  ),
                  CusFilterChips(
                    label: "Germany",
                    isDark: false,
                  ),
                  CusFilterChips(
                    label: "Italy",
                    isDark: false,
                  ),
                  CusFilterChips(
                    label: "India",
                    isDark: false,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
              margin: const EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Type of Houses",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Icon(Iconsax.arrow_circle_down)
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: const [
                  _ImageCard(),
                  SizedBox(
                    width: 20 ,
                  ),
                  _ImageCard(),
                ],
              ),
            ),
            const Spacer(),
            Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
                margin: const EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFF383838)),
                child: const Center(
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

class _ImageCard extends StatelessWidget {
  const _ImageCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 350,
          width: 250,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1576874748772-584aa2bee2d4?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=60&raw_url=true&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8Y290dGFnZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500"),
                  fit: BoxFit.cover),
              color: Colors.grey.shade300),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Rocky Mountain National Park",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(
              Iconsax.star,
              size: 20,
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Iconsax.star,
              size: 20,
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Iconsax.star,
              size: 20,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              "Full packed",
              style: TextStyle(fontSize: 12),
            )
          ],
        )
      ],
    );
  }
}

class CusFilterChips extends StatelessWidget {
  const CusFilterChips({
    Key? key,
    required this.label,
    required this.isDark,
  }) : super(key: key);

  final String label;
  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 18),
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      decoration: BoxDecoration(
          color: isDark ? const Color(0xFF383838) : Colors.transparent,
          borderRadius: BorderRadius.circular(5)),
      child: Text(
        label,
        style: TextStyle(
            color: isDark ? Colors.white : Colors.black,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
