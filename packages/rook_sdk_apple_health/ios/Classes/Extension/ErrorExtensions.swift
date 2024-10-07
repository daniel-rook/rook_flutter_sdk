//
//  ErrorExtensions.swift
//  rook_sdk_apple_health
//
//  Created by Daniel Nolasco on 18/09/24.
//

import Foundation
import RookSDK

extension Error {
    func getPluginExceptionId() -> Int32 {
        let id = switch self {
        case let error where error as? RookConnectErrors == .missingConfiguration:
            missingConfiguration
        default:
            unknown
        }

        return Int32(id)
    }

    func getPluginExceptionCode() -> Int32 {
        let id = switch self {
        default:
            unknown
        }

        return Int32(id)
    }

    func getPluginExceptionMessage() -> String {
        return self.localizedDescription
    }
}

private let unknown = -1
private let missingConfiguration = 1
