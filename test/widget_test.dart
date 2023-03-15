import 'package:album_bloc/data/model/Album.dart';
import 'package:album_bloc/injector.dart';
import 'package:album_bloc/main.dart';
import 'package:album_bloc/presentation/blocs/home/home_bloc.dart';
import 'package:album_bloc/presentation/blocs/home/home_states.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockHomeBloc extends MockBloc<HomeEvent, HomeState> implements HomeBloc {}

class HomeStateFake extends Fake implements HomeState {}

class HomeEventFake extends Fake implements HomeEvent {}

Album mockAlbum = Album(1, 10, "Test Album");

void main() {
  setUpAll(() async {
    await initializeDependencies();
    registerFallbackValue(HomeStateFake());
    registerFallbackValue(HomeEventFake());
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
    expect(find.text('Sorry, Something went wrong!'), findsOneWidget);
  });
}
