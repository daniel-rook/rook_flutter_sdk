//
//  RookEnvironmentMappers.swift
//  Pods-Runner
//
//  Created by Daniel Nolasco on 13/10/23.
//

import Foundation
import RookSDK

extension EnvironmentProto {
 
    func toDomain() -> RookEnvironment {
        if self == EnvironmentProto.sandbox {
            return RookEnvironment.sandbox
        } else {
            return RookEnvironment.production
        }
    }
}
