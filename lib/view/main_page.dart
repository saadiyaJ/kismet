import 'package:flutter/material.dart';
import 'package:kismet/view/custom_app_bar.dart';
import '../model/games_model.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<GamesModel> games = [];



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
      body: buildColumn(),
    );
  }

  Column buildColumn() {
    return Column(
      children: [
        const SizedBox(height: 40),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: 500,
            child: ListView.separated(
              itemBuilder: (context, index) {
                return Container(
                  width: 300,
                  decoration: BoxDecoration(
                      color: games[index].boxColor.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Image.asset(games[index].iconPath),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        games[index].name,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        games[index].playRules,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Color(0xff7B6F72),
                          fontSize: 15,
                        ),
                      ),
                      //button
                      const SizedBox(height: 20),
                      Container(
                        height: 45,
                        width: 130,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              games[index].ViewIsSelected
                                  ? const Color(0xff9DCEFF)
                                  : Colors.transparent,
                              games[index].ViewIsSelected
                                  ? const Color(0xff92A3FD)
                                  : Colors.transparent,
                            ],
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: TextButton(
                          child: const Text("Play"),
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                            foregroundColor: games[index].ViewIsSelected
                                ? Colors.white
                                : const Color(0xffC58BF2),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => games[index].routeTo,
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                width: 25,
              ),
              itemCount: games.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ),
      ],
    );
  }
}
