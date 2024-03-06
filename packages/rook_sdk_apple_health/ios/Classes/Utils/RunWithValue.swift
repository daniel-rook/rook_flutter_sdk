//
//  RunWithValue.swift
//  integration_test
//
//  Created by Daniel Nolasco on 05/09/23.
//

import Foundation
import Flutter

func runWithValue<T>(flutterResult: FlutterResult, builder: () throws -> T, block: (T) -> Void) {
    do {
        let value = try builder()
        
        block(value)
    } catch {
        flutterResult(buildGenericFlutterError(error.localizedDescription))
    }
}
