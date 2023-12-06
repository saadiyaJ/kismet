import 'dart:math';
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

    //this variable contains the random numbers generated
    int randValue = Random().nextInt(5);

    // this variale contains the image that corresponds to said number by index
    Image image = Image.asset(game[0].pathToImage[randValue]);

    Text result = Text(
      game[0].result[randValue],
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontWeight: FontWeight.w300,
        color: Colors.black,
        fontSize: 25,
      ),
    );

    //var randValue = Random().nextInt(5);
    //var image= game[0].pathToImage[randValue];
//
    return Scaffold(
      appBar: const CustomAppBar(title: "Kismet"),
      body: Column(
        //page design
        children: [
          Padding(
            padding: EdgeInsets.all(25),
            child: Container(
                height: 500,
                child: Column(children: [
                  image,
                  result,
                  const SizedBox(height: 60),
                  //button background design
                  Container(
                    height: 45,
                    width: 130,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xff9DCEFF), Color(0xff92A3FD)],
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    //the button
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
