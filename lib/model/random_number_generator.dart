import "package:flutter/material.dart";

import "../view/custom_app_bar.dart";

class RandomNumberGenerator extends StatefulWidget {
  const RandomNumberGenerator({super.key});

  @override
  State<RandomNumberGenerator> createState() => _RandomNumberGenerator();
}

class _RandomNumberGenerator extends State<RandomNumberGenerator> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: "random number generator"),
      body: Column(
        children:[
          Padding(padding: EdgeInsets.all(25),
            child: Placeholder(),//apply rows. min max input fields row then generate button then number output field
          ),
        ],
      ),
    );
  }
}
