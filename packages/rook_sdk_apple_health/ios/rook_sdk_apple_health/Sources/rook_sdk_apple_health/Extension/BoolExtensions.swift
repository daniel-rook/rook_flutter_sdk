//
//  BoolExtensions.swift
//  rook_sdk_apple_health
//
//  Created by Daniel Nolasco on 18/03/25.
//

import Foundation

extension Optional where Wrapped == Bool {
    func toUInt32() -> UInt32 {
        switch self {
        case .some(false):
            return 0
        case .some(true):
            return 1
        case .none:
            return 2
        }
    }
}
