import 'package:album_bloc/domain/usecases/getAlbumImage.dart';
import 'package:album_bloc/injector.dart';
import 'package:album_bloc/presentation/blocs/album/album_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AlbumBloc extends Bloc<AlbumEvent, AlbumState> {
  AlbumBloc() : super(const AlbumInitialState()) {
    on<GetAlbumImageEvent>((event, emit) async {
      int albumId = event.id;
      emit(const AlbumState.loading());
      final result = await getIt<GetAlbumImage>().call(albumId);
      if (result.isNotEmpty) {
        emit(
          AlbumState.loaded(result),
        );
      } else {
        emit(const AlbumState.error("No albums"));
      }
    });
  }
}
