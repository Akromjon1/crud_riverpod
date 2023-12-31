import 'package:crud_riverpod/infrastructure/models/data/user_data.dart';
import 'package:crud_riverpod/infrastructure/models/response/user_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_state.freezed.dart';

@freezed
class MainState with _$MainState {
  const factory MainState({
    @Default(false) bool isLoading,
    @Default([]) List<UserData> userList,

}) = _MainState;

  const MainState._();
}
