import 'package:album_bloc/data/model/AlbumDetail.dart';
import 'package:album_bloc/domain/repository/AlbumRepository.dart';

class GetAlbumImage {
  final AlbumRepository _albumRepository;

  GetAlbumImage(this._albumRepository);

  Future<List<AlbumDetail>?> call(int albumId) =>
      _albumRepository.getAlbumImage(albumId);
}
