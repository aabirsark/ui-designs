import 'dart:io';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';

class SpotifyImgGen extends StatelessWidget {
  const SpotifyImgGen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late GlobalKey key;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Share lyrics",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white60),
        ),
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.black38,
            child: Center(
              child: Icon(
                CupertinoIcons.arrow_left,
                color: Colors.white,
              ),
            ),
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Tap for more",
              style: TextStyle(
                  color: Colors.white60,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            WidgetToImage(builder: (ky) {
              key = ky;
              return const LyricalBody();
            }),
            const SizedBox(
              height: 25,
            ),
            GestureDetector(
              onTap: () {
                generateImage(key);
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.black45,
                    child: Center(
                      child: Icon(
                        CupertinoIcons.share,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Share",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LyricalBody extends StatelessWidget {
  const LyricalBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xFF2A2A2A),
          boxShadow: const [
            BoxShadow(
                offset: Offset(-4, -4), blurRadius: 10, color: Colors.black38),
            BoxShadow(
                offset: Offset(4, 4), blurRadius: 10, color: Colors.black38)
          ]),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  color: Colors.black45,
                  // height: MediaQuery.of(context).size.height * 0.6,
                  child: Image.network(
                    "https://images.genius.com/088c59a5eef050039cb3a46b0ac019c9.1000x1000x1.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "changes",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white60),
                    ),
                    Text(
                      "XXXTENTACION",
                      style: TextStyle(fontSize: 12, color: Colors.white60),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Mmm, babay I don't understand this \nYou're changing, I can't stand it \nMy heart can't take this damage \nAnd the way I feel, can't stand it \nMmm, baby I don't understand this",
              style: TextStyle(
                  fontSize: 20,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  color: Colors.white60),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                ImageIcon(
                  AssetImage("assets/spotify.png"),
                  color: Colors.white54,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Spotify",
                  style: TextStyle(color: Colors.white60),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class WidgetToImage extends StatelessWidget {
  const WidgetToImage({Key? key, required this.builder}) : super(key: key);

  final Function(GlobalKey) builder;

  @override
  Widget build(BuildContext context) {
    final GlobalKey globalKey = GlobalKey();
    return RepaintBoundary(
      key: globalKey,
      child: builder(globalKey),
    );
  }
}

generateImage(GlobalKey key) async {
  var boundary =
      key.currentContext?.findRenderObject() as RenderRepaintBoundary?;

  final image = await boundary?.toImage(pixelRatio: 3);
  final byteData = await image?.toByteData(format: ImageByteFormat.png);
  final imageBytes = byteData?.buffer.asUint8List();

  if (imageBytes != null) {
    final directory = await getApplicationDocumentsDirectory();

    final imagePath = await File(
            '${directory.path}/spotifyLiri${DateTime.now().microsecond}.png')
        .create();

    await imagePath.writeAsBytes(imageBytes);
    OpenFile.open(imagePath.path);
  }
}
