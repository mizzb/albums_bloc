import 'package:album_bloc/config/constants.dart';
import 'package:album_bloc/data/model/Album.dart';
import 'package:album_bloc/presentation/blocs/search/search_bloc.dart';
import 'package:album_bloc/presentation/blocs/search/search_states.dart';
import 'package:album_bloc/widgets/album_card.dart';
import 'package:album_bloc/widgets/custom_progress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchView extends StatefulWidget {
  final String searchText;

  const SearchView({Key? key, required this.searchText}) : super(key: key);

  @override
  _SearchViewState createState() {
    return _SearchViewState();
  }
}

class _SearchViewState extends State<SearchView> {
  @override
  void initState() {
    super.initState();
    context.read<SearchBloc>().add(SearchAlbumEvent(widget.searchText));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackground,
        title: const Text("Search Album"),
      ),
      backgroundColor: kBackground,
      body: SafeArea(

        child: _buildBody(context),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(builder: (_, state) {
      if (state is SearchInitialState) {
        return const CustomProgress();
      } else if (state is SearchLoadingState) {
        return const CustomProgress();
      } else if (state is SearchErrorState) {
        return const Center(
          child: Text("No albums found"),
        );
      } else if (state is SearchLoadedState) {
        final albums = state.albumList;
        return buildAlbumView(albums);
      } else {
        return const CustomProgress();
      }
    });
  }

  Widget buildAlbumView(List<Album?> album) {
    return ListView.builder(
        itemCount: album.length,
        itemBuilder: (context, index) {
          return AlbumCard(
            album: album[index]!,
          );
        });
  }
}
