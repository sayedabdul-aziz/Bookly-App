import 'package:bookly/features/home/presentation/views/home.dart';
import 'package:bookly/features/home/presentation/views/home_details_view.dart';
import 'package:bookly/features/splash_screen/presentation/view/splash_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kHomeDetailsView = '/homeDetailsView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/homeView',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/homeDetailsView',
        builder: (context, state) => const HomeDetailsView(),
      )
    ],
  );
}
