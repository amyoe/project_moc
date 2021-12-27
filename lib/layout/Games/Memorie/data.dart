// //Franziska Petzold
//
// import 'package:project_moc/model/card_model.dart';
//
// int punkte = 0;
// bool selected = false;
// String selectedImageAssetPath = "";
// int selectedCardIndex;
//
// List<CardModel> myPairs = <CardModel>[];
// List<bool> clicked = <bool>[];
//
// List<bool> getClicked() {
//   List<bool> youClicked = <bool>[];
//   List<CardModel> myPairs = <CardModel>[];
//   myPairs = getPairs();
//   for (int i = 0; i < myPairs.length; i++) {
//     youClicked[i] = false;
//   }
//
//   return youClicked;
// }
//
// List<CardModel> getPairs() {
//   List<CardModel> pairs = <CardModel>[];
//
//   CardModel cardModel = CardModel();
//
//   List<CardModel> getPairs() {
//     List<CardModel> pairs = <CardModel>[];
//     CardModel cardModel = CardModel();
//
//     //1
//     cardModel.setImageAssetPath("assets/AI.jpg");
//     cardModel.setIsSelected(false);
//     pairs.add(cardModel);
//     pairs.add(cardModel);
//
//     cardModel = CardModel();
//
//     //2
//     cardModel.setImageAssetPath("assets/Bücherei.jpg");
//     cardModel.setIsSelected(false);
//     pairs.add(cardModel);
//     pairs.add(cardModel);
//
//     cardModel = CardModel();
//
//     //3
//     cardModel.setImageAssetPath("assets/Laptop.jpg");
//     cardModel.setIsSelected(false);
//     pairs.add(cardModel);
//     pairs.add(cardModel);
//
//     cardModel = CardModel();
//
//     //4
//     cardModel.setImageAssetPath("assets/Student.jpg");
//     cardModel.setIsSelected(false);
//     pairs.add(cardModel);
//     pairs.add(cardModel);
//
//     cardModel = CardModel();
//
//     //5
//     cardModel.setImageAssetPath("assets/Uni.jpg");
//     cardModel.setIsSelected(false);
//     pairs.add(cardModel);
//     pairs.add(cardModel);
//
//     cardModel = CardModel();
//
//     //6
//     cardModel.setImageAssetPath("assets/Vorlesung.jpg");
//     cardModel.setIsSelected(false);
//     pairs.add(cardModel);
//     pairs.add(cardModel);
//
//     cardModel = CardModel();
//
//     return pairs;
//   }
//
//   List<CardModel> getQuestions() {
//     List<CardModel> pairs = List<CardModel>();
//     CardModel cardModel = CardModel();
//
//     //1
//     cardModel.setImageAssetPath("assets/fragezeichen.jpg");
//     cardModel.setIsSelected(false);
//     pairs.add(cardModel);
//     pairs.add(cardModel);
//
//     cardModel = CardModel();
//
//     //2
//     cardModel.setImageAssetPath("assets/fragezeichen.jpg");
//     cardModel.setIsSelected(false);
//     pairs.add(cardModel);
//     pairs.add(cardModel);
//
//     cardModel = CardModel();
//
//     //3
//     cardModel.setImageAssetPath("assets/fragezeichen.jpg");
//     cardModel.setIsSelected(false);
//     pairs.add(cardModel);
//     pairs.add(cardModel);
//
//     cardModel = CardModel();
//
//     //4
//     cardModel.setImageAssetPath("assets/fragezeichen.jpg");
//     cardModel.setIsSelected(false);
//     pairs.add(cardModel);
//     pairs.add(cardModel);
//
//     cardModel = CardModel();
//
//     //5
//     cardModel.setImageAssetPath("assets/fragezeichen.jpg");
//     cardModel.setIsSelected(false);
//     pairs.add(cardModel);
//     pairs.add(cardModel);
//
//     cardModel = CardModel();
//
//     //6
//     cardModel.setImageAssetPath("assets/fragezeichen.jpg");
//     cardModel.setIsSelected(false);
//     pairs.add(cardModel);
//     pairs.add(cardModel);
//
//     cardModel = CardModel();
//
//     return pairs;
//   }
// }
