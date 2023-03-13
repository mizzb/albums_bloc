import 'package:album_bloc/data/remote/AlbumApiService.dart';
import 'package:album_bloc/data/repository/AlbumRepositoryImpl.dart';
import 'package:album_bloc/domain/repository/AlbumRepository.dart';
import 'package:album_bloc/domain/usecases/getAlbum.dart';
import 'package:album_bloc/domain/usecases/getAlbumImage.dart';
import 'package:album_bloc/domain/usecases/getAlbums.dart';
import 'package:album_bloc/domain/usecases/searchAlbum.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future initializeDependencies() async {
  getIt.registerSingleton<Dio>(Dio());

  getIt.registerSingleton<AlbumApiService>(AlbumApiService(getIt()));
  getIt.registerSingleton<AlbumRepository>(AlbumRepositoryImpl(getIt()));
  getIt.registerSingleton<GetAlbums>(GetAlbums(getIt()));
  getIt.registerSingleton<GetAlbum>(GetAlbum(getIt()));
  getIt.registerSingleton<SearchAlbum>(SearchAlbum(getIt()));
  getIt.registerSingleton<GetAlbumImage>(GetAlbumImage(getIt()));
}
