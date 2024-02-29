
import 'package:diet_app/app/navigation/app_router.gr.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

class Injector {
  static final GetIt instance = GetIt.I;
  static final Dio _dio = Dio()..options.headers = {"Accept" :"application/json"};

  /// Инициализация всех сервисов
  static Future<void> init() async {
    instance.registerSingleton<Dio>(_dio);
    instance.registerSingleton<AppRouter>(AppRouter());
  }
}

