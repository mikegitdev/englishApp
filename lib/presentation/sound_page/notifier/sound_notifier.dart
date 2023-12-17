import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:app3/presentation/sound_page/models/sound_model.dart';
part 'sound_state.dart';

final soundNotifier = StateNotifierProvider<SoundNotifier, SoundState>(
  (ref) => SoundNotifier(SoundState(
    soundModelObj: SoundModel(),
  )),
);

/// A notifier that manages the state of a Sound according to the event that is dispatched to it.
class SoundNotifier extends StateNotifier<SoundState> {
  SoundNotifier(SoundState state) : super(state) {}
}
