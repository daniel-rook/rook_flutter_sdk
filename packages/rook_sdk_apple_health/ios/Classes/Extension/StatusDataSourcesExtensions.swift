//
//  StatusDataSourcesExtensions.swift
//  rook_sdk_apple_health
//
//  Created by Daniel Nolasco on 24/12/24.
//

import Foundation
import RookSDK

extension StatusDataSources {
    func toProto() -> AuthorizedDataSourcesProto {
        return AuthorizedDataSourcesProto.with {
            $0.oura = self.oura
            $0.polar = self.polar
            $0.whoop = self.whoop
            $0.fitbit = self.fitbit
            $0.garmin = self.garmin
            $0.withings = self.withings
            $0.appleHealth = self.appleHealth
            $0.healthConnect = self.healthConnect
            $0.android = self.android
        }
    }
}
