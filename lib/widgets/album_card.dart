import 'package:album_bloc/config/constants.dart';
import 'package:album_bloc/data/model/Album.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        color: kListCardColor,
        child: ListTile(
          title: Text(
            album.title,
            style: GoogleFonts.roboto(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
