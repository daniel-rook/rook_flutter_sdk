//
//  StringExtensions.swift
//  rook_sdk_apple_health
//
//  Created by Daniel Nolasco on 24/03/26.
//

import Foundation

extension String {
    func checkNonDefault() -> String? {
        if self == defaultString {
            return nil
        }

        return self
    }
}

fileprivate let defaultString: String = "N/A"
