import 'package:dio/dio.dart';
import 'package:rook_sdk_core/src/exception/http_request_exception.dart';
import 'package:rook_sdk_core/src/exception/sdk_exception.dart';
import 'package:rook_sdk_core/src/exception/sdk_exception_code.dart';
import 'package:rook_sdk_core/src/exception/session_expired_exception.dart';

SDKException? processException(DioException dioException) {
  final code = dioException.response?.statusCode;

  if (code == null) {
    return null;
  }

  if (code == 401) {
    return SessionExpiredException(
      code: SDKExceptionCode.sessionExpired,
      message: "Session expired, init the SDK again",
    );
  } else {
    final data = dioException.response?.data as Map<String, dynamic>?;
    final error = data?.values.join(" | ") ?? "Unknown error";

    final message =
        "The API failed, try again, httpCode: $error, httpMessage: $error";

    return HttpRequestException(
      code: SDKExceptionCode.httpRequest,
      message: message,
    );
  }
}
