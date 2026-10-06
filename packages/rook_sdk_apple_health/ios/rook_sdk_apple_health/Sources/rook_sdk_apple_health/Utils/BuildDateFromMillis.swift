//
//  BuildDateFromMillis.swift
//  rook_sdk_apple_health
//
//  Created by Daniel Nolasco on 05/09/23.
//

import Foundation

func buildDateFromMillis(_ millis: Int64) -> Date {
    let seconds = millis / MILLISECONDS_IN_A_SECOND
    
    return Date(timeIntervalSince1970: TimeInterval(seconds))
}

private let MILLISECONDS_IN_A_SECOND: Int64 = 1000
