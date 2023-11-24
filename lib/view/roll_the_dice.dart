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
            padding: EdgeInsets.all(15),
            child: Container(
              height: 500,
              child: Image.asset(game[0].pathToImage[0]),
            ),
          ),

        ],
      ),
    );
  }
}
