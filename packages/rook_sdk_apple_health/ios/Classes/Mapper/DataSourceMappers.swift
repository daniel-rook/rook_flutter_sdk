//
//  DataSourceMappers.swift
//  rook_sdk_apple_health
//
//  Created by Daniel Nolasco on 08/05/24.
//

import Foundation
import RookSDK

extension RookDataSource {
    
    func toProto() -> DataSourceProto {
        guard let realAuthorizationURL = authorizationURL else {
            return DataSourceProto.with { it in
                it.name = name
                it.description_p = description
                it.image = imageUrl
                it.connected = connected
                it.authorizationURLIsNull = true
            }
        }
        
        return DataSourceProto.with { it in
            it.name = name
            it.description_p = description
            it.image = imageUrl
            it.connected = connected
            it.authorizationURL = realAuthorizationURL
            it.authorizationURLIsNull = false
        }
    }
}
