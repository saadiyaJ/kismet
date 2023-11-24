import "package:flutter/material.dart";
import '../model/game_model.dart';
import 'custom_app_bar.dart';

class RandomNumberGenerator extends StatefulWidget {
  const RandomNumberGenerator({super.key});

  @override
  State<RandomNumberGenerator> createState() => _RandomNumberGeneratorState();
}

class _RandomNumberGeneratorState extends State<RandomNumberGenerator> {

  List<GameModel> game = [];

  void _getInitialInfo() {
    game = GameModel.getGame();}


  @override
  Widget build(BuildContext context) {
    _getInitialInfo();
    return Scaffold(
      appBar: CustomAppBar(title: "Kismet"),
      body: Column(
        children:[
          Padding(padding: EdgeInsets.all(25),
            child: Container(
              height: 500,
              child: Image.asset(game[2].pathToImage[0]),
            ),
          ),
        ],
      ),
    );
  }
}
