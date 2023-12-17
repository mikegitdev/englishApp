import '../../../core/app_export.dart';

/// This class is used in the [sleepcomponent_item_widget] screen.
class SleepcomponentItemModel {
  SleepcomponentItemModel({
    this.imageClass,
    this.text,
    this.sleep,
    this.id,
  }) {
    imageClass = imageClass ?? ImageConstant.imgMobileOnprimarycontainer;
    text = text ?? "5h 30m";
    sleep = sleep ?? "Sleep";
    id = id ?? "";
  }

  String? imageClass;

  String? text;

  String? sleep;

  String? id;
}
