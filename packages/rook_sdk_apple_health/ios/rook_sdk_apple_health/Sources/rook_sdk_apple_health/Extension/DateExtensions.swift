//
//  DateExtensions.swift
//  rook_sdk_apple_health
//
//  Created by Daniel Nolasco on 28/10/25.
//

import Foundation

extension Date {
    func toProtoString() -> String {
        let formatter = ISO8601DateFormatter()
        
        return formatter.string(from: self)
    }
}
