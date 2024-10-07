//
//  DataSourceTypeMappers.swift
//  rook_sdk_apple_health
//
//  Created by Daniel Nolasco on 02/10/24.
//

import Foundation
import RookSDK

extension DataSourceTypeProto {
    func toDomain() throws -> DataSourceRevoke {
        return switch self {
        case DataSourceTypeProto.garmin:
            DataSourceRevoke.Garmin
        case DataSourceTypeProto.oura:
            DataSourceRevoke.Oura
        case DataSourceTypeProto.polar:
            DataSourceRevoke.Polar
        case DataSourceTypeProto.fitbit:
            DataSourceRevoke.Fitbit
        case DataSourceTypeProto.withings:
            DataSourceRevoke.Withings
        case DataSourceTypeProto.whoop:
            DataSourceRevoke.Whoop
        case .UNRECOGNIZED:
            throw RookSdkPluginErrors.UnknownDataSourceType
        }
    }
}
