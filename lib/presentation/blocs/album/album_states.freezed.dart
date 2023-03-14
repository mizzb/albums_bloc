// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'album_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AlbumEvent {
  int get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getAlbumImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? getAlbumImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getAlbumImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAlbumImageEvent value) getAlbumImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAlbumImageEvent value)? getAlbumImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAlbumImageEvent value)? getAlbumImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AlbumEventCopyWith<AlbumEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumEventCopyWith<$Res> {
  factory $AlbumEventCopyWith(
          AlbumEvent value, $Res Function(AlbumEvent) then) =
      _$AlbumEventCopyWithImpl<$Res, AlbumEvent>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$AlbumEventCopyWithImpl<$Res, $Val extends AlbumEvent>
    implements $AlbumEventCopyWith<$Res> {
  _$AlbumEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetAlbumImageEventCopyWith<$Res>
    implements $AlbumEventCopyWith<$Res> {
  factory _$$GetAlbumImageEventCopyWith(_$GetAlbumImageEvent value,
          $Res Function(_$GetAlbumImageEvent) then) =
      __$$GetAlbumImageEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$GetAlbumImageEventCopyWithImpl<$Res>
    extends _$AlbumEventCopyWithImpl<$Res, _$GetAlbumImageEvent>
    implements _$$GetAlbumImageEventCopyWith<$Res> {
  __$$GetAlbumImageEventCopyWithImpl(
      _$GetAlbumImageEvent _value, $Res Function(_$GetAlbumImageEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$GetAlbumImageEvent(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetAlbumImageEvent implements GetAlbumImageEvent {
  const _$GetAlbumImageEvent(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'AlbumEvent.getAlbumImage(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAlbumImageEvent &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAlbumImageEventCopyWith<_$GetAlbumImageEvent> get copyWith =>
      __$$GetAlbumImageEventCopyWithImpl<_$GetAlbumImageEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) getAlbumImage,
  }) {
    return getAlbumImage(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? getAlbumImage,
  }) {
    return getAlbumImage?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? getAlbumImage,
    required TResult orElse(),
  }) {
    if (getAlbumImage != null) {
      return getAlbumImage(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAlbumImageEvent value) getAlbumImage,
  }) {
    return getAlbumImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAlbumImageEvent value)? getAlbumImage,
  }) {
    return getAlbumImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAlbumImageEvent value)? getAlbumImage,
    required TResult orElse(),
  }) {
    if (getAlbumImage != null) {
      return getAlbumImage(this);
    }
    return orElse();
  }
}

