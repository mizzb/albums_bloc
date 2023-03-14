import 'package:album_bloc/config/constants.dart';
import 'package:album_bloc/data/model/Album.dart';
import 'package:album_bloc/data/model/AlbumDetail.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'AlbumApiService.g.dart';

@RestApi(baseUrl: kBaseUrl)
abstract class AlbumApiService {
  factory AlbumApiService(Dio dio) = _AlbumApiService;

  @GET('/albums')
  Future<HttpResponse<List<Album>>> getAlbums();

  @GET('/albums?title={title}')
  Future<HttpResponse<List<Album?>>> findAlbum(
      {@Path('title') String title = ''});

  @GET('/albums/{album_id}')
  Future<HttpResponse<Album>> getAlbum({@Path('album_id') int albumId = 0});

  @GET('/albums/{album_id}/photos')
  Future<HttpResponse<List<AlbumDetail?>>> getAlbumImage(
      {@Path('album_id') int albumId = 0});
}
