import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:app3/presentation/meditation_page/models/meditation_model.dart';
part 'meditation_state.dart';

final meditationNotifier =
    StateNotifierProvider<MeditationNotifier, MeditationState>(
  (ref) => MeditationNotifier(MeditationState(
    meditationModelObj: MeditationModel(),
  )),
);

/// A notifier that manages the state of a Meditation according to the event that is dispatched to it.
class MeditationNotifier extends StateNotifier<MeditationState> {
  MeditationNotifier(MeditationState state) : super(state) {}
}
