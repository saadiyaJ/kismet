import 'package:flutter/material.dart';
import 'package:kismet/view/main_page.dart';

import '../view/splash_screen.dart';

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
          body: SplashScreen(),
        ));
  }
}

