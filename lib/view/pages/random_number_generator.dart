import 'dart:math';
import "package:flutter/material.dart";
import '../../model/game_model.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/game_page_card.dart';

class RandomNumberGenerator extends StatefulWidget {
  const RandomNumberGenerator({super.key});

  @override
  State<RandomNumberGenerator> createState() => _RandomNumberGeneratorState();
}

class _RandomNumberGeneratorState extends State<RandomNumberGenerator> {
  List<GameModel> game = [];
   int randValue=0;
   Image image = Image.asset( "assets/icons/random_number_game/9.png");
   Text result=Text('');

  void _getInitialInfo() {
    game = GameModel.getGame();
  }

  void _generateResult() {
    int newRandValue = Random().nextInt(11);
    setState(() {
      randValue = newRandValue;
      image = Image.asset(game[2].pathToImage[randValue]);
      result = Text(
        game[2].result[randValue],
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
      appBar: CustomAppBar(title: "Kismet"),
      //page design
      body: GamePageCard(
        image: image,
        result: result,
        onTap: () => _generateResult(),
      ),
    );
  }
}
