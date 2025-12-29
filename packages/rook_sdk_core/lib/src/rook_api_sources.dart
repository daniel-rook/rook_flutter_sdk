import 'package:dio/dio.dart';
import 'package:rook_sdk_core/src/enum/data_source_type.dart';
import 'package:rook_sdk_core/src/enum/rook_environment.dart';
import 'package:rook_sdk_core/src/model/authorized_data_source_v2.dart';
import 'package:rook_sdk_core/src/model/data_source_authorizer.dart';
import 'package:rook_sdk_core/src/util/build_dio.dart';
import 'package:rook_sdk_core/src/util/build_http_request_exception.dart';
import 'package:rook_sdk_core/src/util/get_basic_auth_from_credentials.dart';

/// Main entry point for the ROOK API Sources module. This class provides methods to manage
/// data source authorizations for users.
///
/// Use this class to:
/// - Get authorization URLs for various health data sources.
/// - Check which data sources a user has already authorized.
/// - Revoke authorization for a specific data source.
final class RookApiSources {
  final String _clientUUID;
  final String _secretKey;
  final RookEnvironment _environment;
  final bool _enableLogs;

  late final Dio _dio = buildDio(
    environment: _environment,
    enableLogs: _enableLogs,
  );

  late final String _authorization = getBasicAuthFromCredentials(
    username: _clientUUID,
    password: _secretKey,
  );

  RookApiSources({
    required String clientUUID,
    required String secretKey,
    required RookEnvironment environment,
    required bool enableLogs,
  })  : _clientUUID = clientUUID,
        _secretKey = secretKey,
        _environment = environment,
        _enableLogs = enableLogs;

  /// Returns a [DataSourceAuthorizer] of a specific data source for the current user.
  ///
  /// * If the user is not authorized, an [DataSourceAuthorizer.authorizationUrl] is provided,
  /// otherwise [DataSourceAuthorizer.authorizationUrl] will be null.
  ///
  /// [dataSource] The data source type. Allowed values: Garmin, Oura, Polar, Fitbit, Withings, Whoop, Dexcom.
  /// [redirectUrl] After the user successfully connects to a data source, the user will be redirected to this URL.
  Future<DataSourceAuthorizer> getDataSourceAuthorizer({
    required String userID,
    required String dataSource,
    String? redirectUrl,
  }) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        "/v1/user_id/$userID/data_source/$dataSource/authorizer",
        queryParameters: {
          if (redirectUrl != null) "redirect_url": redirectUrl,
        },
        options: Options(
          headers: {
            "Authorization": _authorization,
            "Content-Type": _contentType,
          },
        ),
      );

      return DataSourceAuthorizer(
        dataSource: response.data!["data_source"],
        authorized: response.data!["authorized"],
        authorizationUrl: response.data!["authorization_url"],
      );
    } on DioException catch (exception) {
      final newException = buildHttpRequestException(dioException: exception);

      if (newException != null) {
        throw newException;
      } else {
        rethrow;
      }
    }
  }

  /// Returns the authorized data sources for the current user.
  ///
  /// Please note that this only represents the user connection status, and not whether the data source is
  /// currently active (sending data) or has granted permissions.
  ///
  /// For SDK-based data sources (such as Apple Health and Health Connect), this endpoint will return true if the user
  /// was created by SDK with the corresponding updateUserId function, means that the user is linked with ROOK via SDK,
  /// but not indicates if the user granted permissions or not.
  ///
  /// For API-based data sources (such as Fitbit, Garmin, and Withings), true indicates that the user has authorized
  /// ROOK to retrieve data through the respective third-party platform.
  Future<List<AuthorizedDataSourceV2>> getAuthorizedDataSourcesV2({
    required String userID,
  }) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        "/v2/user_id/$userID/data_sources/authorized",
        options: Options(
          headers: {
            "Authorization": _authorization,
            "Content-Type": _contentType,
          },
        ),
      );

      final List<dynamic> wrapper = response.data!["data_sources"];
      final List<AuthorizedDataSourceV2> dataSources = [];

      for (final Map<String, dynamic> item in wrapper) {
        final dataSource = AuthorizedDataSourceV2(
          name: item["data_source"],
          authorized: item["authorized"],
          imageUrl: item["image"],
        );

        dataSources.add(dataSource);
      }

      return dataSources;
    } on DioException catch (exception) {
      final newException = buildHttpRequestException(dioException: exception);

      if (newException != null) {
        throw newException;
      } else {
        rethrow;
      }
    }
  }

  /// Unlinks (revoke authorization) from a data source for the current user.
  ///
  /// @param dataSource The type of the data source to revoke.
  Future<void> revokeDataSource({
    required String userID,
    required DataSourceType dataSource,
  }) async {
    try {
      await _dio.post<Map<String, dynamic>>(
        "/v1/user_id/$userID/data_sources/revoke_auth",
        data: {
          "data_source": dataSource.identifier,
        },
        options: Options(
          headers: {
            "Authorization": _authorization,
            "Content-Type": _contentType,
          },
        ),
      );
    } on DioException catch (exception) {
      if (exception.response?.statusCode == 422) {
        return;
      }

      final newException = buildHttpRequestException(dioException: exception);

      if (newException != null) {
        throw newException;
      } else {
        rethrow;
      }
    }
  }
}

const String _contentType = "application/json";
