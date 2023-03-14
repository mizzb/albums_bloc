import 'package:album_bloc/domain/usecases/searchAlbum.dart';
import 'package:album_bloc/injector.dart';
import 'package:album_bloc/presentation/blocs/search/search_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(const SearchInitialState()) {
    on<SearchAlbumEvent>(
      (event, emit) async {
        String title = event.title;
        emit(const SearchState.loading());
        final result = await getIt<SearchAlbum>().call(title);
        if (result.isNotEmpty) {
          emit(
            SearchState.loaded(result),
          );
        } else {
          emit(const SearchState.error("No albums"));
        }
      },
    );
  }
}
