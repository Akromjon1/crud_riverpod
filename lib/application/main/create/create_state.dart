import 'package:crud_riverpod/infrastructure/models/data/user_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_state.freezed.dart';

@freezed
class CreateState with _$CreateState {
  const factory CreateState({
    @Default(false) bool isLoading,

}) = _CreateState;

  const CreateState._();
}
