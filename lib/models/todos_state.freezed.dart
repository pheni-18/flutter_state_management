// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'todos_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TodosStateTearOff {
  const _$TodosStateTearOff();

// ignore: unused_element
  _TodosState call({List<Todo> todos = const <Todo>[]}) {
    return _TodosState(
      todos: todos,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TodosState = _$TodosStateTearOff();

/// @nodoc
mixin _$TodosState {
  List<Todo> get todos;

  @JsonKey(ignore: true)
  $TodosStateCopyWith<TodosState> get copyWith;
}

/// @nodoc
abstract class $TodosStateCopyWith<$Res> {
  factory $TodosStateCopyWith(
          TodosState value, $Res Function(TodosState) then) =
      _$TodosStateCopyWithImpl<$Res>;
  $Res call({List<Todo> todos});
}

/// @nodoc
class _$TodosStateCopyWithImpl<$Res> implements $TodosStateCopyWith<$Res> {
  _$TodosStateCopyWithImpl(this._value, this._then);

  final TodosState _value;
  // ignore: unused_field
  final $Res Function(TodosState) _then;

  @override
  $Res call({
    Object todos = freezed,
  }) {
    return _then(_value.copyWith(
      todos: todos == freezed ? _value.todos : todos as List<Todo>,
    ));
  }
}

/// @nodoc
abstract class _$TodosStateCopyWith<$Res> implements $TodosStateCopyWith<$Res> {
  factory _$TodosStateCopyWith(
          _TodosState value, $Res Function(_TodosState) then) =
      __$TodosStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Todo> todos});
}

/// @nodoc
class __$TodosStateCopyWithImpl<$Res> extends _$TodosStateCopyWithImpl<$Res>
    implements _$TodosStateCopyWith<$Res> {
  __$TodosStateCopyWithImpl(
      _TodosState _value, $Res Function(_TodosState) _then)
      : super(_value, (v) => _then(v as _TodosState));

  @override
  _TodosState get _value => super._value as _TodosState;

  @override
  $Res call({
    Object todos = freezed,
  }) {
    return _then(_TodosState(
      todos: todos == freezed ? _value.todos : todos as List<Todo>,
    ));
  }
}

/// @nodoc
class _$_TodosState implements _TodosState {
  const _$_TodosState({this.todos = const <Todo>[]}) : assert(todos != null);

  @JsonKey(defaultValue: const <Todo>[])
  @override
  final List<Todo> todos;

  @override
  String toString() {
    return 'TodosState(todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TodosState &&
            (identical(other.todos, todos) ||
                const DeepCollectionEquality().equals(other.todos, todos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(todos);

  @JsonKey(ignore: true)
  @override
  _$TodosStateCopyWith<_TodosState> get copyWith =>
      __$TodosStateCopyWithImpl<_TodosState>(this, _$identity);
}

abstract class _TodosState implements TodosState {
  const factory _TodosState({List<Todo> todos}) = _$_TodosState;

  @override
  List<Todo> get todos;
  @override
  @JsonKey(ignore: true)
  _$TodosStateCopyWith<_TodosState> get copyWith;
}
