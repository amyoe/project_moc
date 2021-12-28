//Franziska Petzold

import 'package:project_moc/layout/Games/Memorie/data.dart';

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
