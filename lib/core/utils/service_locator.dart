import 'package:bookly/core/utils/api_servers.dart';
import 'package:bookly/features/home/data/repos/home_repo_imp.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

var getIt = GetIt.instance;

void setupService() {
  // ApiServer(Dio())
  getIt.registerSingleton<ApiServer>(ApiServer(dio: Dio()));
  // HomeRepoImp(ApiServer(Dio()))
  getIt.registerSingleton<HomeRepoImp>(
      HomeRepoImp(apiServer: getIt.get<ApiServer>()));
}
