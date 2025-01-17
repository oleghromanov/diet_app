import 'dart:io';

import 'package:diet_app/app/resources/app_constants.dart';
import 'package:dio/dio.dart';

class DioService {
  static const Duration timeout = Duration(seconds: 30);

  static Dio getDio()  {
    final Dio dio = Dio(
      BaseOptions(
        baseUrl: "",
        headers: {
          'Accept-Language': Platform.localeName.replaceAll(RegExp('_'), '-'),
          'Edamam-Account-User': AppConstants.appUser,
        },
        sendTimeout: timeout,
        receiveTimeout: timeout,
        connectTimeout: timeout,
      ),
    );
    dio.interceptors.add(
      LogInterceptor(
        requestBody: true,
        responseBody: true,
      ),
    );
    // ..add(
    //   QueuedInterceptorsWrapper(
    //     onRequest: (options, handler) async {
    //       SecureLocalStorage storage = Get.find();
    //       String? token = await storage.getToken() ?? await storage.getTempToken();
    //       if (token != null && !options.headers.containsKey("Authorization")) {
    //         options.headers['Authorization'] = 'Bearer $token';
    //       }
    //       return handler.next(options);
    //     },
    //     onError: (error, handler) async {
    //       if (error.response?.statusCode == 401 && error.response?.data['code'] == 0) {
    //         Get.offNamed(AppRoutes.auth);
    //       }
    //       return handler.next(error);
    //     },
    //   ),
    // );
    return dio;
  }
}
