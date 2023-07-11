import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_state.freezed.dart';

@freezed
class UpdateState with _$UpdateState {
  const factory UpdateState({
    @Default(false) bool isLoading,

}) = _UpdateState;

  const UpdateState._();
}
