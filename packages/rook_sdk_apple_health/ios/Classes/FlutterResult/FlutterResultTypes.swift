//
//  FlutterSuccessResult.swift
//  rook_sdk_apple_health
//
//  Created by Daniel Nolasco on 04/09/23.
//

import Foundation
import Flutter
import RookSDK

func resultBoolSuccess(flutterResult: FlutterResult, _ bool: Bool) {
    let result = ResultBooleanProto.with { it in
        it.success = bool
    }
    
    runWithValue(
        flutterResult: flutterResult,
        builder: { try result.serializedData() },
        block: { it in flutterResult(it) }
    )
}

func resultBoolError(flutterResult: FlutterResult, _ error: Error) {
    var result = ResultBooleanProto()
    
    if let rookConnectError = error as? RookConnectErrors {
        if rookConnectError == .missingConfiguration {
            result.missingConfigurationExceptionProto = MissingConfigurationExceptionProto.with { it in
                it.message = "No configuration found. Did you forget to call setConfiguration() ?"
            }
        } else {
            result.genericExceptionProto = GenericExceptionProto.with { it in
                it.message = "\(rookConnectError)"
            }
        }
    } else {
        result.genericExceptionProto = GenericExceptionProto.with { it in
            it.message = "\(error)"
        }
    }
    
    runWithValue(
        flutterResult: flutterResult,
        builder: { try result.serializedData() },
        block: { it in flutterResult(it) }
    )
}

func resultInt64Success(flutterResult: FlutterResult, _ int: Int) {
    let result = ResultInt64Proto.with { it in
        it.value = Int64(int)
    }
    
    runWithValue(
        flutterResult: flutterResult,
        builder: { try result.serializedData() },
        block: { it in flutterResult(it) }
    )
}

func resultInt64Error(flutterResult: FlutterResult, _ error: Error) {
    var result = ResultBooleanProto()
    
    result.genericExceptionProto = GenericExceptionProto.with { it in
        it.message = "\(error)"
    }
    
    runWithValue(
        flutterResult: flutterResult,
        builder: { try result.serializedData() },
        block: { it in flutterResult(it) }
    )
}

func resultDataSourceSuccess(flutterResult: FlutterResult, _ dataSources: [RookDataSource]) {
    let result = ResultDataSourceProto.with { proto in
        proto.dataSourceProtoListWrapper = DataSourceProtoListWrapper.with{ wrapper in
            wrapper.dataSources = dataSources.map { it in it.toProto() }
        }
    }
    
    runWithValue(
        flutterResult: flutterResult,
        builder: { try result.serializedData() },
        block: { it in flutterResult(it) }
    )
}

func resultDataSourceError(flutterResult: FlutterResult, _ error: Error) {
    var result = ResultDataSourceProto()
    
    result.genericExceptionProto = GenericExceptionProto.with { it in
        it.message = "\(error)"
    }
    
    runWithValue(
        flutterResult: flutterResult,
        builder: { try result.serializedData() },
        block: { it in flutterResult(it) }
    )
}
