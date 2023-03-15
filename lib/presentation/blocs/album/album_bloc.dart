import 'package:album_bloc/domain/usecases/getAlbumImageUseCase.dart';
import 'package:album_bloc/presentation/blocs/album/album_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AlbumBloc extends Bloc<AlbumEvent, AlbumState> {
  final GetAlbumImageUseCase getAlbumImage;

  AlbumBloc(this.getAlbumImage) : super(const AlbumInitialState()) {
    _onGetImageEvent();
  }

  void _onGetImageEvent() {
    on<GetAlbumImageEvent>((event, emit) async {
      int albumId = event.id;
      emit(const AlbumState.loading());
      final result = await getAlbumImage.call(albumId);
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
