//
//  DataSourceAuthorizerMappers.swift
//  rook_sdk_apple_health
//
//  Created by Daniel Nolasco on 19/03/25.
//

import Foundation
import RookSDK

extension DataSourceAuthorizer {
    func toProto() -> DataSourceAuthorizerProto {
        if let realAuthorizationUrl = authorizationURL {
            return DataSourceAuthorizerProto.with {
                $0.dataSource = dataSource
                $0.authorized = authorized
                $0.authorizationURL = realAuthorizationUrl.absoluteString
                $0.authorizationURLIsNull = false
            }
        } else {
            return DataSourceAuthorizerProto.with {
                $0.dataSource = dataSource
                $0.authorized = authorized
                $0.authorizationURLIsNull = true
            }
        }
    }
}
