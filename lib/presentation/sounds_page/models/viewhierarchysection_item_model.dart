import '../../../core/app_export.dart';

/// This class is used in the [viewhierarchysection_item_widget] screen.
class ViewhierarchysectionItemModel {
  ViewhierarchysectionItemModel({
    this.image,
    this.text1,
    this.text2,
    this.text3,
    this.id,
  }) {
    image = image ?? ImageConstant.imgRectangle2365x65;
    text1 = text1 ?? "Painting Forest";
    text2 = text2 ?? "59899 Listening";
    text3 = text3 ?? "20 Min";
    id = id ?? "";
  }

  String? image;

  String? text1;

  String? text2;

  String? text3;

  String? id;
}
