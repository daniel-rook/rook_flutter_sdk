//
//  Constants.swift
//  rook_sdk_apple_health
//
//  Created by Daniel Nolasco on 28/10/25.
//

import Foundation

extension Double {
    func toInt32() -> Int32 {
        return Int32(self.rounded())
    }
}

extension Int {
    func toInt32() -> Int32 {
        return Int32(self)
    }
    
    func toDouble() -> Double {
        return Double(self)
    }
}

extension Optional where Wrapped == Int {
    func toInt32() -> Int32 {
        if let newValue = self {
            return Int32(newValue)
        } else {
            return DEFAULT_INT_32
        }
    }

    func toDouble() -> Double {
        if let newValue = self {
            return Double(newValue)
        } else {
            return DEFAULT_DOUBLE
        }
    }
}

extension Optional where Wrapped == Float {
    func toDouble() -> Double {
        if let newValue = self {
            return Double(newValue)
        } else {
            return DEFAULT_DOUBLE
        }
    }
}

let DEFAULT_INT_32: Int32 = 0
let DEFAULT_DOUBLE: Double = 0.0
let DEFAULT_STRING: String = "N/A"
