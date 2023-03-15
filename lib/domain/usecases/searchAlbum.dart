import 'package:album_bloc/data/model/Album.dart';
import 'package:album_bloc/domain/repository/AlbumRepository.dart';

class SearchAlbumUseCase {
  final AlbumRepository _albumRepository;

  SearchAlbumUseCase(this._albumRepository);

  Future<List<Album?>> call(String title) =>
      _albumRepository.searchAlbum(title);
}
