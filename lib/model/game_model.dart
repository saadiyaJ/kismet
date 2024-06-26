
class GameModel {
  //A single game page data attributes
  List<String> pathToImage;
  List<String> result;
  String buttonLabel;

  //A single game constructor
  GameModel({
    required this.pathToImage,
    required this.result,
    required this.buttonLabel,
  });

  //A list of a single game, populated using data and assets possible to show up when playing
  static List<GameModel> getGame() {
    List<GameModel> game = [];

    //roll the dice page elements pictures and textual results of each roll
    game.add(GameModel(pathToImage: [
      "assets/icons/dice_game/1.png",
      "assets/icons/dice_game/2.png",
      "assets/icons/dice_game/3.png",
      "assets/icons/dice_game/4.png",
      "assets/icons/dice_game/5.png",
      "assets/icons/dice_game/6.png"
    ], result: [
      "One",
      "Two",
      "Three",
      "Four",
      "Five",
      "Six"
    ], buttonLabel: "Roll"));

    //flip the coin page elements pictures and textual results of each flip
    game.add(GameModel(pathToImage: [
      "assets/icons/coin_game/heads.png",
      "assets/icons/coin_game/tails.png"
    ], result: [
      "Heads",
      "Tails"
    ], buttonLabel: "Flip"));

    //random number generator page elements pictures and textual results of each generation
    game.add(GameModel(pathToImage: [
      "assets/icons/random_number_game/0.png",
      "assets/icons/random_number_game/1.png",
      "assets/icons/random_number_game/2.png",
      "assets/icons/random_number_game/3.png",
      "assets/icons/random_number_game/4.png",
      "assets/icons/random_number_game/5.png",
      "assets/icons/random_number_game/6.png",
      "assets/icons/random_number_game/7.png",
      "assets/icons/random_number_game/8.png",
      "assets/icons/random_number_game/9.png",
      "assets/icons/random_number_game/10.png",
    ], result: [
      "0",
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
      "7",
      "8",
      "9",
      "10"
    ], buttonLabel: "Generate"));
    return game;
  }
}
