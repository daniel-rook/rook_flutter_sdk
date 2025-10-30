import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_samsung_health/src/data/mapper/activity_event_mappers.dart';
import 'package:rook_sdk_samsung_health/src/data/mapper/plugin_exception_mappers.dart';
import 'package:rook_sdk_samsung_health/src/data/proto/protos.pb.dart';

extension ActivityEventResult on ActivityEventResultProto {
  List<ActivityEvent> unwrap() {
    final resultType = whichResult();

    switch (resultType) {
      case ActivityEventResultProto_Result.synced:
        return synced.elements.map((element) {
          return element.toDomain();
        }).toList();
      case ActivityEventResultProto_Result.recordsNotFound:
        return [];
      case ActivityEventResultProto_Result.failure:
        throw failure.toDartException();
      default:
        throw Exception("Unknown error");
    }
  }
}
