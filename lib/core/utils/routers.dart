import 'package:ebookia/core/utils/service_locator.dart';
import 'package:ebookia/features/home/data/models/book_model/book_model.dart';
import 'package:ebookia/features/home/data/repos/home_repo_imp.dart';
import 'package:ebookia/features/home/presentation/views/home.dart';
import 'package:ebookia/features/home/presentation/views/home_details_view.dart';
import 'package:ebookia/features/home/presentation/views_model/cubit/similar_books_cubit.dart';
import 'package:ebookia/features/search/data/repos/search_repo_imp.dart';
import 'package:ebookia/features/search/presentation/view_models/cubit/search_cubit.dart';
import 'package:ebookia/features/search/presentation/views/search_view.dart';
import 'package:ebookia/features/splash_screen/presentation/view/splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kHomeDetailsView = '/homeDetailsView';
  static const kSearchView = '/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: kHomeDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImp>()),
          child: HomeDetailsView(model: state.extra as BookModel),
        ),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => BlocProvider(
          create: (context) => SearchCubit(getIt.get<SearchRepoImpl>()),
          child: const SearchView(),
        ),
      ),
    ],
  );
}
