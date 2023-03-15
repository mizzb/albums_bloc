import 'package:album_bloc/data/model/Album.dart';
import 'package:album_bloc/domain/repository/AlbumRepository.dart';

class GetAlbumsUseCase {
  final AlbumRepository _albumRepository;

  GetAlbumsUseCase(this._albumRepository);

  Future<List<Album>?> call() => _albumRepository.getAlbums();
}
