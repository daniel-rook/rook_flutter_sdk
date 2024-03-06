//
//  FlutterError.swift
//  rook_sdk_apple_health
//
//  Created by Daniel Nolasco on 04/09/23.
//

import Foundation
import Flutter

func buildGenericFlutterError(_ message: String) -> FlutterError {
    return FlutterError.init(
        code: GENERIC_ERROR_CODE,
        message: message,
        details: nil
    )
}

private let GENERIC_ERROR_CODE = "-1"
