import 'package:dio/dio.dart';
import 'package:rook_sdk_core/src/enum/rook_environment.dart';
import 'package:rook_sdk_core/src/exception/sdk_exception_code.dart';
import 'package:rook_sdk_core/src/exception/sdk_not_authorized_exception.dart';
import 'package:rook_sdk_core/src/util/get_api_url_from_environment.dart';
import 'package:rook_sdk_core/src/util/get_basic_auth.dart';
import 'package:rook_sdk_core/src/util/process_exception.dart';

final class Authorizer {
  final String _id;
  final String _client;
  final String _secret;
  final RookEnvironment _environment;

  Token? _token;
  Future<Token>? _ongoingRefresh;

  Authorizer({
    required String id,
    required String client,
    required String secret,
    required RookEnvironment environment,
  }) : _id = id,
       _client = client,
       _secret = secret,
       _environment = environment;

  late final Dio _dio = _buildAuthorizerDio(_environment);

  Future<Token> getOrRefreshToken() async {
    if (_ongoingRefresh != null) {
      return await _ongoingRefresh!;
    }

    try {
      _ongoingRefresh = _getOrRefreshToken();

      final result = await _ongoingRefresh!;

      return result;
    } finally {
      _ongoingRefresh = null;
    }
  }

  Future<Token> _getOrRefreshToken() async {
    try {
      final token = _token;

      if (token == null) {
        final firstTimeToken = await _authorize();
        _token = firstTimeToken;

        return firstTimeToken;
      }

      if (_isNotExpired(token.accessExpiresIn)) {
        return token;
      }

      if (_isNotExpired(token.refreshExpiresIn)) {
        final refreshedToken = await _refresh(token.refreshToken, _client);
        _token = refreshedToken;

        return refreshedToken;
      }

      final newToken = await _authorize();
      _token = newToken;

      return newToken;
    } catch (exception) {
      throw SDKNotAuthorizedException(
        code: SDKExceptionCode.notAuthorized,
        message: exception.toString(),
      );
    }
  }

  bool _isNotExpired(DateTime expirationDate) {
    final now = DateTime.now();

    return now.isBefore(expirationDate);
  }

  Future<Token> _authorize() async {
    try {
      final authorization = getBasicAuth(
        id: _id,
        client: _client,
        secret: _secret,
      );

      final response = await _dio.get<Map<String, dynamic>>(
        "/v2/auth",
        options: Options(
          headers: {
            _contentTypeHeader: _contentType,
            _acceptHeader: _accept,
            _xPlatformHeader: _xPlatform,
            _authorizationHeader: authorization,
          },
        ),
      );

      final authorizeResponse = AuthorizeResponseSvModel(
        accessToken: response.data!["access_token"],
        refreshToken: response.data!["refresh_token"],
        expiresIn: response.data!["expires_in"],
      );

      return Token(
        accessToken: authorizeResponse.accessToken,
        accessExpiresIn: DateTime.now().add(Duration(hours: 22)),
        refreshToken: authorizeResponse.refreshToken,
        refreshExpiresIn: DateTime.now().add(Duration(days: 85)),
      );
    } on DioException catch (exception) {
      final newException = processException(exception);

      if (newException != null) {
        throw newException;
      } else {
        rethrow;
      }
    }
  }

  Future<Token> _refresh(String refreshToken, String clientUUID) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        "/v2/auth/refresh",
        data: {"refresh_token": refreshToken, "client_uuid": clientUUID},
        options: Options(
          headers: {
            _contentTypeHeader: _contentType,
            _acceptHeader: _accept,
            _xPlatformHeader: _xPlatform,
          },
        ),
      );

      final refreshResponse = RefreshResponseSvModel(
        accessToken: response.data!["access_token"],
        refreshToken: response.data!["refresh_token"],
        expiresIn: response.data!["expires_in"],
      );

      return Token(
        accessToken: refreshResponse.accessToken,
        accessExpiresIn: DateTime.now().add(Duration(hours: 22)),
        refreshToken: refreshResponse.refreshToken,
        refreshExpiresIn: DateTime.now().add(Duration(days: 85)),
      );
    } on DioException catch (exception) {
      final newException = processException(exception);

      if (newException != null) {
        throw newException;
      } else {
        rethrow;
      }
    }
  }
}

Dio _buildAuthorizerDio(RookEnvironment environment) {
  final dio = Dio(
    BaseOptions(
      connectTimeout: Duration(seconds: 15),
      receiveTimeout: Duration(seconds: 15),
      sendTimeout: Duration(seconds: 15),
      baseUrl: getApiUrlFromEnvironment(environment: environment),
    ),
  );

  return dio;
}

final class AuthorizeResponseSvModel {
  final String accessToken;
  final String refreshToken;
  final int expiresIn;

  AuthorizeResponseSvModel({
    required this.accessToken,
    required this.refreshToken,
    required this.expiresIn,
  });
}

final class RefreshResponseSvModel {
  final String accessToken;
  final String refreshToken;
  final int expiresIn;

  RefreshResponseSvModel({
    required this.accessToken,
    required this.refreshToken,
    required this.expiresIn,
  });
}

final class Token {
  final String accessToken;
  final DateTime accessExpiresIn;
  final String refreshToken;
  final DateTime refreshExpiresIn;

  Token({
    required this.accessToken,
    required this.accessExpiresIn,
    required this.refreshToken,
    required this.refreshExpiresIn,
  });
}

const String _authorizationHeader = "Authorization";

const String _contentTypeHeader = "Content-Type";
const String _contentType = "application/json";
const String _acceptHeader = "Accept";
const String _accept = "application/json";

const String _xPlatformHeader = "X-Platform";
const String _xPlatform = "android";
