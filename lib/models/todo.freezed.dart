// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'todo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TodoTearOff {
  const _$TodoTearOff();

// ignore: unused_element
  _Todo call({@required String id, @required String title, bool done = false}) {
    return _Todo(
      id: id,
      title: title,
      done: done,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Todo = _$TodoTearOff();

/// @nodoc
mixin _$Todo {
  String get id;
  String get title;
  bool get done;

  @JsonKey(ignore: true)
  $TodoCopyWith<Todo> get copyWith;
}

/// @nodoc
abstract class $TodoCopyWith<$Res> {
  factory $TodoCopyWith(Todo value, $Res Function(Todo) then) =
      _$TodoCopyWithImpl<$Res>;
  $Res call({String id, String title, bool done});
}

/// @nodoc
class _$TodoCopyWithImpl<$Res> implements $TodoCopyWith<$Res> {
  _$TodoCopyWithImpl(this._value, this._then);

  final Todo _value;
  // ignore: unused_field
  final $Res Function(Todo) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object done = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      done: done == freezed ? _value.done : done as bool,
    ));
  }
}

/// @nodoc
abstract class _$TodoCopyWith<$Res> implements $TodoCopyWith<$Res> {
  factory _$TodoCopyWith(_Todo value, $Res Function(_Todo) then) =
      __$TodoCopyWithImpl<$Res>;
  @override
  $Res call({String id, String title, bool done});
}

/// @nodoc
class __$TodoCopyWithImpl<$Res> extends _$TodoCopyWithImpl<$Res>
    implements _$TodoCopyWith<$Res> {
  __$TodoCopyWithImpl(_Todo _value, $Res Function(_Todo) _then)
      : super(_value, (v) => _then(v as _Todo));

  @override
  _Todo get _value => super._value as _Todo;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object done = freezed,
  }) {
    return _then(_Todo(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      done: done == freezed ? _value.done : done as bool,
    ));
  }
}

/// @nodoc
class _$_Todo implements _Todo {
  const _$_Todo({@required this.id, @required this.title, this.done = false})
      : assert(id != null),
        assert(title != null),
        assert(done != null);

  @override
  final String id;
  @override
  final String title;
  @JsonKey(defaultValue: false)
  @override
  final bool done;

  @override
  String toString() {
    return 'Todo(id: $id, title: $title, done: $done)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Todo &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.done, done) ||
                const DeepCollectionEquality().equals(other.done, done)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(done);

  @JsonKey(ignore: true)
  @override
  _$TodoCopyWith<_Todo> get copyWith =>
      __$TodoCopyWithImpl<_Todo>(this, _$identity);
}

abstract class _Todo implements Todo {
  const factory _Todo(
      {@required String id, @required String title, bool done}) = _$_Todo;

  @override
  String get id;
  @override
  String get title;
  @override
  bool get done;
  @override
  @JsonKey(ignore: true)
  _$TodoCopyWith<_Todo> get copyWith;
}
