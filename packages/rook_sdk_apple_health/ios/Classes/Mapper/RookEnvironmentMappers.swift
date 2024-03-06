//
//  RookEnvironmentMappers.swift
//  Pods-Runner
//
//  Created by Daniel Nolasco on 13/10/23.
//

import Foundation
import RookSDK

extension RookEnvironmentProto {
 
    func toDomain() -> RookEnvironment {
        if self == RookEnvironmentProto.sandbox {
            return RookEnvironment.sandbox
        } else {
            return RookEnvironment.production
        }
    }
}
