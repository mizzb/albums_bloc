import 'package:album_bloc/data/model/Album.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_states.freezed.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.loadAlbums() = loadAlbumEvent;
}

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = HomeInitialState;

  const factory HomeState.loading() = HomeLoadingState;

  const factory HomeState.error(String message) = HomeErrorState;

  const factory HomeState.loaded(List<Album> albumList) = HomeLoadedState;
}
