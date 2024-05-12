import 'package:flutter/material.dart';
import 'package:kismet/view/widgets/custom_app_bar.dart';
import '../../model/games_model.dart';
import '../widgets/main_page_card.dart';

class MainPage extends StatelessWidget {
  MainPage({super.key});

  late List<GamesModel> games = [];

  //provides game info
  void _getInitialInfo() {
    games = GamesModel.getGames();
  }

  @override
  Widget build(BuildContext context) {
    _getInitialInfo();
    return Scaffold(
      appBar: const CustomAppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: MainPageCard(games: games),
    );
  }
}
