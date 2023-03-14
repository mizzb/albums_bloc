import 'package:album_bloc/data/model/AlbumDetail.dart';
import 'package:album_bloc/presentation/blocs/album/album_bloc.dart';
import 'package:album_bloc/presentation/blocs/album/album_states.dart';
import 'package:album_bloc/widgets/custom_progress.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Album Details'),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SafeArea(
        child: BlocBuilder<AlbumBloc, AlbumState>(builder: (_, state) {
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
        return buildAlbumDetailsView(albums);
      } else {
        return const CustomProgress();
      }
    }));
  }

  Widget buildAlbumDetailsView(List<AlbumDetail?> albums) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
            ),
            items: albums
                .map((item) => Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Center(
                            child: Image.network(
                          item!.thumbnailUrl,
                          fit: BoxFit.cover,
                        )),
                        Center(
                          child: Text(item.title),
                        )
                      ],
                    ))
                .toList()),
      ),
    );
  }
}
