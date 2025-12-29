import 'package:dio/dio.dart';
import 'package:rook_sdk_core/src/exception/http_request_exception.dart';

HttpRequestException? buildHttpRequestException({
  required DioException dioException,
}) {
  final data = dioException.response?.data as Map<String, dynamic>?;

  final code = dioException.response?.statusCode;
  final error = data?.values.join(" | ") ?? "Unknown error";

  if (code != null) {
    return HttpRequestException(code, error);
  } else {
    return null;
  }
}
