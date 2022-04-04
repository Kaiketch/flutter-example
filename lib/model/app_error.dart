import 'package:dio/dio.dart';

abstract class AppError {
  AppError(this.exception, this.message);

  final Exception exception;
  final String message;

  static AppError from(error) {

    if (error is Exception) {
      if (error is DioError) {
        if (error.type == DioErrorType.response) {
          final statusCode = error.response?.statusCode ?? 0;
          if (400 <= statusCode && statusCode < 500) {
            return ValidationError(error, error.message);
          }
        }
        return NetworkError(error);
      }

      return GeneralError(error);
    }
    return GeneralError(Exception());
  }
}

class GeneralError extends AppError {
  GeneralError(Exception exception)
      : super(exception, "正常に処理できませんでした。お手数ですが、しばらく経ってから再度お試しください。");
}

class NetworkError extends AppError {
  NetworkError(Exception exception)
      : super(exception, "ネットワークエラーです。お手数ですが、しばらく経ってから再度お試しください。");
}

class ValidationError extends AppError {
  ValidationError(Exception exception, String message)
      : super(exception, message);
}
