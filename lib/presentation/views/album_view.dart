import 'package:album_bloc/config/constants.dart';
import 'package:album_bloc/data/model/AlbumDetail.dart';
import 'package:album_bloc/presentation/blocs/album/album_bloc.dart';
import 'package:album_bloc/presentation/blocs/album/album_states.dart';
import 'package:album_bloc/widgets/custom_progress.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class AlbumView extends StatefulWidget {
  final int albumId;

  AlbumView({Key? key, required this.albumId}) : super(key: key);

  @override
  _AlbumViewState createState() {
    return _AlbumViewState();
  }
}

class _AlbumViewState extends State<AlbumView> {
  @override
  void initState() {
    super.initState();
    context.read<AlbumBloc>().add(GetAlbumImageEvent(widget.albumId));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackground,
        title: const Text('Album Details'),
      ),
      backgroundColor: kBackground,
      body: SafeArea(
        child: _buildBody(context),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return BlocBuilder<AlbumBloc, AlbumState>(builder: (_, state) {
      if (state is AlbumInitialState) {
        return const CustomProgress();
      } else if (state is AlbumLoadingState) {
        return const CustomProgress();
      } else if (state is AlbumErrorState) {
        return const Center(
          child: Text("No albums found"),
        );
      } else if (state is AlbumLoadedState) {
        final albums = state.albumList;
        return _buildAlbumDetailsView(albums);
      } else {
        return const CustomProgress();
      }
    });
  }

  Widget _buildAlbumDetailsView(List<AlbumDetail?> albums) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
            ),
            items: albums
                .map((item) => Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: MediaQuery.of(context).size.height * 0.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: kListCardColor)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                              child: Image.network(
                            item!.thumbnailUrl,
                            fit: BoxFit.cover,
                                loadingBuilder: (BuildContext context, Widget child,
                                    ImageChunkEvent? loadingProgress) {
                                  if (loadingProgress == null) return child;
                                  return Center(
                                    child: CircularProgressIndicator(
                                      value: loadingProgress.expectedTotalBytes != null
                                          ? loadingProgress.cumulativeBytesLoaded /
                                          loadingProgress.expectedTotalBytes!
                                          : null,
                                    ),
                                  );
                                },
                          )),
                          Center(
                            child: Text(
                              item.title,
                              maxLines : 1,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ))
                .toList()),
      ),
    );
  }


}
