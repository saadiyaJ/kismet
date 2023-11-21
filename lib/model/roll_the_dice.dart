import "package:flutter/material.dart";

import "../view/custom_app_bar.dart";

class RollTheDice extends StatefulWidget {
  const RollTheDice({super.key});

  @override
  State<RollTheDice> createState() => _RollTheDiceState();
}

class _RollTheDiceState extends State<RollTheDice> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: "roll the dice"),
      body: Column(
        children:[
          Padding(padding: EdgeInsets.all(25),
            child: Placeholder(),//apply container inside of which a pic and a button with enough space between each
          ),
        ],
      ),
    );
  }
}
