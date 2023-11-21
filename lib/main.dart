import 'package:flutter/material.dart';
import 'package:kismet/main_page.dart';

void main() {
  runApp(const Kismet());
}

class Kismet extends StatelessWidget {
  const Kismet({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: MainPage(),
        ));
  }
}

