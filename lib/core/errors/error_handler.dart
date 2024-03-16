import 'dart:developer';

import 'package:dio/dio.dart';
import 'app_errors.dart';

class ErrorHandler {
  static AppError handleError(dynamic error, {StackTrace? stackTrace}) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.sendTimeout:
          return AppError(errorMessage: 'Send timeout');
        case DioExceptionType.connectionTimeout:
          return AppError(errorMessage: 'Connection timeout');
        case DioExceptionType.badCertificate:
          return AppError(errorMessage: 'Not found');
        case DioExceptionType.badResponse:
          // Handle DioError response code
          int statusCode = error.response?.statusCode ?? 500;
          switch (statusCode) {
            case 400:
              return AppError(errorMessage: 'Bad request');
            case 401:
              return AppError(errorMessage: 'Unauthorized');
            case 404:
              return AppError(errorMessage: 'Not found');
            case 500:
              return AppError(errorMessage: 'Internal server error');
            default:
              return AppError(errorMessage: 'Received invalid response code: $statusCode');
          }
        case DioExceptionType.connectionError:
          return AppError(errorMessage: 'Connection Error');
        case DioExceptionType.unknown:
          return AppError(errorMessage: 'Not found');
        case DioExceptionType.receiveTimeout:
          return AppError(errorMessage: 'Not found');
        case DioExceptionType.cancel:
          return AppError(errorMessage: 'Request canceled');
      }
    } else {
      log('An error occurred: $error $stackTrace');
      return AppError(errorMessage: 'An error occurred: $error');
    }
  }

}
