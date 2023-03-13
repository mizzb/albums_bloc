import 'package:album_bloc/data/model/Album.dart';
import 'package:album_bloc/data/model/AlbumDetail.dart';
import 'package:album_bloc/data/remote/AlbumApiService.dart';
import 'package:album_bloc/domain/repository/AlbumRepository.dart';
import 'package:dio/dio.dart';

class AlbumRepositoryImpl extends AlbumRepository {
  final AlbumApiService _albumApiService;

  AlbumRepositoryImpl(this._albumApiService);

  @override
  Future<List<Album>?> getAlbums() async {
    try {
      final httpResponse = await _albumApiService.getAlbums();
      if(httpResponse.response.statusCode == 200){
        print(httpResponse.data);
      }
    } on DioError catch (e) {
      return null;
    }
  }

  @override
  searchAlbum(String title) {
    // TODO: implement searchAlbum
    throw UnimplementedError();
  }

  @override
  Future<Album> getAlbum(int albumId) {
    // TODO: implement getAlbum
    throw UnimplementedError();
  }

  @override
  Future<List<AlbumDetail>> getAlbumImage(int albumId) {
    // TODO: implement getAlbumImage
    throw UnimplementedError();
  }
}
