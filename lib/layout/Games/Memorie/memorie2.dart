// Franziska Petzold

import 'package:flutter/material.dart';
import 'package:project_moc/layout/Games/Memorie/data2.dart';
import 'package:project_moc/layout/widget.dart';
import 'package:project_moc/model/card_model.dart';
//import '../../widget.dart';
import  'dart:async' ;
//import 'data.dart';

class Memorie extends StatefulWidget {
  const Memorie({Key? key}) : super(key: key);

  @override
  _MemorieState createState() => _MemorieState();

}

class _MemorieState extends State<Memorie> {
  List<TileModel> gridViewTiles = <TileModel>[];
  List<TileModel> questionPairs = <TileModel>[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    reStart();
  }
  void reStart() {

    myPairs = getPairs();
    myPairs.shuffle();

    gridViewTiles = myPairs;
    Future.delayed(const Duration(seconds: 5), () {
// Here you can write your code
      setState(() {
        print("2 seconds done");
        // Here you can write your code for open new view
        questionPairs = getQuestionPairs();
        gridViewTiles = questionPairs;
        selected = false;
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar("Memorie"),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 48,
              ),
              points != 600 ? Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "$points/800",
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  const Text(
                    "Points",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w300),
                  ),
                ],
              ) : Container(),
              const SizedBox(
                height: 20,
              ),
              points != 800 ? GridView(
                shrinkWrap: true,
                //physics: ClampingScrollPhysics(),
                scrollDirection: Axis.vertical,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    mainAxisSpacing: 0.0, maxCrossAxisExtent: 100.0),
                children: List.generate(gridViewTiles.length, (index) {
                  return Tile(
                    imagePathUrl: gridViewTiles[index].getImageAssetPath(),
                    tileIndex: index,
                    parent: this,
                  );
                }),
              ) : Container(
                  child: Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            points = 0;
                            reStart();
                          });
                        },
                        child: Container(
                          height: 50,
                          width: 200,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: const Text("Nochmal", style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w500
                          ),),
                        ),
                      ),
                      SizedBox(height: 20,),
                      GestureDetector(
                        onTap: (){
                          // TODO
                        },
                        child: Container(
                          height: 50,
                          width: 200,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.blue,
                                width: 2
                            ),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: const Text("Rate Us", style: TextStyle(
                              color: Colors.blue,
                              fontSize: 17,
                              fontWeight: FontWeight.w500
                          ),),
                        ),
                      ),
                    ],
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}



class Tile extends StatefulWidget {
  String imagePathUrl;
  int tileIndex;
  _MemorieState parent;

  Tile({required this.imagePathUrl, required this.tileIndex, required this.parent});

  @override
  _TileState createState() => _TileState();
}

class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!selected) {
          setState(() {
            myPairs[widget.tileIndex].setIsSelected(true);
          });
          if (selectedTile != "") {
            /// testing if the selected tiles are same
            if (selectedTile == myPairs[widget.tileIndex].getImageAssetPath()) {
              print("add point");
              points = points + 100;
              print(selectedTile + " thishis" + widget.imagePathUrl);

              TileModel tileModel = TileModel(imageAssetPath: '',);
              print(widget.tileIndex);
              selected = true;
              Future.delayed(const Duration(seconds: 2), () {
                tileModel.setImageAssetPath("");
                myPairs[widget.tileIndex] = tileModel;
                print(selectedIndex);
                myPairs[selectedIndex] = tileModel;
                this.widget.parent.setState(() {});
                setState(() {
                  selected = false;
                });
                selectedTile = "";
              });
            } else {
              print(selectedTile +
                  " thishis " +
                  myPairs[widget.tileIndex].getImageAssetPath());
              print("wrong choice");
              print(widget.tileIndex);
              print(selectedIndex);
              selected = true;
              Future.delayed(const Duration(seconds: 2), () {
                this.widget.parent.setState(() {
                  myPairs[widget.tileIndex].setIsSelected(false);
                  myPairs[selectedIndex].setIsSelected(false);
                });
                setState(() {
                  selected = false;
                });
              });

              selectedTile = "";
            }
          } else {
            setState(() {
              selectedTile = myPairs[widget.tileIndex].getImageAssetPath();
              selectedIndex = widget.tileIndex;
            });

            print(selectedTile);
            print(selectedIndex);
          }
        }
      },
      child: Container(
        margin: EdgeInsets.all(5),
        child: myPairs[widget.tileIndex].getImageAssetPath() != ""
            ? Image.asset(myPairs[widget.tileIndex].getIsSelected()
            ? myPairs[widget.tileIndex].getImageAssetPath()
            : widget.imagePathUrl)
            : Container(
          color: Colors.white,
          child: Image.asset("assets/correct.png"),
        ),
      ),
    );
  }
}