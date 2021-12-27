//Franziska Petzold
import 'package:flutter/material.dart';
import 'package:project_moc/layout/Games/Memorie/data.dart';

// class CardModel {
//   String imageAssetPath;
//   bool isSelected;
//
//   CardModel({
//     this.imageAssetPath,
//     this.isSelected,
//   });
//
//   void setImageAssetPath(String getImageAssetPath) {
//     imageAssetPath = getImageAssetPath;
//   }
//
//   void setIsSelected(bool getIsSelected) {
//   //  assert(getIsSelected != null);
//     isSelected = getIsSelected;
//   }
//
//   String getImageAssetPath() {
//     return imageAssetPath;
//   }
//
//   bool getIsSelected() {
//     return isSelected;
//   }
// }

class TileModel {
  String imageAssetPath;
  bool isSelected = true;

  TileModel({required this.imageAssetPath,});

  void setImageAssetPath(String getImageAssetPath) {
    imageAssetPath = getImageAssetPath;
  }

  String getImageAssetPath() {
    return imageAssetPath;
  }

  void setIsSelected(bool getIsSelected) {
    isSelected = getIsSelected;
  }

  bool getIsSelected() {
    return isSelected;
  }
}
