import 'package:rook_sdk_samsung_health/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_samsung_health/src/domain/model/samsung_health_permissions_summary.dart';

extension SamsungHealthPermissionsSummaryMappers
    on SamsungHealthPermissionsSummaryProto {
  SamsungHealthPermissionsSummary toDomain() {
    return SamsungHealthPermissionsSummary(
      dataTypesGranted: dataTypesGranted,
      dataTypesPartiallyGranted: dataTypesPartiallyGranted,
    );
  }
}
