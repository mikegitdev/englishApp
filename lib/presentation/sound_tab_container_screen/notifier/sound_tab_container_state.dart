// ignore_for_file: must_be_immutable

part of 'sound_tab_container_notifier.dart';

/// Represents the state of SoundTabContainer in the application.
class SoundTabContainerState extends Equatable {
  SoundTabContainerState({this.soundTabContainerModelObj});

  SoundTabContainerModel? soundTabContainerModelObj;

  @override
  List<Object?> get props => [
        soundTabContainerModelObj,
      ];

  SoundTabContainerState copyWith(
      {SoundTabContainerModel? soundTabContainerModelObj}) {
    return SoundTabContainerState(
      soundTabContainerModelObj:
          soundTabContainerModelObj ?? this.soundTabContainerModelObj,
    );
  }
}
