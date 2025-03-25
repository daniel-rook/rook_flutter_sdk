//
//  DataSourceStatusExtensions.swift
//  rook_sdk_apple_health
//
//  Created by Daniel Nolasco on 19/03/25.
//

import Foundation
import RookSDK

extension Array where Element == DataSourceStatus {
    func getStatusOf(_ dataSource: String) -> Bool? {
        do {
            return try first(where: { $0.source == dataSource })?.status
        } catch {
            return nil
        }
    }
}
