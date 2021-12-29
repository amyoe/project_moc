// Franziska Petzold
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_moc/layout/homescreen.dart';
import 'package:project_moc/layout/widget.dart';
import 'package:project_moc/logic/tictoc_utils.dart';

class TicToc extends StatefulWidget {
  const TicToc({Key? key}) : super(key: key);

  @override
  _TicToc createState() => _TicToc();
}

class _TicToc extends State<TicToc> {
  String lastValue = "X";
  bool gameOver = false;
  int turn = 0; // to check the draw
  String result = "";
  List<int> scoreboard = [0, 0, 0, 0, 0, 0, 0, 0];

  Game game = Game();

  @override
  void initState() {
    super.initState();
    game.board = Game.initGameBoard();
    //print(game.board);
  }

  @override
  Widget build(BuildContext context) {
    double boardWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: customAppBar("Tic Tac Toe"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 24.0,
          ),
          Text(
            "${lastValue} ist dran!".toUpperCase(),
            style:
                GoogleFonts.raleway(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 24.0,
          ),
          //now we will make the game board
          //but first we will create a Game class that will contains all the data and method that we will need
          Container(
            width: boardWidth,
            height: boardWidth,
            child: GridView.count(
              crossAxisCount: Game.boardlenth ~/ 3,
              // the ~/ operator allows you to evide to integer and return an Int as a result
              padding: const EdgeInsets.all(10.0),
              mainAxisSpacing: 5.0,
              crossAxisSpacing: 5.0,
              children: List.generate(Game.boardlenth, (index) {
                return InkWell(
                  onTap: gameOver
                      ? null
                      : () {
                          //when we click we need to add the new value to the board and refrech the screen
                          //we need also to toggle the player
                          //now we need to apply the click only if the field is empty
                          //now let's create a button to repeat the game

                          if (game.board![index] == "") {
                            setState(() {
                              game.board![index] = lastValue;
                              turn++;
                              gameOver = game.winnerCheck(
                                  lastValue, index, scoreboard, 3);

                              if (gameOver) {
                                result = "$lastValue gewinnt!";
                              } else if (!gameOver && turn == 9) {
                                result = "Unentschieden!";
                                gameOver = true;
                              }
                              if (lastValue == "X")
                                lastValue = "O";
                              else
                                lastValue = "X";
                            });
                          }
                        },
                  child: Container(
                    width: Game.blocSize,
                    height: Game.blocSize,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      color: Colors.lightBlue,
                    ),
                    child: Center(
                      child: Text(
                        game.board![index],
                        style: GoogleFonts.raleway(
                          color: game.board![index] == "X"
                              ? Colors.black
                              : Colors.white,
                          fontSize: 80.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          Text(result,
              style: GoogleFonts.raleway(
                  fontSize: 30, fontWeight: FontWeight.w700)),
          const SizedBox(
            height: 12,
          ),
          ElevatedButton.icon(
            onPressed: () {
              setState(() {
                //erase the board
                game.board = Game.initGameBoard();
                lastValue = "X";
                gameOver = false;
                turn = 0;
                result = "";
                scoreboard = [0, 0, 0, 0, 0, 0, 0, 0];
              });
            },
            icon: Icon(Icons.replay),
            label: Text("Nochmal",
                style: GoogleFonts.raleway(
                    fontSize: 15, fontWeight: FontWeight.w400)),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(FontAwesomeIcons.home),
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen())),
        foregroundColor: Colors.white,
        backgroundColor: Colors.lightBlue,
      ),
    );
  }
}
