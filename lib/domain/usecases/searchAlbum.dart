import 'package:album_bloc/data/model/Album.dart';
import 'package:album_bloc/domain/repository/AlbumRepository.dart';

class SearchAlbum {
  final AlbumRepository _albumRepository;

  SearchAlbum(this._albumRepository);

  Future<List<Album>?> call(String title) => _albumRepository.searchAlbum(title);
}
