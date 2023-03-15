import 'package:album_bloc/data/model/Album.dart';
import 'package:album_bloc/data/model/AlbumDetail.dart';
import 'package:album_bloc/domain/usecases/getAlbumImageUseCase.dart';
import 'package:album_bloc/domain/usecases/getAlbumsUseCase.dart';
import 'package:album_bloc/domain/usecases/searchAlbum.dart';
import 'package:album_bloc/injector.dart';
import 'package:album_bloc/main.dart';
import 'package:album_bloc/presentation/blocs/album/album_bloc.dart';
import 'package:album_bloc/presentation/blocs/album/album_states.dart';
import 'package:album_bloc/presentation/blocs/home/home_bloc.dart';
import 'package:album_bloc/presentation/blocs/home/home_states.dart';
import 'package:album_bloc/presentation/blocs/search/search_bloc.dart';
import 'package:album_bloc/presentation/blocs/search/search_states.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'widget_test.dart';

Album mockAlbum = Album(1, 10, "Test Album");
AlbumDetail mockAlbumDetails = AlbumDetail(
  albumId: 1,
  id: 10,
  title: 'Test Album',
  url: 'https://www.test.com/test.jpg',
  thumbnailUrl: 'https://www.test.com/test.jpg',
);

class MockGetAlbumsUseCase extends Mock implements GetAlbumsUseCase {}

class MockGetAlbumImagesUseCase extends Mock implements GetAlbumImageUseCase {}

class MockSearchAlbumUseCase extends Mock implements SearchAlbumUseCase {}

void main() {
  setUpAll(() async {
    await initializeDependencies();
  });

  group('HomeBloc', () {
    late GetAlbumsUseCase getAlbumsUseCase;

    setUp(() {
      getAlbumsUseCase = MockGetAlbumsUseCase();
    });

    test(
      'initial state [HomeBloc.initial]',
      () {
        expect(
          HomeBloc(MockGetAlbumsUseCase()).state,
          const HomeState.initial(),
        );
      },
    );

    blocTest<HomeBloc, HomeState>(
      'Check bloc state changes to loaded state after Album API call',
      setUp: () {
        when(() => getAlbumsUseCase.call()).thenAnswer(
          (_) async {
            return [mockAlbum];
          },
        );
      },
      build: () => HomeBloc(getAlbumsUseCase),
      act: (bloc) => bloc.add(const HomeEvent.loadAlbums()),
      expect: () => <HomeState>[
        const HomeState.loading(),
        HomeState.loaded([mockAlbum]),
      ],
      verify: (_) {
        verify(
          () => getAlbumsUseCase.call(),
        ).called(1);
      },
    );

    blocTest<HomeBloc, HomeState>(
      'Check bloc state changes to error state if Album API returns empty',
      setUp: () {
        when(() => getAlbumsUseCase.call()).thenAnswer(
          (_) async {
            return [];
          },
        );
      },
      build: () => HomeBloc(getAlbumsUseCase),
      act: (bloc) => bloc.add(const HomeEvent.loadAlbums()),
      expect: () => <HomeState>[
        const HomeState.loading(),
        const HomeState.error('No albums'),
      ],
      verify: (_) {
        verify(
          () => getAlbumsUseCase.call(),
        ).called(1);
      },
    );
  });

  group('SearchBloc', () {
    late SearchAlbumUseCase searchAlbumUseCase;

    setUp(() {
      searchAlbumUseCase = MockSearchAlbumUseCase();
    });

    test(
      'Search bloc initialisation test',
      () {
        expect(
          SearchBloc(searchAlbumUseCase).state,
          const SearchState.initial(),
        );
      },
    );

    blocTest<SearchBloc, SearchState>(
      'Check bloc state changes to loaded after search album API call',
      setUp: () {
        when(() => searchAlbumUseCase.call('Test')).thenAnswer(
          (_) async => [mockAlbum],
        );
      },
      build: () => SearchBloc(searchAlbumUseCase),
      act: (bloc) => bloc.add(const SearchEvent.searchAlbums("Test")),
      expect: () => <SearchState>[
        const SearchState.loading(),
        SearchState.loaded([mockAlbum]),
      ],
    );

    blocTest<SearchBloc, SearchState>(
      'Check bloc state changes to error state if search API returns empty',
      setUp: () {
        when(() => searchAlbumUseCase.call('Test')).thenAnswer(
          (_) async => [],
        );
      },
      build: () => SearchBloc(searchAlbumUseCase),
      act: (bloc) => bloc.add(const SearchEvent.searchAlbums("Test")),
      expect: () => <SearchState>[
        const SearchState.loading(),
        const SearchState.error('No albums'),
      ],
    );
  });

  group('AlbumBloc', () {
    late GetAlbumImageUseCase getAlbumImageUseCase;

    setUp(() {
      getAlbumImageUseCase = MockGetAlbumImagesUseCase();
    });

    test(
      'Album bloc initialisation test',
      () {
        expect(
          AlbumBloc(getAlbumImageUseCase).state,
          const AlbumState.initial(),
        );
      },
    );

    blocTest<AlbumBloc, AlbumState>(
      'Check bloc state changes to loaded after Search album image API call',
      setUp: () {
        when(() => getAlbumImageUseCase.call(1)).thenAnswer(
          (_) async => [mockAlbumDetails],
        );
      },
      build: () => AlbumBloc(getAlbumImageUseCase),
      act: (bloc) => bloc.add(const AlbumEvent.getAlbumImage(1)),
      expect: () => <AlbumState>[
        const AlbumState.loading(),
        AlbumState.loaded([mockAlbumDetails]),
      ],
    );

    blocTest<AlbumBloc, AlbumState>(
      'Check bloc state changes to error state if search album image API returns empty',
      setUp: () {
        when(() => getAlbumImageUseCase.call(1)).thenAnswer(
          (_) async => [],
        );
      },
      build: () => AlbumBloc(getAlbumImageUseCase),
      act: (bloc) => bloc.add(const AlbumEvent.getAlbumImage(1)),
      expect: () => <AlbumState>[
        const AlbumState.loading(),
        const AlbumState.error('No albums'),
      ],
    );
  });

  testWidgets('Test if error widget is shown for API error',
          (WidgetTester tester) async {
        // arrange
        final mockHomeBloc = MockHomeBloc();
        when(() => mockHomeBloc.state).thenReturn(
          const HomeState.error("Push Error"), // the desired state
        );

        // test
        await tester.pumpWidget(
          BlocProvider<MockHomeBloc>(
            create: (context) => mockHomeBloc,
            child: const MyApp(),
          ),
        );
        await tester.pumpAndSettle();
        expect(find.text("Sorry, No albums available!"), findsOneWidget);
      });
}
