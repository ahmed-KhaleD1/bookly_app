import 'package:bookly/features/home/data/repos/home_repo_implementation.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'api_service.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<HomeRepoImplementation>(
    HomeRepoImplementation(
      ApiService(
        Dio(),
      ),
    ),
  );
}
