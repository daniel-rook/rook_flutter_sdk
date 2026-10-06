//
//  ComplexMappers.swift
//  rook_sdk_apple_health
//
//  Created by Daniel Nolasco on 28/10/25.
//

import Foundation
import RookSDK

extension RookTemperature {
    func toObjectProto() -> TemperatureObjectProto {
        return TemperatureObjectProto.with {
            $0.measurementType = measurementType
            $0.temperatureCelsius = temperatureCelsius.toDouble()
        }
    }
}

extension RookBloodPressureSystolicDiastolic {
    func toObjectProto() -> BloodPressureObjectProto {
        return BloodPressureObjectProto.with {
            $0.systolicMmHg = systolicBp.toDouble()
            $0.diastolicMmHg = diastolicBp.toDouble()
        }
    }
}

extension RookVelocityVectorSpeed {
    func toObjectProto() -> VelocityObjectProto {
        return VelocityObjectProto.with {
            $0.speedMetersPerSecond = speedMetersPerSecond.toDouble()
            $0.direction = direction
        }
    }
}

extension RookPositionLatLng {
    func toObjectProto() -> PositionObjectProto {
        return PositionObjectProto.with {
            $0.latDeg = lat
            $0.lngDeg = lng
        }
    }
}
