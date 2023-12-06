import 'package:flutter/material.dart';
import 'package:kismet/view/main_page.dart';
import '../view/splash_screen.dart';

void main() {
  runApp(const Kismet());
}

class Kismet extends StatelessWidget {
  const Kismet({super.key});

  // This widget will take the app to the splash screen
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          //splash screen class
          body: SplashScreen(),
        ));
  }
}
