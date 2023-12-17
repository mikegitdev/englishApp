// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'welcomebackafreen_item_model.dart';
import 'meditation101_item_model.dart';

/// This class defines the variables used in the [main_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MainModel extends Equatable {
  MainModel({
    this.welcomebackafreenItemList = const [],
    this.meditation101ItemList = const [],
  }) {}

  List<WelcomebackafreenItemModel> welcomebackafreenItemList;

  List<Meditation101ItemModel> meditation101ItemList;

  MainModel copyWith({
    List<WelcomebackafreenItemModel>? welcomebackafreenItemList,
    List<Meditation101ItemModel>? meditation101ItemList,
  }) {
    return MainModel(
      welcomebackafreenItemList:
          welcomebackafreenItemList ?? this.welcomebackafreenItemList,
      meditation101ItemList:
          meditation101ItemList ?? this.meditation101ItemList,
    );
  }

  @override
  List<Object?> get props => [welcomebackafreenItemList, meditation101ItemList];
}
