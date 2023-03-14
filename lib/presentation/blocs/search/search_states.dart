import 'package:album_bloc/data/model/Album.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_states.freezed.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.searchAlbums(String title) = SearchAlbumEvent;
}

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = SearchInitialState;

  const factory SearchState.loading() = SearchLoadingState;

  const factory SearchState.error(String message) = SearchErrorState;

  const factory SearchState.loaded(List<Album?> albumList) = SearchLoadedState;
}
