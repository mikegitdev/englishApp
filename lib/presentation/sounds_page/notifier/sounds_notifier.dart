import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/viewhierarchysection_item_model.dart';
import 'package:app3/presentation/sounds_page/models/sounds_model.dart';
part 'sounds_state.dart';

final soundsNotifier = StateNotifierProvider<SoundsNotifier, SoundsState>(
  (ref) => SoundsNotifier(SoundsState(
    soundsModelObj: SoundsModel(viewhierarchysectionItemList: [
      ViewhierarchysectionItemModel(
          image: ImageConstant.imgRectangle2365x65,
          text1: "Painting Forest",
          text2: "59899 Listening",
          text3: "20 Min"),
      ViewhierarchysectionItemModel(
          image: ImageConstant.imgRectangle25,
          text1: "Mountaineers",
          text2: "45697 Listening",
          text3: "15 Min"),
      ViewhierarchysectionItemModel(
          image: ImageConstant.imgRectangle26,
          text1: "Lovely Deserts",
          text2: "9428\r Listening",
          text3: "39 Min"),
      ViewhierarchysectionItemModel(
          image: ImageConstant.imgRectangle28,
          text1: "The Hill Sides",
          text2: "52599 Listening",
          text3: "50 Min")
    ]),
  )),
);

/// A notifier that manages the state of a Sounds according to the event that is dispatched to it.
class SoundsNotifier extends StateNotifier<SoundsState> {
  SoundsNotifier(SoundsState state) : super(state) {}
}
