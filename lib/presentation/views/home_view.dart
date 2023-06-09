import 'package:album_bloc/config/constants.dart';
import 'package:album_bloc/data/model/Album.dart';
import 'package:album_bloc/presentation/blocs/home/home_bloc.dart';
import 'package:album_bloc/presentation/blocs/home/home_states.dart';
import 'package:album_bloc/widgets/album_card.dart';
import 'package:album_bloc/widgets/custom_progress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

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
      backgroundColor: kBackground,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              _buildAlbumBloc(context),
              _buildSearchField(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAlbumBloc(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.12,
        ),
        Expanded(
          child: BlocBuilder<HomeBloc, HomeState>(builder: (_, state) {
            if (state is HomeInitialState) {
              return const CustomProgress();
            } else if (state is HomeLoadingState) {
              return const CustomProgress();
            } else if (state is HomeErrorState) {
              return Center(
                child: Text(
                  "Sorry, No albums available!",
                  style: GoogleFonts.roboto(color: Colors.white),
                ),
              );
            } else if (state is HomeLoadedState) {
              final albums = state.albumList;
              return _buildAlbumView(albums);
            } else {
              return const CustomProgress();
            }
          }),
        ),
      ],
    );
  }

  Widget _buildSearchField(BuildContext context) {
    return Container(
        color: Colors.black,
        height: MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: TextField(
                controller: _editingController,
                decoration: kTextFieldStyle,
                style: GoogleFonts.comfortaa(color: Colors.white),
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

  Widget _buildAlbumView(List<Album> album) {
    return ListView.builder(
        itemCount: album.length,
        itemBuilder: (context, index) {
          return AlbumCard(
            album: album[index],
          );
        });
  }
}
