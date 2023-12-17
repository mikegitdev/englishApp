// ignore_for_file: must_be_immutable

part of 'profile_notifier.dart';

/// Represents the state of Profile in the application.
class ProfileState extends Equatable {
  ProfileState({
    this.editTextController,
    this.editTextController1,
    this.editTextController2,
    this.profileModelObj,
  });

  TextEditingController? editTextController;

  TextEditingController? editTextController1;

  TextEditingController? editTextController2;

  ProfileModel? profileModelObj;

  @override
  List<Object?> get props => [
        editTextController,
        editTextController1,
        editTextController2,
        profileModelObj,
      ];

  ProfileState copyWith({
    TextEditingController? editTextController,
    TextEditingController? editTextController1,
    TextEditingController? editTextController2,
    ProfileModel? profileModelObj,
  }) {
    return ProfileState(
      editTextController: editTextController ?? this.editTextController,
      editTextController1: editTextController1 ?? this.editTextController1,
      editTextController2: editTextController2 ?? this.editTextController2,
      profileModelObj: profileModelObj ?? this.profileModelObj,
    );
  }
}
