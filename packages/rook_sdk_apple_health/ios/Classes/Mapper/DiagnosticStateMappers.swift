//
//  DiagnosticStateMappers.swift
//  rook_sdk_apple_health
//
//  Created by Daniel Nolasco on 11/03/26.
//

import Foundation
import RookSDK

extension SDKState {
    func toProto() -> DiagnosticStateProto {
        return DiagnosticStateProto.with {
            $0.isConfigured = isConfigured
            $0.userIdentified = userIdentified
            $0.permissions = permissions.toDiagnosticStatePermissions()
            $0.manualSync = manualSync.toProto()
            $0.backgroundSync = backgroundSync.toProto()
        }
    }
}

extension String {
    func toDiagnosticStatePermissions() -> DiagnosticStatePermissionsProto {
        switch self {
        case "NOT REQUESTED":
            return DiagnosticStatePermissionsProto.notRequested
        case "REQUESTED":
            return DiagnosticStatePermissionsProto.requested
        case "GRANTED":
            return DiagnosticStatePermissionsProto.granted
        default:
            return DiagnosticStatePermissionsProto.notRequested
        }
    }
}

extension SDKBackgroundState {
    func toProto() -> DiagnosticSyncStateProto {
        return DiagnosticSyncStateProto.with {
            $0.enabled = enabled
            $0.lastSync = lastSync?.toProtoString() ?? DEFAULT_STRING
        }
    }
}

extension SDKManualSyncState {
    func toProto() -> DiagnosticSyncStateProto {
        return DiagnosticSyncStateProto.with {
            $0.enabled = enabled
            $0.lastSync = lastSync?.toProtoString() ?? DEFAULT_STRING
        }
    }
}
