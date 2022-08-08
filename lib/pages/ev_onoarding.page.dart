import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EVonboarding extends StatelessWidget {
  const EVonboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        backgroundColor: Colors.black,
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: double.maxFinite,
                  child: Image.asset(
                    "assets/car_banner.jpg",
                    fit: BoxFit.cover,
                    colorBlendMode: BlendMode.darken,
                  )),
              Container(
                height: MediaQuery.of(context).size.height * 0.6,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.black12, Colors.black],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 300,
                    ),
                    const Text(
                      "What is Charge Fairy ?",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis ",
                        style: TextStyle(fontSize: 16, height: 1.5)),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
                        style: TextStyle(fontSize: 16, height: 1.5)),
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      height: 60,
                      width: double.infinity,
                      decoration: ShapeDecoration(
                          shape: const StadiumBorder(),
                          color: const Color(0xFFC93561),
                          shadows: [
                            BoxShadow(
                                color: const Color(0xFFC93561).withOpacity(0.5),
                                spreadRadius: 20,
                                blurRadius: 100)
                          ]),
                      padding: const EdgeInsets.only(left: 20.0, right: 15),
                      child: Row(
                        children: const [
                          Text(
                            "Connect Car",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          CircleAvatar(
                            radius: 22,
                            backgroundColor: Colors.black,
                            child: Center(
                              child: Icon(
                                CupertinoIcons.right_chevron,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Don't have EV yet ?",
                        style: TextStyle(fontStyle: FontStyle.italic),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
