import 'dart:ui';
import 'package:flutter/widgets.dart';
import 'package:kismet/view/pages/flip_the_coin.dart';
import 'package:kismet/view/pages/random_number_generator.dart';
import 'package:kismet/view/pages/roll_the_dice.dart';

class GamesModel {
  //homepage data attributes
  String name;
  String iconPath;
  String playRules;
  Color boxColor;
  Widget routeTo;

  //A single homepage game card data constructor
  GamesModel({
    required this.name,
    required this.iconPath,
    required this.playRules,
    required this.boxColor,
    required this.routeTo,
  });

  //list of homepage games, populated using game data
  static List<GamesModel> getGames() {
    //list of games to be featured
    final List<GamesModel> games = [];

    //Roll the dice game
    games.add(
      GamesModel(
          name: "Roll The Dice",
          iconPath: 'assets/icons/dice.png',
          playRules: "Roll the dice and get a number \n between 1-6.",
          boxColor: const Color(0xff92A3FD),
          routeTo: RollTheDice(),),
    );

    //Flip the coin game
    games.add(
      GamesModel(
        name: "Flip The Coin",
        iconPath: "assets/icons/coin.png",
        playRules: "Flip the coin so it lands \n on Heads or Tails.",
        boxColor: const Color(0xffC58BF2),
        routeTo: FlipTheCoin(),
      ),
    );

    //Random number generator game
    games.add(
      GamesModel(
        name: "Random Number Generator",
        iconPath: "assets/icons/random-number.png",
        playRules:
            "Run the random number generator\n and get a random number \nbetween 0 and 10.",
        boxColor: const Color(0xff92A3FD),
        routeTo: RandomNumberGenerator(),
      ),
    );

    return games;
  }
}
