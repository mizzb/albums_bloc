import 'package:album_bloc/data/model/Album.dart';
import 'package:album_bloc/data/model/AlbumDetail.dart';

abstract class AlbumRepository {
  Future<List<Album>?> getAlbums();

  Future<List<Album?>> searchAlbum(String title);

  Future<Album> getAlbum(int albumId);

  Future<List<AlbumDetail?>> getAlbumImage(int albumId);
}
