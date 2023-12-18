import 'package:app3/presentation/main_page/tabs_enum.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'tab_provider.g.dart';

@riverpod
class Tab extends _$Tab {
  @override
  int build() => 0;
  int change(i) => i;
}
