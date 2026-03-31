import 'package:dio/dio.dart';
import 'package:rook_sdk_core/src/authorizer.dart';

class AuthInterceptor extends Interceptor {
  final Authorizer authorizer;
  final Dio dio;

  AuthInterceptor({required this.authorizer, required this.dio});

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    try {
      final token = await authorizer.getOrRefreshToken();

      options.headers[_authorizationHeader] = 'Bearer ${token.accessToken}';
      options.headers[_contentTypeHeader] = _contentType;
      options.headers[_acceptHeader] = _accept;

      return handler.next(options);
    } catch (e) {
      return handler.next(options);
    }
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      int retryCount = err.requestOptions.extra[_retryCountKey] ?? 0;

      if (retryCount >= _maxRetryCount) {
        return handler.next(err);
      }

      try {
        retryCount++;

        final token = await authorizer.getOrRefreshToken();

        final options = err.requestOptions;

        options.headers[_authorizationHeader] = 'Bearer ${token.accessToken}';
        options.headers[_contentTypeHeader] = _contentType;
        options.headers[_acceptHeader] = _accept;

        options.extra[_retryCountKey] = retryCount;

        final response = await dio.fetch(options);

        return handler.resolve(response);
      } catch (exception) {
        return handler.next(err);
      }
    }

    return handler.next(err);
  }
}

const String _authorizationHeader = "Authorization";

const String _contentTypeHeader = "Content-Type";
const String _contentType = "application/json";
const String _acceptHeader = "Accept";
const String _accept = "application/json";

const String _retryCountKey = "retry_count";
const int _maxRetryCount = 3;
