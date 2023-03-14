// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  String get title => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) searchAlbums,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? searchAlbums,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? searchAlbums,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchAlbumEvent value) searchAlbums,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchAlbumEvent value)? searchAlbums,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchAlbumEvent value)? searchAlbums,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchEventCopyWith<SearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchAlbumEventCopyWith<$Res>
    implements $SearchEventCopyWith<$Res> {
  factory _$$SearchAlbumEventCopyWith(
          _$SearchAlbumEvent value, $Res Function(_$SearchAlbumEvent) then) =
      __$$SearchAlbumEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$SearchAlbumEventCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SearchAlbumEvent>
    implements _$$SearchAlbumEventCopyWith<$Res> {
  __$$SearchAlbumEventCopyWithImpl(
      _$SearchAlbumEvent _value, $Res Function(_$SearchAlbumEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$SearchAlbumEvent(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchAlbumEvent implements SearchAlbumEvent {
  const _$SearchAlbumEvent(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'SearchEvent.searchAlbums(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchAlbumEvent &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchAlbumEventCopyWith<_$SearchAlbumEvent> get copyWith =>
      __$$SearchAlbumEventCopyWithImpl<_$SearchAlbumEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) searchAlbums,
  }) {
    return searchAlbums(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? searchAlbums,
  }) {
    return searchAlbums?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? searchAlbums,
    required TResult orElse(),
  }) {
    if (searchAlbums != null) {
      return searchAlbums(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchAlbumEvent value) searchAlbums,
  }) {
    return searchAlbums(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchAlbumEvent value)? searchAlbums,
  }) {
    return searchAlbums?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchAlbumEvent value)? searchAlbums,
    required TResult orElse(),
  }) {
    if (searchAlbums != null) {
      return searchAlbums(this);
    }
    return orElse();
  }
}

