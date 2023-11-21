import 'dart:ui';

import 'package:flutter/widgets.dart';
import 'package:kismet/model/flip_the_coin.dart';
import 'package:kismet/model/random_number_generator.dart';
import 'package:kismet/model/roll_the_dice.dart';

class GamesModel {
  String name;
  String iconPath;
  String playRules;
  Color boxColor;
  bool ViewIsSelected;
  Widget routeTo;

  GamesModel(
      {required this.name,
        required this.iconPath,
        required this.playRules,
        required this.boxColor,
        required this.ViewIsSelected,
        required this.routeTo,});

  static List<GamesModel> getGames() {
    //list of games to be featured
    List<GamesModel> games = [];

    //Roll the dice game
    games.add(GamesModel(
        name: "Roll The Dice",
        iconPath: 'assets/icons/dice.png',
        playRules:
        "Roll the dice and get a number \n between 1-9.",
        boxColor: const Color(0xff92A3FD),
        ViewIsSelected: true,
        routeTo: const RollTheDice()));

    //Flip the coin game
    games.add(GamesModel(
      name: "Flip The Coin",
      iconPath: "assets/icons/coin.png",
      playRules:"Flip the coin so it lands \n on Head or Tail.",
      boxColor: const Color(0xffC58BF2),
      ViewIsSelected: true,
      routeTo: const FlipTheCoin(),));

    //Random number generator game
    games.add(GamesModel(
      name: "Random Number Generator",
      iconPath: "assets/icons/random-number.png",
      playRules:
      "Choose a range of numbers. \n Then, Run the random number \n generator.",
      boxColor: const Color(0xff92A3FD),
      ViewIsSelected: true,
      routeTo: const RandomNumberGenerator(),));

    return games;
  }
}
