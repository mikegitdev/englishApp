// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'sleepcomponent_item_model.dart';

/// This class defines the variables used in the [sleep_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SleepModel extends Equatable {
  SleepModel({this.sleepcomponentItemList = const []}) {}

  List<SleepcomponentItemModel> sleepcomponentItemList;

  SleepModel copyWith({List<SleepcomponentItemModel>? sleepcomponentItemList}) {
    return SleepModel(
      sleepcomponentItemList:
          sleepcomponentItemList ?? this.sleepcomponentItemList,
    );
  }

  @override
  List<Object?> get props => [sleepcomponentItemList];
}
