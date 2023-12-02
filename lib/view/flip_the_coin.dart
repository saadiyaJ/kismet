import 'dart:math';

import "package:flutter/material.dart";
import '../model/game_model.dart';
import 'custom_app_bar.dart';

class FlipTheCoin extends StatefulWidget {
  const FlipTheCoin({super.key});

  @override
  State<FlipTheCoin> createState() => _FlipTheCoinState();
}

class _FlipTheCoinState extends State<FlipTheCoin> {
  List<GameModel> game = [];

  void _getInitialInfo() {
    game = GameModel.getGame();
  }

  @override
  Widget build(BuildContext context) {
    _getInitialInfo();

    int randValue = Random().nextInt(2);
    Image image = Image.asset(game[1].pathToImage[randValue]);

    Text result = Text(
      game[1].result[randValue],
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontWeight: FontWeight.w300,
        color: Colors.black,
        fontSize: 25,
      ),
    );

    return Scaffold(
      appBar: CustomAppBar(
        title: "Kismet",
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(25),
            child: Container(
                height: 500,
                child: Column(children: [
                  image,
                  result,
                  const SizedBox(height: 60),
                  Container(
                    height: 45,
                    width: 130,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xff9DCEFF), Color(0xff92A3FD)],
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                        foregroundColor: const Color(0xffC58BF2),
                      ),
                      onPressed: () {
                        setState(() {
                          image;
                          result;
                        });

                      },
                      child: const Text(
                        "Flip",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ])),
          ),
        ],
      ),
    );
  }
}
