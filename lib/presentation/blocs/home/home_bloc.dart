import 'package:album_bloc/domain/usecases/getAlbums.dart';
import 'package:album_bloc/injector.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_states.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeInitialState()) {
    on<loadAlbumEvent>(
      (event, emit) async {
        emit(const HomeState.loading());
        var result = await getIt<GetAlbums>().call();
        if (result != null) {
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
