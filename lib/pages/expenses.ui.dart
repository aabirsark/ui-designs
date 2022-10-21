import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uis/pages/social_media.page.dart';

const Color greenColor = Color(0xFF82FFAC);

class ExpensesUIII extends StatelessWidget {
  const ExpensesUIII({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: NetworkImage(av1),
                    radius: 25,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Personal account",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Ralph Lawrens",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(10)),
              padding:
                  const EdgeInsets.symmetric(horizontal: 6.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: tabs
                    .map((e) => Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 16.0),
                        decoration: BoxDecoration(
                            color: e == "Spot" ? Colors.white : Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          e,
                          style: TextStyle(
                              color: e == "Spot" ? Colors.black : Colors.white,
                              fontWeight: FontWeight.bold),
                        )))
                    .toList(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black)),
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        "My Balance",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Container(
                        height: 10,
                        width: 10,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.black),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black)),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        "\$ 185,644",
                        style: TextStyle(
                            fontSize: 33, fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18.0, vertical: 8.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.black),
                        child: const Text(
                          "USD",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.black),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const ImageIcon(
                              AssetImage(
                                "assets/icons/wallet.png",
                              ),
                              color: greenColor,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "Buy with Card",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              CupertinoIcons.repeat,
                              color: greenColor,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "Auto-trade",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const ImageIcon(
                              AssetImage(
                                "assets/icons/user.png",
                              ),
                              color: greenColor,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "P2P Trading",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              CupertinoIcons.money_dollar,
                              color: greenColor,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "Seeking Earn",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Transform.rotate(
                            angle: pi * -0.25,
                            child: const Icon(
                              CupertinoIcons.arrow_left,
                              color: greenColor,
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Deposit",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: greenColor,
                        border: Border.all(color: Colors.black)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Transform.rotate(
                            angle: pi * 0.75,
                            child: const Icon(
                              CupertinoIcons.arrow_left,
                              color: Colors.black,
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Withdraw",
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  const Text(
                    "Balances",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Container(
                    height: 6,
                    width: 6,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.black),
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Container(
                    height: 6,
                    width: 6,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black)),
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  Container(
                    height: 6,
                    width: 6,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black)),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Divider(
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ...cryptos
                .map((e) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.black,
                            child: Text(e.symbol.substring(0 , 1) ,style: const TextStyle(color: Colors.white), ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                e.symbol,
                                style: const TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Text(
                                e.name,
                                style:
                                    const TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                               " ${e.value}",
                                style: const TextStyle(fontWeight: FontWeight.bold),
                              ),
                               const SizedBox(
                                height: 3,
                              ),
                              Text(
                               "\$ ${e.price}",
                                style: const TextStyle(fontSize: 12 ,color: Colors.grey ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ))
                .toList()
          ],
        ),
      )),
    );
  }
}

List<String> tabs = ["Overview", "Funding", "Spot", "Futures"];

class _Crypto {
  final String symbol;
  final String name;
  final double value;
  final int price;

  _Crypto(
      {required this.symbol,
      required this.name,
      required this.value,
      required this.price});
}

List<_Crypto> cryptos = [
  _Crypto(symbol: "BTC", name: "Bitcoin", value: 5.345, price: 2272960),
  _Crypto(symbol: "ETH", name: "Ethereum", value: 42.571, price: 67427),
  _Crypto(symbol: "USDT", name: "Tether", value: 75.564, price: 49716788),
];
