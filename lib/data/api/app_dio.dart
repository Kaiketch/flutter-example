import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final dioProvider = Provider((_) => AppDio.getInstance());

class AppDio with DioMixin implements Dio {
  static Dio getInstance() => AppDio._();

  AppDio._([BaseOptions? options]) {
    options = BaseOptions(
      baseUrl: "https://connpass.com",
      contentType: 'application/json',
      connectTimeout: 5000,
      sendTimeout: 5000,
      receiveTimeout: 5000,
    );

    this.options = options;

    httpClientAdapter = DefaultHttpClientAdapter();
  }
}