abstract class GetAlbumImageEvent implements AlbumEvent {
  const factory GetAlbumImageEvent(final int id) = _$GetAlbumImageEvent;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$GetAlbumImageEventCopyWith<_$GetAlbumImageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AlbumState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<AlbumDetail?> albumList) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<AlbumDetail?> albumList)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<AlbumDetail?> albumList)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AlbumInitialState value) initial,
    required TResult Function(AlbumLoadingState value) loading,
    required TResult Function(AlbumErrorState value) error,
    required TResult Function(AlbumLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AlbumInitialState value)? initial,
    TResult? Function(AlbumLoadingState value)? loading,
    TResult? Function(AlbumErrorState value)? error,
    TResult? Function(AlbumLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AlbumInitialState value)? initial,
    TResult Function(AlbumLoadingState value)? loading,
    TResult Function(AlbumErrorState value)? error,
    TResult Function(AlbumLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumStateCopyWith<$Res> {
  factory $AlbumStateCopyWith(
          AlbumState value, $Res Function(AlbumState) then) =
      _$AlbumStateCopyWithImpl<$Res, AlbumState>;
}

/// @nodoc
class _$AlbumStateCopyWithImpl<$Res, $Val extends AlbumState>
    implements $AlbumStateCopyWith<$Res> {
  _$AlbumStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AlbumInitialStateCopyWith<$Res> {
  factory _$$AlbumInitialStateCopyWith(
          _$AlbumInitialState value, $Res Function(_$AlbumInitialState) then) =
      __$$AlbumInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AlbumInitialStateCopyWithImpl<$Res>
    extends _$AlbumStateCopyWithImpl<$Res, _$AlbumInitialState>
    implements _$$AlbumInitialStateCopyWith<$Res> {
  __$$AlbumInitialStateCopyWithImpl(
      _$AlbumInitialState _value, $Res Function(_$AlbumInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AlbumInitialState implements AlbumInitialState {
  const _$AlbumInitialState();

  @override
  String toString() {
    return 'AlbumState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AlbumInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<AlbumDetail?> albumList) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<AlbumDetail?> albumList)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<AlbumDetail?> albumList)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AlbumInitialState value) initial,
    required TResult Function(AlbumLoadingState value) loading,
    required TResult Function(AlbumErrorState value) error,
    required TResult Function(AlbumLoadedState value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AlbumInitialState value)? initial,
    TResult? Function(AlbumLoadingState value)? loading,
    TResult? Function(AlbumErrorState value)? error,
    TResult? Function(AlbumLoadedState value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AlbumInitialState value)? initial,
    TResult Function(AlbumLoadingState value)? loading,
    TResult Function(AlbumErrorState value)? error,
    TResult Function(AlbumLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AlbumInitialState implements AlbumState {
  const factory AlbumInitialState() = _$AlbumInitialState;
}

/// @nodoc
abstract class _$$AlbumLoadingStateCopyWith<$Res> {
  factory _$$AlbumLoadingStateCopyWith(
          _$AlbumLoadingState value, $Res Function(_$AlbumLoadingState) then) =
      __$$AlbumLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AlbumLoadingStateCopyWithImpl<$Res>
    extends _$AlbumStateCopyWithImpl<$Res, _$AlbumLoadingState>
    implements _$$AlbumLoadingStateCopyWith<$Res> {
  __$$AlbumLoadingStateCopyWithImpl(
      _$AlbumLoadingState _value, $Res Function(_$AlbumLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AlbumLoadingState implements AlbumLoadingState {
  const _$AlbumLoadingState();

  @override
  String toString() {
    return 'AlbumState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AlbumLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<AlbumDetail?> albumList) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<AlbumDetail?> albumList)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<AlbumDetail?> albumList)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AlbumInitialState value) initial,
    required TResult Function(AlbumLoadingState value) loading,
    required TResult Function(AlbumErrorState value) error,
    required TResult Function(AlbumLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AlbumInitialState value)? initial,
    TResult? Function(AlbumLoadingState value)? loading,
    TResult? Function(AlbumErrorState value)? error,
    TResult? Function(AlbumLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AlbumInitialState value)? initial,
    TResult Function(AlbumLoadingState value)? loading,
    TResult Function(AlbumErrorState value)? error,
    TResult Function(AlbumLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AlbumLoadingState implements AlbumState {
  const factory AlbumLoadingState() = _$AlbumLoadingState;
}

/// @nodoc
abstract class _$$AlbumErrorStateCopyWith<$Res> {
  factory _$$AlbumErrorStateCopyWith(
          _$AlbumErrorState value, $Res Function(_$AlbumErrorState) then) =
      __$$AlbumErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AlbumErrorStateCopyWithImpl<$Res>
    extends _$AlbumStateCopyWithImpl<$Res, _$AlbumErrorState>
    implements _$$AlbumErrorStateCopyWith<$Res> {
  __$$AlbumErrorStateCopyWithImpl(
      _$AlbumErrorState _value, $Res Function(_$AlbumErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AlbumErrorState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AlbumErrorState implements AlbumErrorState {
  const _$AlbumErrorState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AlbumState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlbumErrorState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlbumErrorStateCopyWith<_$AlbumErrorState> get copyWith =>
      __$$AlbumErrorStateCopyWithImpl<_$AlbumErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<AlbumDetail?> albumList) loaded,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<AlbumDetail?> albumList)? loaded,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<AlbumDetail?> albumList)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AlbumInitialState value) initial,
    required TResult Function(AlbumLoadingState value) loading,
    required TResult Function(AlbumErrorState value) error,
    required TResult Function(AlbumLoadedState value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AlbumInitialState value)? initial,
    TResult? Function(AlbumLoadingState value)? loading,
    TResult? Function(AlbumErrorState value)? error,
    TResult? Function(AlbumLoadedState value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AlbumInitialState value)? initial,
    TResult Function(AlbumLoadingState value)? loading,
    TResult Function(AlbumErrorState value)? error,
    TResult Function(AlbumLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AlbumErrorState implements AlbumState {
  const factory AlbumErrorState(final String message) = _$AlbumErrorState;

  String get message;
  @JsonKey(ignore: true)
  _$$AlbumErrorStateCopyWith<_$AlbumErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AlbumLoadedStateCopyWith<$Res> {
  factory _$$AlbumLoadedStateCopyWith(
          _$AlbumLoadedState value, $Res Function(_$AlbumLoadedState) then) =
      __$$AlbumLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AlbumDetail?> albumList});
}

/// @nodoc
class __$$AlbumLoadedStateCopyWithImpl<$Res>
    extends _$AlbumStateCopyWithImpl<$Res, _$AlbumLoadedState>
    implements _$$AlbumLoadedStateCopyWith<$Res> {
  __$$AlbumLoadedStateCopyWithImpl(
      _$AlbumLoadedState _value, $Res Function(_$AlbumLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albumList = null,
  }) {
    return _then(_$AlbumLoadedState(
      null == albumList
          ? _value._albumList
          : albumList // ignore: cast_nullable_to_non_nullable
              as List<AlbumDetail?>,
    ));
  }
}

/// @nodoc

class _$AlbumLoadedState implements AlbumLoadedState {
  const _$AlbumLoadedState(final List<AlbumDetail?> albumList)
      : _albumList = albumList;

  final List<AlbumDetail?> _albumList;
  @override
  List<AlbumDetail?> get albumList {
    if (_albumList is EqualUnmodifiableListView) return _albumList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_albumList);
  }

  @override
  String toString() {
    return 'AlbumState.loaded(albumList: $albumList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlbumLoadedState &&
            const DeepCollectionEquality()
                .equals(other._albumList, _albumList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_albumList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlbumLoadedStateCopyWith<_$AlbumLoadedState> get copyWith =>
      __$$AlbumLoadedStateCopyWithImpl<_$AlbumLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<AlbumDetail?> albumList) loaded,
  }) {
    return loaded(albumList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<AlbumDetail?> albumList)? loaded,
  }) {
    return loaded?.call(albumList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<AlbumDetail?> albumList)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(albumList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AlbumInitialState value) initial,
    required TResult Function(AlbumLoadingState value) loading,
    required TResult Function(AlbumErrorState value) error,
    required TResult Function(AlbumLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AlbumInitialState value)? initial,
    TResult? Function(AlbumLoadingState value)? loading,
    TResult? Function(AlbumErrorState value)? error,
    TResult? Function(AlbumLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AlbumInitialState value)? initial,
    TResult Function(AlbumLoadingState value)? loading,
    TResult Function(AlbumErrorState value)? error,
    TResult Function(AlbumLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class AlbumLoadedState implements AlbumState {
  const factory AlbumLoadedState(final List<AlbumDetail?> albumList) =
      _$AlbumLoadedState;

  List<AlbumDetail?> get albumList;
  @JsonKey(ignore: true)
  _$$AlbumLoadedStateCopyWith<_$AlbumLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}
