import 'package:dio/dio.dart';
import 'package:rook_sdk_core/src/exception/http_request_exception.dart';
import 'package:rook_sdk_core/src/exception/sdk_exception_code.dart';

HttpRequestException? buildHttpRequestException({
  required DioException dioException,
}) {
  final data = dioException.response?.data as Map<String, dynamic>?;

  final code = dioException.response?.statusCode;
  final error = data?.values.join(" | ") ?? "Unknown error";

  final message =
      "The API failed, try again, httpCode: $error, httpMessage: $error";

  if (code != null) {
    return HttpRequestException(
      code: SDKExceptionCode.httpRequest,
      message: message,
    );
  } else {
    return null;
  }
}
