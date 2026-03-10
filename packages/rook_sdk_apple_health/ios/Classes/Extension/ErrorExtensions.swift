//
//  ErrorExtensions.swift
//  rook_sdk_apple_health
//
//  Created by Daniel Nolasco on 18/09/24.
//

import Foundation
import RookSDK

extension Error {
    func getSDKExceptionCode() -> Int32 {
        if let rookError: RookError = self as? RookError {
            return Int32(rookError.code)
        } else {
            return Int32(unknown)
        }
    }

    func getSDKExceptionMessage() -> String {
        if let rookError: RookError = self as? RookError {
            return rookError.errorDescription ?? localizedDescription
        } else {
            return localizedDescription
        }
    }
}

private let unknown = -1
