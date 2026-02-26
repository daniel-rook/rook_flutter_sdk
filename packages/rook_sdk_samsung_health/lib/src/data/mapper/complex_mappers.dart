import 'package:rook_sdk_core/rook_sdk_core.dart';
import 'package:rook_sdk_samsung_health/src/data/proto/protos.pb.dart';

extension BloodPressureObjectMapper on BloodPressureObjectProto {
  BloodPressureObject toDomain() {
    return BloodPressureObject(
      systolicMmHg: systolicMmHg,
      diastolicMmHg: diastolicMmHg,
    );
  }
}

extension PositionObjectMapper on PositionObjectProto {
  PositionObject toDomain() {
    return PositionObject(latDeg: latDeg, lngDeg: lngDeg);
  }
}

extension TemperatureObjectMapper on TemperatureObjectProto {
  TemperatureObject toDomain() {
    return TemperatureObject(
      temperatureCelsius: temperatureCelsius,
      measurementType: measurementType,
    );
  }
}

extension VelocityObjectMapper on VelocityObjectProto {
  VelocityObject toDomain() {
    return VelocityObject(
      speedMetersPerSecond: speedMetersPerSecond,
      direction: direction,
    );
  }
}
