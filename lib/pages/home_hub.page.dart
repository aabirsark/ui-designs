import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeHub extends StatelessWidget {
  const HomeHub({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            child: Column(children: [
              Row(
                children: [
                  const Text(
                    "Home Hub",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 1),
                              spreadRadius: 2,
                              blurRadius: 20,
                              color: Colors.black12)
                        ]),
                    padding: const EdgeInsets.all(8.0),
                    child:
                        const ImageIcon(AssetImage("assets/icons/settin.png")),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 40,
                width: double.infinity,
                child: Stack(
                  children: [
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: const DecorationImage(
                              image: AssetImage("assets/profile3.jpg"),
                              fit: BoxFit.cover),
                          border: Border.all(color: Colors.black),
                          shape: BoxShape.circle),
                    ),
                    Positioned(
                      left: 25,
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            image: const DecorationImage(
                                image: AssetImage("assets/profile4.jpg"),
                                fit: BoxFit.cover),
                            border: Border.all(color: Colors.black),
                            shape: BoxShape.circle),
                      ),
                    ),
                    Positioned(
                        left: 50,
                        child: Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.black),
                              shape: BoxShape.circle),
                          child: const Center(
                            child: Text(
                              "+8",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                  height: 35,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Container(
                          decoration: BoxDecoration(
                              color: index == 0
                                  ? const Color.fromARGB(255, 34, 34, 34)
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          padding: const EdgeInsets.symmetric(horizontal: 12.0),
                          child: Center(
                            child: Text(
                              rooms.elementAt(index),
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color:
                                      index == 0 ? Colors.white : Colors.black),
                            ),
                          )),
                    ),
                    itemCount: rooms.length,
                  )),
              const SizedBox(
                height: 35,
              ),
              Row(
                children: [
                  const Text(
                    "DEVICES",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 1),
                              spreadRadius: 2,
                              blurRadius: 20,
                              color: Colors.black12)
                        ]),
                    padding: const EdgeInsets.all(8.0),
                    child: const Icon(CupertinoIcons.add),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 180,
                width: double.infinity,
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      const BoxShadow(
                          offset: Offset(0, 1),
                          spreadRadius: 2,
                          blurRadius: 100,
                          color: Colors.black12)
                    ],
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const ImageIcon(
                          const AssetImage("assets/icons/ac.png"),
                          size: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 4.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Actual state:",
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Row(
                                children: [
                                  const ImageIcon(
                                    AssetImage("assets/icons/thermometer.png"),
                                    size: 20,
                                  ),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  const Text(
                                    "20 C",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  const ImageIcon(
                                    const AssetImage("assets/icons/drop.png"),
                                    size: 20,
                                  ),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  const Text(
                                    "10%",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        const Spacer(),
                        CupertinoSwitch(value: false, onChanged: (_) {})
                      ],
                    ),
                    const Spacer(),
                    const Text(
                      "Air\nConditioning",
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GridView(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20.0,
                    mainAxisSpacing: 20.0),
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        boxShadow: [
                          const BoxShadow(
                              offset: const Offset(0, 1),
                              spreadRadius: 2,
                              blurRadius: 20,
                              color: Colors.black12)
                        ],
                        borderRadius: BorderRadius.circular(20)),
                    padding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const ImageIcon(
                              const AssetImage("assets/icons/bulb.png"),
                              color: Colors.white,
                              size: 40,
                            ),
                            const Spacer(),
                            CupertinoSwitch(
                              value: true,
                              onChanged: (_) {},
                              activeColor: Colors.blue,
                            )
                          ],
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                "Bulb\nLight",
                                style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              const Spacer(),
                              const ImageIcon(
                                AssetImage("assets/icons/signal.png"),
                                color: Colors.green,
                                size: 18,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const ImageIcon(
                                AssetImage(
                                  "assets/icons/power.png",
                                ),
                                color: Colors.green,
                                size: 18,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          const BoxShadow(
                              offset: const Offset(0, 1),
                              spreadRadius: 2,
                              blurRadius: 20,
                              color: Colors.black12)
                        ],
                        borderRadius: BorderRadius.circular(20)),
                    padding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const ImageIcon(
                              const AssetImage("assets/icons/speaker.png"),
                              color: Colors.black,
                              size: 40,
                            ),
                            const Spacer(),
                            CupertinoSwitch(
                              value: false,
                              onChanged: (_) {},
                              activeColor: Colors.blue,
                            )
                          ],
                        ),
                        const Spacer(),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: const Text(
                            "Speaker",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          const BoxShadow(
                              offset: Offset(0, 1),
                              spreadRadius: 2,
                              blurRadius: 20,
                              color: Colors.black12)
                        ],
                        borderRadius: BorderRadius.circular(20)),
                    padding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const ImageIcon(
                              AssetImage("assets/icons/television.png"),
                              color: Colors.black,
                              size: 40,
                            ),
                            const Spacer(),
                            CupertinoSwitch(
                              value: false,
                              onChanged: (_) {},
                              activeColor: Colors.blue,
                            )
                          ],
                        ),
                        const Spacer(),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(
                            "Smart\nTV",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        boxShadow: [
                          const BoxShadow(
                              offset: Offset(0, 1),
                              spreadRadius: 2,
                              blurRadius: 20,
                              color: Colors.black12)
                        ],
                        borderRadius: BorderRadius.circular(20)),
                    padding: const EdgeInsets.symmetric(
                        vertical: 20.0, horizontal: 12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const ImageIcon(
                              AssetImage("assets/icons/plug.png"),
                              color: Colors.white,
                              size: 40,
                            ),
                            const Spacer(),
                            CupertinoSwitch(
                              value: true,
                              onChanged: (_) {},
                              activeColor: Colors.blue,
                            )
                          ],
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                "Smart\nPlug",
                                style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              const Spacer(),
                              const ImageIcon(
                                const AssetImage("assets/icons/signal.png"),
                                color: Colors.red,
                                size: 18,
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              const ImageIcon(
                                AssetImage(
                                  "assets/icons/power.png",
                                ),
                                color: Colors.red,
                                size: 18,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

List<String> rooms = ["Living Room", "Bedroom", "Bathroom", "Kitchen"];
