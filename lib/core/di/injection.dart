import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:tugas1/core/network/dio_client.dart';
import 'package:tugas1/services/movie_service.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton<Dio>(() => DioClient.createDio());
  getIt.registerLazySingleton<MovieService>(() => MovieService(getIt<Dio>()));
}
