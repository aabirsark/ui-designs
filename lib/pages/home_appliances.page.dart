import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uis/pages/social_media.page.dart';

class HomeAppliances extends StatelessWidget {
  const HomeAppliances({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Colors.grey.shade300))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const CircleAvatar(
              backgroundColor: Colors.white,
              child: Center(child: ImageIcon(AssetImage("assets/icons/home.png") ,color: Colors.indigoAccent, )),
            ),
            CircleAvatar(
              backgroundColor: Colors.white,
              child: Center(child: ImageIcon(const AssetImage("assets/icons/pie-chart.png") ,color: Colors.grey.shade600, )),
            ),
            const CircleAvatar(
              backgroundColor: Colors.indigoAccent,
              child: Center(child: Icon(CupertinoIcons.add ,color: Colors.white, )),
            ),
            CircleAvatar(
              backgroundColor: Colors.white,
              child: Center(child: ImageIcon(const AssetImage("assets/icons/mic.png") ,color:Colors.grey.shade600, )),
            ),
            CircleAvatar(
              backgroundColor: Colors.white,
              child: Center(child: ImageIcon(const AssetImage("assets/icons/settings.png") ,color: Colors.grey.shade600, )),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(av1),
            ),
          )
        ],
        title: Column(
          children: [
            const Text(
              "Hello, Aabir!",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Monday, 19 August 2022',
              style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
            )
          ],
        ),
        leading: IconButton(
            onPressed: () {},
            icon: const ImageIcon(
                AssetImage(
                  "assets/icons/layout.png",
                ),
                color: Colors.black)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade100),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "20° C",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "It's pretty cloudy outside",
                            style: TextStyle(color: Colors.grey.shade600),
                          )
                        ],
                      ),
                      const Spacer(),
                      const CircleAvatar(
                        backgroundColor: Colors.white,
                        child: ImageIcon(
                          AssetImage("assets/icons/cloud-computing.png"),
                          color: Colors.indigo,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _description("18 km/h", "Wind Velocity"),
                      _description("48%", "Home Humidity"),
                      _description("1014  mbar", "Pressure"),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const Text(
                  "Rooms",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                Text(
                  "See all",
                  style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: rooms
                    .map((e) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: Container(
                            padding: const EdgeInsets.all(12.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(99),
                                border: Border.all(color: Colors.grey.shade100),
                                color: e == "Living Room"
                                    ? Colors.indigoAccent
                                    : Colors.white),
                            child: Text(
                              e,
                              style: TextStyle(
                                  color: e == "Living Room"
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ),
                        ))
                    .toList(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Devices",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: GridView.builder(
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: .83,
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10),
              itemBuilder: (context, index) => Container(
                padding: const EdgeInsets.all(14.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: devices.elementAt(index).isGreyish ? Colors.grey.shade100 : Colors.white ,
                    border:
                        Border.all(color: Colors.grey.shade100, width: 1.5)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.grey.shade100,
                          child:  Center(
                            child: ImageIcon(
                              AssetImage(devices.elementAt(index).icon),
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const ImageIcon(
                          AssetImage("assets/icons/wifi.png"),
                          color: Colors.black54,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                     Text(
                      devices.elementAt(index).title,
                      style: const TextStyle(fontSize: 15),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                     Text(
                      devices.elementAt(index).subtitle,
                      style: const TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Divider(
                      color: Colors.grey.shade300,
                    ),
                    Row(
                      children: [
                         Text(devices.elementAt(index).isActive ?  "ON" : "OFF"),
                        const Spacer(),
                        CupertinoSwitch(
                            activeColor: Colors.indigoAccent,
                            value: devices.elementAt(index).isActive ,
                            onChanged: (_) {})
                      ],
                    )
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }

  Column _description(String label, String desc) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 18),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          desc,
          style: TextStyle(color: Colors.grey.shade600, fontSize: 13),
        )
      ],
    );
  }
}

List<String> rooms = [
  "Living Room",
  "Bedroom",
  "Kitchen",
  "Bathroom",
  "Veranda"
];

class DeviceState {
  final String title;
  final String subtitle;
  final bool isActive;
  final bool isGreyish;
  final String icon;

  DeviceState(
      {required this.isGreyish,
      required this.title,
      required this.subtitle,
      required this.isActive,
      required this.icon});
}

List<DeviceState> devices = [
  DeviceState(
      title: "Smart Lighting",
      subtitle: "2 lamps",
      isActive: true,
      icon: "assets/icons/sun.png",
      isGreyish: false),
  DeviceState(
      title: "Smart TV",
      subtitle: "1 Device",
      isActive: false,
      icon: "assets/icons/smart-tv.png",
      isGreyish: true),
  DeviceState(
      title: "Smart Speaker",
      subtitle: "1 Device",
      isActive: false,
      icon: "assets/icons/speaker.png",
      isGreyish: false),
  DeviceState(
      title: "Table lamp",
      subtitle: "2 lamps",
      isActive: true,
      icon: "assets/icons/floor-lamp.png",
      isGreyish: false),
];
