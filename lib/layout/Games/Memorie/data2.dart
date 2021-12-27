import 'package:project_moc/model/card_model.dart';

String selectedTile = "";
int selectedIndex = 1;

bool selected = true;
int points = 0;

List<TileModel> myPairs = <TileModel>[];
List<bool> clicked = <bool>[];

List<bool> getClicked() {
  List<bool> yoClicked = <bool>[];
  List<TileModel> myairs = <TileModel>[];
  myairs = getPairs();
  for (int i = 0; i < myairs.length; i++) {
    yoClicked[i] = false;
  }

  return yoClicked;
}

List<TileModel> getPairs() {
  List<TileModel> pairs = <TileModel>[];

  TileModel tileModel = TileModel(imageAssetPath: '');

  //1
  tileModel.setImageAssetPath("assets/Ai.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = TileModel(imageAssetPath: '');

  //2
  tileModel.setImageAssetPath("assets/Bücherei.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel =  TileModel(imageAssetPath: '');

  //3
  tileModel.setImageAssetPath("assets/Laptop.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel =  TileModel(imageAssetPath: '');

  //4
  tileModel.setImageAssetPath("assets/Student.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = TileModel(imageAssetPath: '');

  //5
  tileModel.setImageAssetPath("assets/Uni.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = TileModel(imageAssetPath: '');

  //6
  tileModel.setImageAssetPath("assets/Vorlesung.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel =  TileModel(imageAssetPath: '');

  return pairs;
}

List<TileModel> getQuestionPairs() {
  List<TileModel> pairs = <TileModel>[];

  TileModel tileModel =  TileModel(imageAssetPath: '');

  //1
  tileModel.setImageAssetPath("assets/fragezeichen.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = TileModel(imageAssetPath: '');

  //2
  tileModel.setImageAssetPath("assets/fragezeichen.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = TileModel(imageAssetPath: 'assets/fragezeichen.png');

  //3
  tileModel.setImageAssetPath("assets/fragezeichen.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel =  TileModel(imageAssetPath: 'assets/fragezeichen.png');

  //4
  tileModel.setImageAssetPath("assets/fragezeichen.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = TileModel(imageAssetPath: '');

  //5
  tileModel.setImageAssetPath("assets/fragezeichen.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = TileModel(imageAssetPath: '');

  //6
  tileModel.setImageAssetPath("assets/fragezeichen.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = TileModel(imageAssetPath: '');

  return pairs;
}
