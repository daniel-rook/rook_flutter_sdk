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
        case EventSyncTypeProto.activity:
            return EventTypeToUpload.activityEvent
        case EventSyncTypeProto.bloodGlucose:
            return EventTypeToUpload.bloodGlucose
        case EventSyncTypeProto.bloodPressure:
            return EventTypeToUpload.bloodPressure
        case EventSyncTypeProto.bodyMetrics:
            return EventTypeToUpload.bodyMetrics
        case EventSyncTypeProto.heartRate:
            return EventTypeToUpload.heartRate
        case EventSyncTypeProto.oxygenation:
            return EventTypeToUpload.oxygenation
        case EventSyncTypeProto.temperature:
            return EventTypeToUpload.temperature
        default:
            fatalError("Unsupported event type")
        }
    }
}
