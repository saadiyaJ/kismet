import 'dart:math';
import "package:flutter/material.dart";
import '../widgets/custom_app_bar.dart';
import 'package:kismet/model/game_model.dart';
import '../widgets/game_page_card.dart';

class RollTheDice extends StatefulWidget {
  const RollTheDice({super.key});

  @override
  State<RollTheDice> createState() => _RollTheDiceState();
}

class _RollTheDiceState extends State<RollTheDice> {
  List<GameModel> game = [];
  int randValue=0;
  Image image = Image.asset( "assets/icons/dice_game/1.png");
  Text result=Text('');

  void _getInitialInfo() {
    game = GameModel.getGame();
  }

  void _generateResult() {
    int newRandValue = Random().nextInt(5);
    setState(() {
      randValue = newRandValue;
      image = Image.asset(game[0].pathToImage[randValue]);
      result = Text(
        game[0].result[randValue],
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontWeight: FontWeight.w300,
          color: Colors.black,
          fontSize: 25,
        ),
      );
    });
  }


  @override
  Widget build(BuildContext context) {
    _getInitialInfo();



    return Scaffold(
      appBar: const CustomAppBar(title: "Kismet"),
      body: GamePageCard(
        image: image,
        result: result,
        onTap: () => _generateResult(),
      ),
    );
  }
}
