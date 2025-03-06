//
//  SyncTypeMappers.swift
//  rook_sdk_apple_health
//
//  Created by Daniel Nolasco on 04/03/25.
//

import Foundation
import RookSDK

extension SummarySyncTypeProto {
    func toSyncType() -> String {
        switch self {
        case .sleep:
            return "sleep"
        case .physical:
            return "physical"
        case .body:
            return "body"
        default:
            fatalError("Unsupported summary type")
        }
    }
}

extension EventSyncTypeProto {
    func toSyncType() -> EventTypeToUpload {
        switch self {
        case .activity:
            return .activityEvent
        case .bloodGlucose:
            return .bloodGlucose
        case .bloodPressure:
            return .bloodPressure
        case .heartRate:
            return .heartRate
        case .oxygenation:
            return .oxygenation
        case .temperature:
            return .temperature
        default:
            fatalError("Unsupported event type")
        }
    }
}
