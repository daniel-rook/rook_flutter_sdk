import 'package:rook_sdk_core/src/model/rook_configuration.dart';

/// Exception thrown when no [RookConfiguration] is found.
class MissingConfigurationException implements Exception {
  final String message;

  MissingConfigurationException(this.message);

  @override
  String toString() {
    return 'MissingConfigurationException{message: $message}';
  }
}
