import 'package:album_bloc/config/constants.dart';
import 'package:album_bloc/config/routes.dart';
import 'package:album_bloc/domain/usecases/getAlbumImageUseCase.dart';
import 'package:album_bloc/domain/usecases/getAlbumsUseCase.dart';
import 'package:album_bloc/domain/usecases/searchAlbum.dart';
import 'package:album_bloc/presentation/blocs/album/album_bloc.dart';
import 'package:album_bloc/presentation/blocs/home/home_bloc.dart';
import 'package:album_bloc/presentation/blocs/search/search_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'injector.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => HomeBloc(getIt<GetAlbumsUseCase>()),
        ),
        BlocProvider(
          create: (_) => SearchBloc(getIt<SearchAlbumUseCase>()),
        ),
        BlocProvider(
          create: (_) => AlbumBloc(getIt<GetAlbumImageUseCase>()),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: kAppTitle,
        onGenerateRoute: AppRoutes.onGenerateRoutes,
        initialRoute: kRouteHome,
      ),
    );
  }
}
