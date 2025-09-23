//
//  DataSourceMappers.swift
//  rook_sdk_apple_health
//
//  Created by Daniel Nolasco on 08/05/24.
//

import Foundation
import RookSDK

extension DataSourceStatus {
    func toProto() -> AuthorizedDataSourceV2Proto {
        return AuthorizedDataSourceV2Proto.with {
            $0.name = self.source
            $0.authorized = self.status
            $0.imageURL = self.imageURL.absoluteString
        }
    }
}
