import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_health_connect/src/domain/model/health_connect_permissions_summary.dart';

extension HealthConnectPermissionsSummaryMappers
    on HealthConnectPermissionsSummaryProto {
  HealthConnectPermissionsSummary toDomain() {
    return HealthConnectPermissionsSummary(
      dataTypesGranted: dataTypesGranted,
      dataTypesPartiallyGranted: dataTypesPartiallyGranted,
      backgroundReadGranted: backgroundReadGranted,
    );
  }
}
