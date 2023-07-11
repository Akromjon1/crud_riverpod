// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateState {
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateStateCopyWith<CreateState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateStateCopyWith<$Res> {
  factory $CreateStateCopyWith(
          CreateState value, $Res Function(CreateState) then) =
      _$CreateStateCopyWithImpl<$Res, CreateState>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class _$CreateStateCopyWithImpl<$Res, $Val extends CreateState>
    implements $CreateStateCopyWith<$Res> {
  _$CreateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateStateCopyWith<$Res>
    implements $CreateStateCopyWith<$Res> {
  factory _$$_CreateStateCopyWith(
          _$_CreateState value, $Res Function(_$_CreateState) then) =
      __$$_CreateStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$_CreateStateCopyWithImpl<$Res>
    extends _$CreateStateCopyWithImpl<$Res, _$_CreateState>
    implements _$$_CreateStateCopyWith<$Res> {
  __$$_CreateStateCopyWithImpl(
      _$_CreateState _value, $Res Function(_$_CreateState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$_CreateState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CreateState extends _CreateState {
  const _$_CreateState({this.isLoading = false}) : super._();

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'CreateState(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateStateCopyWith<_$_CreateState> get copyWith =>
      __$$_CreateStateCopyWithImpl<_$_CreateState>(this, _$identity);
}

abstract class _CreateState extends CreateState {
  const factory _CreateState({final bool isLoading}) = _$_CreateState;
  const _CreateState._() : super._();

  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_CreateStateCopyWith<_$_CreateState> get copyWith =>
      throw _privateConstructorUsedError;
}
