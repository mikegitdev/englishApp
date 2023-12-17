// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'viewhierarchysection_item_model.dart';

/// This class defines the variables used in the [sounds_page],
/// and is typically used to hold data that is passed between different parts of the application.
class SoundsModel extends Equatable {
  SoundsModel({this.viewhierarchysectionItemList = const []}) {}

  List<ViewhierarchysectionItemModel> viewhierarchysectionItemList;

  SoundsModel copyWith(
      {List<ViewhierarchysectionItemModel>? viewhierarchysectionItemList}) {
    return SoundsModel(
      viewhierarchysectionItemList:
          viewhierarchysectionItemList ?? this.viewhierarchysectionItemList,
    );
  }

  @override
  List<Object?> get props => [viewhierarchysectionItemList];
}
