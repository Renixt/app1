import 'package:app1/screens/characters_screen.dart';
import 'package:app1/screens/details_screen.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => CharactersScreen()),
    GoRoute(
      path: '/details',
      builder: (context, state) {
        final character = state.extra as Map;
        return DetailsScreen(character: character);
      },
    ),
  ],
);
