import 'package:album_bloc/data/model/AlbumDetail.dart';
import 'package:album_bloc/domain/repository/AlbumRepository.dart';

class GetAlbumImageUseCase {
  final AlbumRepository _albumRepository;

  GetAlbumImageUseCase(this._albumRepository);

  Future<List<AlbumDetail?>> call(int albumId) =>
      _albumRepository.getAlbumImage(albumId);
}
