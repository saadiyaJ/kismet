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
    game = GameModel.getGame();}

  @override
  Widget build(BuildContext context) {
    _getInitialInfo();

    return Scaffold(
      appBar: CustomAppBar(title: "Kismet",),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(25),
            child: Container(
              height: 500,
              child: Image.asset(game[1].pathToImage[0]),
            ),
          ),
        ],
      ),
    );
  }

}
