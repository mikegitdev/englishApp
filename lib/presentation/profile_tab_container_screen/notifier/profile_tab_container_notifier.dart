import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:app3/presentation/profile_tab_container_screen/models/profile_tab_container_model.dart';
part 'profile_tab_container_state.dart';

final profileTabContainerNotifier = StateNotifierProvider<
    ProfileTabContainerNotifier, ProfileTabContainerState>(
  (ref) => ProfileTabContainerNotifier(ProfileTabContainerState(
    profileTabContainerModelObj: ProfileTabContainerModel(),
  )),
);

/// A notifier that manages the state of a ProfileTabContainer according to the event that is dispatched to it.
class ProfileTabContainerNotifier
    extends StateNotifier<ProfileTabContainerState> {
  ProfileTabContainerNotifier(ProfileTabContainerState state) : super(state) {}
}
