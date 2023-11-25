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
                  Image.asset(game[1].pathToImage[0]),
                  Text(
                    game[1].result[0],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 20),
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
                      onPressed: () {},
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
