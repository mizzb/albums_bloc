import 'package:album_bloc/data/remote/AlbumApiService.dart';
import 'package:album_bloc/data/repository/AlbumRepositoryImpl.dart';
import 'package:album_bloc/domain/repository/AlbumRepository.dart';
import 'package:album_bloc/domain/usecases/getAlbumImageUseCase.dart';
import 'package:album_bloc/domain/usecases/getAlbumUseCase.dart';
import 'package:album_bloc/domain/usecases/getAlbumsUseCase.dart';
import 'package:album_bloc/domain/usecases/searchAlbum.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future initializeDependencies({bool isTest = false}) async {
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<AlbumApiService>(AlbumApiService(getIt()));
  getIt.registerSingleton<AlbumRepository>(AlbumRepositoryImpl(getIt()));
  getIt.registerSingleton<GetAlbumsUseCase>(GetAlbumsUseCase(getIt()));
  getIt.registerSingleton<GetAlbumUseCase>(GetAlbumUseCase(getIt()));
  getIt.registerSingleton<SearchAlbumUseCase>(SearchAlbumUseCase(getIt()));
  getIt.registerSingleton<GetAlbumImageUseCase>(GetAlbumImageUseCase(getIt()));
}
