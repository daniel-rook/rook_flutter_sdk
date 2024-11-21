import 'package:rook_sdk_health_connect/src/data/proto/protos.pb.dart';
import 'package:rook_sdk_health_connect/src/domain/model/android_permissions_summary.dart';

extension AndroidPermissionsSummaryMappers on AndroidPermissionsSummaryProto {
  AndroidPermissionsSummary toDomain() {
    return AndroidPermissionsSummary(
      permissionsGranted: permissionsGranted,
      dialogDisplayed: dialogDisplayed,
    );
  }
}
