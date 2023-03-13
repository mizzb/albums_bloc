import 'package:album_bloc/data/model/Album.dart';
import 'package:album_bloc/domain/repository/AlbumRepository.dart';

class GetAlbum {
  final AlbumRepository _albumRepository;

  GetAlbum(this._albumRepository);

  Future<Album?> call(int id) => _albumRepository.getAlbum(id);
}
