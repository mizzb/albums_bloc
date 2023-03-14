import 'package:album_bloc/data/model/AlbumDetail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'album_states.freezed.dart';

@freezed
class AlbumEvent with _$AlbumEvent {
  const factory AlbumEvent.getAlbumImage(int id) = GetAlbumImageEvent;
}

@freezed
class AlbumState with _$AlbumState {
  const factory AlbumState.initial() = AlbumInitialState;

  const factory AlbumState.loading() = AlbumLoadingState;

  const factory AlbumState.error(String message) = AlbumErrorState;

  const factory AlbumState.loaded(List<AlbumDetail?> albumList) =
      AlbumLoadedState;
}
