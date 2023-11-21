import "package:flutter/material.dart";

import "../view/custom_app_bar.dart";

class FlipTheCoin extends StatefulWidget {
  const FlipTheCoin({super.key});

  @override
  State<FlipTheCoin> createState() => _FlipTheCoin();
}

class _FlipTheCoin extends State<FlipTheCoin> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: "flip the coin",),
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
