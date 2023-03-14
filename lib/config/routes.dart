import 'package:album_bloc/config/constants.dart';
import 'package:album_bloc/presentation/views/album_view.dart';
import 'package:album_bloc/presentation/views/home_view.dart';
import 'package:album_bloc/presentation/views/search_view.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Route? onGenerateRoutes(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case kRouteHome:
        return _materialRoute(const HomeView());
      case kRouteAlbum:
        if (arguments is int) {
          return _materialRoute(AlbumView(albumId: arguments));
        }
        break;
      case kRouteSearch:
        if (arguments is String) {
          return _materialRoute(SearchView(searchText: arguments));
        }
        break;
      default:
        return _materialRoute(const HomeView());
    }
    return null;
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
