import 'dart:math';

import 'package:flutter/material.dart';
import '../../model/game_model.dart';

class GamePageCard extends StatefulWidget {
  GamePageCard(
      {required this.image,
      required this.result,
      required this.onTap,
      super.key});

  Image image;
  Widget result;
  void Function() onTap;

  @override
  State<GamePageCard> createState() => _GamePageCardState();
}

class _GamePageCardState extends State<GamePageCard> {
  // List<GameModel> game = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(25),
          child: Container(
              height: 500,
              child: Column(children: [
                widget.image,
                widget.result,
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
                      widget.onTap(); // Call onTapImage function
                    },
                    child: const Text(
                      "Generate",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ])),
        ),
      ],
    );
  }
}
