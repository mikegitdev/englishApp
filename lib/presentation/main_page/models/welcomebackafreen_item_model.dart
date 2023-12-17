import '../../../core/app_export.dart';

/// This class is used in the [welcomebackafreen_item_widget] screen.
class WelcomebackafreenItemModel {
  WelcomebackafreenItemModel({
    this.mobile,
    this.text,
    this.id,
  }) {
    mobile = mobile ?? ImageConstant.imgMobile;
    text = text ?? "Calm";
    id = id ?? "";
  }

  String? mobile;

  String? text;

  String? id;
}