abstract class SearchAlbumEvent implements SearchEvent {
  const factory SearchAlbumEvent(final String title) = _$SearchAlbumEvent;

  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$SearchAlbumEventCopyWith<_$SearchAlbumEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Album?> albumList) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<Album?> albumList)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Album?> albumList)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchInitialState value) initial,
    required TResult Function(SearchLoadingState value) loading,
    required TResult Function(SearchErrorState value) error,
    required TResult Function(SearchLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchInitialState value)? initial,
    TResult? Function(SearchLoadingState value)? loading,
    TResult? Function(SearchErrorState value)? error,
    TResult? Function(SearchLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitialState value)? initial,
    TResult Function(SearchLoadingState value)? loading,
    TResult Function(SearchErrorState value)? error,
    TResult Function(SearchLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SearchInitialStateCopyWith<$Res> {
  factory _$$SearchInitialStateCopyWith(_$SearchInitialState value,
          $Res Function(_$SearchInitialState) then) =
      __$$SearchInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchInitialStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchInitialState>
    implements _$$SearchInitialStateCopyWith<$Res> {
  __$$SearchInitialStateCopyWithImpl(
      _$SearchInitialState _value, $Res Function(_$SearchInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchInitialState implements SearchInitialState {
  const _$SearchInitialState();

  @override
  String toString() {
    return 'SearchState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Album?> albumList) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<Album?> albumList)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Album?> albumList)? loaded,
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
    required TResult Function(SearchInitialState value) initial,
    required TResult Function(SearchLoadingState value) loading,
    required TResult Function(SearchErrorState value) error,
    required TResult Function(SearchLoadedState value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchInitialState value)? initial,
    TResult? Function(SearchLoadingState value)? loading,
    TResult? Function(SearchErrorState value)? error,
    TResult? Function(SearchLoadedState value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitialState value)? initial,
    TResult Function(SearchLoadingState value)? loading,
    TResult Function(SearchErrorState value)? error,
    TResult Function(SearchLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SearchInitialState implements SearchState {
  const factory SearchInitialState() = _$SearchInitialState;
}

/// @nodoc
abstract class _$$SearchLoadingStateCopyWith<$Res> {
  factory _$$SearchLoadingStateCopyWith(_$SearchLoadingState value,
          $Res Function(_$SearchLoadingState) then) =
      __$$SearchLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchLoadingStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchLoadingState>
    implements _$$SearchLoadingStateCopyWith<$Res> {
  __$$SearchLoadingStateCopyWithImpl(
      _$SearchLoadingState _value, $Res Function(_$SearchLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchLoadingState implements SearchLoadingState {
  const _$SearchLoadingState();

  @override
  String toString() {
    return 'SearchState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Album?> albumList) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<Album?> albumList)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Album?> albumList)? loaded,
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
    required TResult Function(SearchInitialState value) initial,
    required TResult Function(SearchLoadingState value) loading,
    required TResult Function(SearchErrorState value) error,
    required TResult Function(SearchLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchInitialState value)? initial,
    TResult? Function(SearchLoadingState value)? loading,
    TResult? Function(SearchErrorState value)? error,
    TResult? Function(SearchLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitialState value)? initial,
    TResult Function(SearchLoadingState value)? loading,
    TResult Function(SearchErrorState value)? error,
    TResult Function(SearchLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SearchLoadingState implements SearchState {
  const factory SearchLoadingState() = _$SearchLoadingState;
}

/// @nodoc
abstract class _$$SearchErrorStateCopyWith<$Res> {
  factory _$$SearchErrorStateCopyWith(
          _$SearchErrorState value, $Res Function(_$SearchErrorState) then) =
      __$$SearchErrorStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SearchErrorStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchErrorState>
    implements _$$SearchErrorStateCopyWith<$Res> {
  __$$SearchErrorStateCopyWithImpl(
      _$SearchErrorState _value, $Res Function(_$SearchErrorState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SearchErrorState(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchErrorState implements SearchErrorState {
  const _$SearchErrorState(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'SearchState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchErrorState &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchErrorStateCopyWith<_$SearchErrorState> get copyWith =>
      __$$SearchErrorStateCopyWithImpl<_$SearchErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Album?> albumList) loaded,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<Album?> albumList)? loaded,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Album?> albumList)? loaded,
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
    required TResult Function(SearchInitialState value) initial,
    required TResult Function(SearchLoadingState value) loading,
    required TResult Function(SearchErrorState value) error,
    required TResult Function(SearchLoadedState value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchInitialState value)? initial,
    TResult? Function(SearchLoadingState value)? loading,
    TResult? Function(SearchErrorState value)? error,
    TResult? Function(SearchLoadedState value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitialState value)? initial,
    TResult Function(SearchLoadingState value)? loading,
    TResult Function(SearchErrorState value)? error,
    TResult Function(SearchLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SearchErrorState implements SearchState {
  const factory SearchErrorState(final String message) = _$SearchErrorState;

  String get message;
  @JsonKey(ignore: true)
  _$$SearchErrorStateCopyWith<_$SearchErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchLoadedStateCopyWith<$Res> {
  factory _$$SearchLoadedStateCopyWith(
          _$SearchLoadedState value, $Res Function(_$SearchLoadedState) then) =
      __$$SearchLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Album?> albumList});
}

/// @nodoc
class __$$SearchLoadedStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchLoadedState>
    implements _$$SearchLoadedStateCopyWith<$Res> {
  __$$SearchLoadedStateCopyWithImpl(
      _$SearchLoadedState _value, $Res Function(_$SearchLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albumList = null,
  }) {
    return _then(_$SearchLoadedState(
      null == albumList
          ? _value._albumList
          : albumList // ignore: cast_nullable_to_non_nullable
              as List<Album?>,
    ));
  }
}

/// @nodoc

class _$SearchLoadedState implements SearchLoadedState {
  const _$SearchLoadedState(final List<Album?> albumList)
      : _albumList = albumList;

  final List<Album?> _albumList;
  @override
  List<Album?> get albumList {
    if (_albumList is EqualUnmodifiableListView) return _albumList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_albumList);
  }

  @override
  String toString() {
    return 'SearchState.loaded(albumList: $albumList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchLoadedState &&
            const DeepCollectionEquality()
                .equals(other._albumList, _albumList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_albumList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchLoadedStateCopyWith<_$SearchLoadedState> get copyWith =>
      __$$SearchLoadedStateCopyWithImpl<_$SearchLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(List<Album?> albumList) loaded,
  }) {
    return loaded(albumList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(List<Album?> albumList)? loaded,
  }) {
    return loaded?.call(albumList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(List<Album?> albumList)? loaded,
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
    required TResult Function(SearchInitialState value) initial,
    required TResult Function(SearchLoadingState value) loading,
    required TResult Function(SearchErrorState value) error,
    required TResult Function(SearchLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchInitialState value)? initial,
    TResult? Function(SearchLoadingState value)? loading,
    TResult? Function(SearchErrorState value)? error,
    TResult? Function(SearchLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitialState value)? initial,
    TResult Function(SearchLoadingState value)? loading,
    TResult Function(SearchErrorState value)? error,
    TResult Function(SearchLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class SearchLoadedState implements SearchState {
  const factory SearchLoadedState(final List<Album?> albumList) =
      _$SearchLoadedState;

  List<Album?> get albumList;
  @JsonKey(ignore: true)
  _$$SearchLoadedStateCopyWith<_$SearchLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}
