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
      if (httpResponse.response.statusCode == 200 &&
          httpResponse.data.isNotEmpty) {
        return httpResponse.data;
      }
    } on DioError catch (e) {
      return null;
    }
    return null;
  }

  @override
  Future<List<Album?>> searchAlbum(String title) async {
    List<Album?> albumList = [];
    try {
      final httpResponse = await _albumApiService.findAlbum(title: title);
      if (httpResponse.response.statusCode == 200 &&
          httpResponse.data.isNotEmpty) {
        return httpResponse.data;
      }
    } on DioError catch (e) {
      return albumList;
    }
    return albumList;
  }

  @override
  Future<Album> getAlbum(int albumId) {
    // TODO: implement getAlbum
    throw UnimplementedError();
  }

  @override
  Future<List<AlbumDetail?>> getAlbumImage(int albumId) async {
    List<AlbumDetail?> albumDetailsList = [];
    try {
      final httpResponse =
          await _albumApiService.getAlbumImage(albumId: albumId);
      if (httpResponse.response.statusCode == 200 &&
          httpResponse.data.isNotEmpty) {
        return httpResponse.data;
      }
    } on DioError catch (e) {
      return albumDetailsList;
    }
    return albumDetailsList;
  }
}
