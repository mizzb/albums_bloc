import 'package:album_bloc/config/constants.dart';
import 'package:album_bloc/data/model/Album.dart';
import 'package:album_bloc/presentation/blocs/home/home_bloc.dart';
import 'package:album_bloc/presentation/blocs/home/home_states.dart';
import 'package:album_bloc/widgets/album_card.dart';
import 'package:album_bloc/widgets/custom_progress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() {
    return _HomeViewState();
  }
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController _editingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    context.read<HomeBloc>().add(const loadAlbumEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              buildAlbumBloc(context),
              buildSearchField(context),
            ],
          ),
        ),
      ),
    );
  }

  Column buildAlbumBloc(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
        ),
        Expanded(
          child: BlocBuilder<HomeBloc, HomeState>(builder: (_, state) {
            if (state is HomeInitialState) {
              return const CustomProgress();
            } else if (state is HomeLoadingState) {
              return const CustomProgress();
            } else if (state is HomeErrorState) {
              return const Center(
                child: Text("Sorry, Something went wrong!"),
              );
            } else if (state is HomeLoadedState) {
              final albums = state.albumList;
              return buildAlbumView(albums);
            } else {
              return const CustomProgress();
            }
          }),
        ),
      ],
    );
  }

  Container buildSearchField(BuildContext context) {
    return Container(
        color: Colors.white,
        height: MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: TextField(
                controller: _editingController,
                decoration: const InputDecoration(hintText: "Search for album"),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.05,
            ),
            ElevatedButton(
              onPressed: () {
                if (_editingController.text.isNotEmpty) {
                  Navigator.pushNamed(context, kRouteSearch,
                      arguments: _editingController.text);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("Please Enter the album name")));
                }
              },
              child: const Icon(
                Icons.search_rounded,
                size: 20,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.05,
            ),
          ],
        ));
  }

  Widget buildAlbumView(List<Album> album) {
    return ListView.builder(
        itemCount: album.length,
        itemBuilder: (context, index) {
          return AlbumCard(
            album: album[index],
          );
        });
  }
}
