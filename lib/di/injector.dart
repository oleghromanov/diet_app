import 'package:diet_app/app/navigation/app_router.gr.dart';
import 'package:diet_app/core/services/dio/dio_service.dart';
import 'package:diet_app/data/repositories/auth_repository.dart';
import 'package:diet_app/data/repositories/nutrition_repository.dart';
import 'package:diet_app/data/sources/remote/nutrition_remote_source.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

class Injector {
  static final GetIt instance = GetIt.I;

  static Future<void> init() async {
    instance.registerSingleton<Dio>(DioService.getDio());
    instance.registerSingleton<AppRouter>(AppRouter());
    instance.registerSingleton<AuthRepository>(AuthRepository());
    instance.registerLazySingleton<NutritionRemoteSource>(() => NutritionRemoteSource(dio: instance()));
    instance.registerLazySingleton<NutritionRepository>(() => NutritionRepository(nutritionRemoteSource: instance()));
  }
}
