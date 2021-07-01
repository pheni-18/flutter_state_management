// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'todo_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TodoFormStateTearOff {
  const _$TodoFormStateTearOff();

// ignore: unused_element
  _TodoFormState call({String title = '', bool canSubmit = false}) {
    return _TodoFormState(
      title: title,
      canSubmit: canSubmit,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TodoFormState = _$TodoFormStateTearOff();

/// @nodoc
mixin _$TodoFormState {
  String get title;
  bool get canSubmit;

  @JsonKey(ignore: true)
  $TodoFormStateCopyWith<TodoFormState> get copyWith;
}

/// @nodoc
abstract class $TodoFormStateCopyWith<$Res> {
  factory $TodoFormStateCopyWith(
          TodoFormState value, $Res Function(TodoFormState) then) =
      _$TodoFormStateCopyWithImpl<$Res>;
  $Res call({String title, bool canSubmit});
}

/// @nodoc
class _$TodoFormStateCopyWithImpl<$Res>
    implements $TodoFormStateCopyWith<$Res> {
  _$TodoFormStateCopyWithImpl(this._value, this._then);

  final TodoFormState _value;
  // ignore: unused_field
  final $Res Function(TodoFormState) _then;

  @override
  $Res call({
    Object title = freezed,
    Object canSubmit = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      canSubmit: canSubmit == freezed ? _value.canSubmit : canSubmit as bool,
    ));
  }
}

/// @nodoc
abstract class _$TodoFormStateCopyWith<$Res>
    implements $TodoFormStateCopyWith<$Res> {
  factory _$TodoFormStateCopyWith(
          _TodoFormState value, $Res Function(_TodoFormState) then) =
      __$TodoFormStateCopyWithImpl<$Res>;
  @override
  $Res call({String title, bool canSubmit});
}

/// @nodoc
class __$TodoFormStateCopyWithImpl<$Res>
    extends _$TodoFormStateCopyWithImpl<$Res>
    implements _$TodoFormStateCopyWith<$Res> {
  __$TodoFormStateCopyWithImpl(
      _TodoFormState _value, $Res Function(_TodoFormState) _then)
      : super(_value, (v) => _then(v as _TodoFormState));

  @override
  _TodoFormState get _value => super._value as _TodoFormState;

  @override
  $Res call({
    Object title = freezed,
    Object canSubmit = freezed,
  }) {
    return _then(_TodoFormState(
      title: title == freezed ? _value.title : title as String,
      canSubmit: canSubmit == freezed ? _value.canSubmit : canSubmit as bool,
    ));
  }
}

/// @nodoc
class _$_TodoFormState implements _TodoFormState {
  const _$_TodoFormState({this.title = '', this.canSubmit = false})
      : assert(title != null),
        assert(canSubmit != null);

  @JsonKey(defaultValue: '')
  @override
  final String title;
  @JsonKey(defaultValue: false)
  @override
  final bool canSubmit;

  @override
  String toString() {
    return 'TodoFormState(title: $title, canSubmit: $canSubmit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TodoFormState &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.canSubmit, canSubmit) ||
                const DeepCollectionEquality()
                    .equals(other.canSubmit, canSubmit)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(canSubmit);

  @JsonKey(ignore: true)
  @override
  _$TodoFormStateCopyWith<_TodoFormState> get copyWith =>
      __$TodoFormStateCopyWithImpl<_TodoFormState>(this, _$identity);
}

abstract class _TodoFormState implements TodoFormState {
  const factory _TodoFormState({String title, bool canSubmit}) =
      _$_TodoFormState;

  @override
  String get title;
  @override
  bool get canSubmit;
  @override
  @JsonKey(ignore: true)
  _$TodoFormStateCopyWith<_TodoFormState> get copyWith;
}
