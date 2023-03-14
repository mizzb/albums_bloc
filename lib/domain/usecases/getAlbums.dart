import 'package:album_bloc/data/model/Album.dart';
import 'package:album_bloc/domain/repository/AlbumRepository.dart';

class GetAlbums {
  final AlbumRepository _albumRepository;

  GetAlbums(this._albumRepository);

  Future<List<Album>?> call() => _albumRepository.getAlbums();

}
