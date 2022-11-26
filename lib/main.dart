import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(GameApplication());
}

class GameApplication extends StatefulWidget {
  GameApplication({Key? key}) : super(key: key);

  @override
  State<GameApplication> createState() => _GameApplicationState();
}

int top = 2;
int bottom = 2;

class _GameApplicationState extends State<GameApplication> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'vazir'),
      home: Scaffold(
          appBar: AppBar(
              centerTitle: true,
              title: Text("سنگ   کاغذ   قیچی"),
              backgroundColor: Colors.deepOrange[700]),
          backgroundColor: Colors.deepOrange,
          body: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image(
                  image: AssetImage('images/$top.png'),
                  height: 100.0,
                ),
                TextButton(
                    style: TextButton.styleFrom(primary: Colors.white),
                    onPressed: () {
                      setState(() {
                        top = Random().nextInt(3) + 1;
                        bottom = Random().nextInt(3) + 1;
                      });
                    },
                    child: Text(
                      "شروع بازی",
                      style: TextStyle(fontSize: 20.0),
                    )),
                Image(
                  image: AssetImage(
                    'images/$bottom.png',
                  ),
                  height: 100.0,
                )
              ],
            ),
          )),
    );
  }
}
