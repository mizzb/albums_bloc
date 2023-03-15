import 'package:album_bloc/domain/usecases/getAlbumsUseCase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_states.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetAlbumsUseCase getAlbumsUseCase;

  HomeBloc(this.getAlbumsUseCase) : super(const HomeInitialState()) {
    _loadAlbumEvent();
  }

  void _loadAlbumEvent() {
    on<loadAlbumEvent>(
      (event, emit) async {
        emit(const HomeState.loading());
        final result = await getAlbumsUseCase.call();
        if (result != null && result.isNotEmpty) {
          emit(
            HomeState.loaded(result),
          );
        } else {
          emit(const HomeState.error("No albums"));
        }
      },
    );
  }
}
