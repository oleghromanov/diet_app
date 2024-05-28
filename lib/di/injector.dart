import 'package:diet_app/app/navigation/app_router.gr.dart';
import 'package:diet_app/core/services/dio/dio_service.dart';
import 'package:diet_app/data/repositories/auth_repository.dart';
import 'package:diet_app/data/repositories/nutrition_repository.dart';
import 'package:diet_app/data/repositories/recipes_repository.dart';
import 'package:diet_app/data/sources/local/secure_local_storage.dart';
import 'package:diet_app/data/sources/remote/nutrition_remote_source.dart';
import 'package:diet_app/data/sources/remote/recipes_remote_source.dart';
import 'package:diet_app/presentation/screens/navigation/bloc/navigation_bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';

class Injector {
  static final GetIt instance = GetIt.I;

  static void init() {
    instance.registerSingleton<Dio>(DioService.getDio());
    instance.registerSingleton<FlutterSecureStorage>(const FlutterSecureStorage());
    instance.registerSingleton<SecureLocalStorage>(SecureLocalStorage(instance()));
    instance.registerSingleton<AppRouter>(AppRouter());
    instance.registerSingleton<AuthRepository>(AuthRepository());
    instance.registerLazySingleton<NutritionRemoteSource>(() => NutritionRemoteSource(dio: instance()));
    instance.registerLazySingleton<NutritionRepository>(() => NutritionRepository(nutritionRemoteSource: instance()));
    instance.registerLazySingleton<RecipesRemoteSource>(() => RecipesRemoteSource(dio: instance()));
    instance.registerLazySingleton<RecipesRepository>(() => RecipesRepository(recipesRemoteSource: instance()));
  }

  static void initNavigationBloc(NavigationBloc navigationBloc) {
    if (!instance.isRegistered<NavigationBloc>()) instance.registerSingleton<NavigationBloc>(navigationBloc);
  }
}
