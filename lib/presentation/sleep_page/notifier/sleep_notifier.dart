import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/sleepcomponent_item_model.dart';
import 'package:app3/presentation/sleep_page/models/sleep_model.dart';
part 'sleep_state.dart';

final sleepNotifier = StateNotifierProvider<SleepNotifier, SleepState>(
  (ref) => SleepNotifier(SleepState(
    sleepModelObj: SleepModel(sleepcomponentItemList: [
      SleepcomponentItemModel(
          imageClass: ImageConstant.imgMobileOnprimarycontainer,
          text: "5h 30m",
          sleep: "Sleep"),
      SleepcomponentItemModel(
          imageClass: ImageConstant.imgThumbsUp, text: "1h 10m", sleep: "Deep"),
      SleepcomponentItemModel(
          imageClass: ImageConstant.imgSignal, text: "3h 30m", sleep: "Quality")
    ]),
  )),
);

/// A notifier that manages the state of a Sleep according to the event that is dispatched to it.
class SleepNotifier extends StateNotifier<SleepState> {
  SleepNotifier(SleepState state) : super(state) {}
}
