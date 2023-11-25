import "package:flutter/material.dart";
import 'custom_app_bar.dart';
import 'package:kismet/model/game_model.dart';

class RollTheDice extends StatefulWidget {
  const RollTheDice({super.key});

  @override
  State<RollTheDice> createState() => _RollTheDiceState();
}

class _RollTheDiceState extends State<RollTheDice> {
  List<GameModel> game = [];

  void _getInitialInfo() {
    game = GameModel.getGame();
  }

  @override
  Widget build(BuildContext context) {
    _getInitialInfo();

    return Scaffold(
      appBar: const CustomAppBar(title: "Kismet"),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(25),
            child: Container(
                height: 500,
                child: Column(children: [
                  Image.asset(game[0].pathToImage[0]),
                  Text(
                    game[0].result[0],
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
                        "Roll",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ])),
          ),
        ],
      ),
    );

    //Image.asset(game[0].pathToImage[0]),
  }
}
