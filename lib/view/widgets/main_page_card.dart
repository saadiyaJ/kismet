import '../../model/games_model.dart';
import 'package:flutter/material.dart';

class MainPageCard extends StatelessWidget {

  final List<GamesModel> games;
  MainPageCard({super.key,  required this.games,});

  @override
  Widget build(BuildContext context) {
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
                      //games icons section
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Image.asset(games[index].iconPath),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      //game names section
                      Text(
                        games[index].name,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 10),
                      //play rules paragraph
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
                      //buttons background style section
                      Container(
                        height: 45,
                        width: 130,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              const Color(0xff9DCEFF),
                              const Color(0xff92A3FD),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        //button section
                        child: TextButton(
                          child: const Text("Play"),
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                            foregroundColor: Colors.white,
                          ),
                          onPressed: () {
                            //Navigator.pushNamed(context, GamesModel.getGames()[index].routeName),
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
    );;
  }
}
