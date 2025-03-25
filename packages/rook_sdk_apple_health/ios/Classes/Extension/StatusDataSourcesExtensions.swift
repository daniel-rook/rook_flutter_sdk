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
            $0.oura = self.oura.toUInt32()
            $0.polar = self.polar.toUInt32()
            $0.whoop = self.whoop.toUInt32()
            $0.fitbit = self.fitbit.toUInt32()
            $0.garmin = self.garmin.toUInt32()
            $0.withings = self.withings.toUInt32()
            $0.dexcom = self.dexcom.toUInt32()
            $0.appleHealth = self.appleHealth.toUInt32()
            $0.healthConnect = self.healthConnect.toUInt32()
            $0.android = self.android.toUInt32()
        }
    }
}
