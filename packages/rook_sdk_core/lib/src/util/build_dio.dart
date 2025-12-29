import 'package:dio/dio.dart';
import 'package:rook_sdk_core/src/enum/rook_environment.dart';
import 'package:rook_sdk_core/src/util/get_legacy_api_url_from_environment.dart';

Dio buildDio({required RookEnvironment environment, required bool enableLogs}) {
  final dio = Dio(
    BaseOptions(
      connectTimeout: Duration(seconds: 10),
      receiveTimeout: Duration(seconds: 10),
      sendTimeout: Duration(seconds: 10),
      baseUrl: getLegacyApiUrlFromEnvironment(environment: environment),
    ),
  );

  if (enableLogs) {
    final interceptor = LogInterceptor(
      request: true,
      requestBody: true,
      requestHeader: true,
      responseBody: true,
      responseHeader: true,
    );

    dio.interceptors.add(interceptor);
  }

  return dio;
}
