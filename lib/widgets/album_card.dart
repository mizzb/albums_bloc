import 'package:album_bloc/config/constants.dart';
import 'package:album_bloc/data/model/Album.dart';
import 'package:flutter/material.dart';

class AlbumCard extends StatelessWidget {
  final Album album;

  const AlbumCard({
    super.key,
    required this.album,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, kRouteAlbum, arguments: album.id);
      },
      child: Card(
        color: Colors.black.withOpacity(0.5),
        child: ListTile(
          title: Text(
            album.title,
            style: const TextStyle(
                fontWeight: FontWeight.w400, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
