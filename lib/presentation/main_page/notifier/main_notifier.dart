import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '/core/app_export.dart';
import '../models/welcomebackafreen_item_model.dart';
import '../models/meditation101_item_model.dart';
import 'package:app3/presentation/main_page/models/main_model.dart';
part 'main_state.dart';

final mainNotifier = StateNotifierProvider<MainNotifier, MainState>(
  (ref) => MainNotifier(MainState(
    mainModelObj: MainModel(welcomebackafreenItemList: [
      WelcomebackafreenItemModel(mobile: ImageConstant.imgMobile, text: "Calm"),
      WelcomebackafreenItemModel(
          mobile: ImageConstant.imgProfile, text: "Relax"),
      WelcomebackafreenItemModel(mobile: ImageConstant.imgPlay, text: "Focus")
    ], meditation101ItemList: [
      Meditation101ItemModel(
          stackImage: ImageConstant.img2844687RemovebgPreview,
          titleText: "Meditation 101",
          descriptionText: "Techniques, Benefits, and a Beginner’s How-To")
    ]),
  )),
);

/// A notifier that manages the state of a Main according to the event that is dispatched to it.
class MainNotifier extends StateNotifier<MainState> {
  MainNotifier(MainState state) : super(state) {}
}
