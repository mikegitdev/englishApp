import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:app3/presentation/sound_tab_container_screen/models/sound_tab_container_model.dart';
part 'sound_tab_container_state.dart';

final soundTabContainerNotifier =
    StateNotifierProvider<SoundTabContainerNotifier, SoundTabContainerState>(
  (ref) => SoundTabContainerNotifier(SoundTabContainerState(
    soundTabContainerModelObj: SoundTabContainerModel(),
  )),
);

/// A notifier that manages the state of a SoundTabContainer according to the event that is dispatched to it.
class SoundTabContainerNotifier extends StateNotifier<SoundTabContainerState> {
  SoundTabContainerNotifier(SoundTabContainerState state) : super(state) {}
}
