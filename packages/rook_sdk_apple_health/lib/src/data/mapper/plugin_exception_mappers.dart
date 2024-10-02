import 'package:rook_sdk_apple_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_core/rook_sdk_core.dart';

extension PluginExceptionProtoExtensions on PluginExceptionProto {
  Exception toDartException() {
    return switch (id) {
      _missingConfiguration => MissingConfigurationException(message),
      _ => Exception(message),
    };
  }
}

const _missingConfiguration = 1;
