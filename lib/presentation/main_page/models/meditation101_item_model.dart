import '../../../core/app_export.dart';

/// This class is used in the [meditation101_item_widget] screen.
class Meditation101ItemModel {
  Meditation101ItemModel({
    this.stackImage,
    this.titleText,
    this.descriptionText,
    this.id,
  }) {
    stackImage = stackImage ?? ImageConstant.img2844687RemovebgPreview;
    titleText = titleText ?? "Meditation 101";
    descriptionText =
        descriptionText ?? "Techniques, Benefits, and a Beginner’s How-To";
    id = id ?? "";
  }

  String? stackImage;

  String? titleText;

  String? descriptionText;

  String? id;
}
