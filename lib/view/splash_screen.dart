import 'package:flutter/material.dart';
import 'main_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    _navigateToMainPage();
  }

  //this function navigated the user to the main page after the spalsh screen had appeared for 3 seconds
  Future<void> _navigateToMainPage() async {
    await Future.delayed(Duration(seconds: 2));

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => MainPage()),
    );
  }

  //splash screen design
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff92A3FD),
      child: const Center(
          child:
              Image(image: AssetImage("assets/icons/splash_screen_icon.png"))),
    );
  }
}
