//
//  FlutterSuccessResult.swift
//  rook_sdk_apple_health
//
//  Created by Daniel Nolasco on 04/09/23.
//

import Flutter
import Foundation
import RookSDK

func boolSuccess(flutterResult: FlutterResult, success: Bool) {
    do {
        let bytes = try ResultBooleanProto.with {
            $0.success = success
        }.serializedData()
        
        flutterResult(bytes)
    } catch let catchedError {
        debugPrint("Failed to serialize flutter result \(catchedError)")
    }
}

func boolError(flutterResult: FlutterResult, error: Error) {
    do {
        let pluginExceptionProto = PluginExceptionProto.with {
            $0.id = error.getPluginExceptionId()
            $0.code = error.getPluginExceptionCode()
            $0.message = error.getPluginExceptionMessage()
        }
        
        let bytes = try ResultBooleanProto.with {
            $0.pluginExceptionProto = pluginExceptionProto
        }.serializedData()

        flutterResult(bytes)
    } catch let catchedError {
        debugPrint("Failed to serialize flutter result \(catchedError)")
    }
}

func int64Success(flutterResult: FlutterResult, int64: Int64) {
    do {
        let bytes = try ResultInt64Proto.with {
            $0.value = int64
        }.serializedData()
        
        flutterResult(bytes)
    } catch let catchedError {
        debugPrint("Failed to serialize flutter result \(catchedError)")
    }
}

func int64Error(flutterResult: FlutterResult, error: Error) {
    do {
        let pluginExceptionProto = PluginExceptionProto.with {
            $0.id = error.getPluginExceptionId()
            $0.code = error.getPluginExceptionCode()
            $0.message = error.getPluginExceptionMessage()
        }
        
        let bytes = try ResultInt64Proto.with {
            $0.pluginExceptionProto = pluginExceptionProto
        }.serializedData()
        
        flutterResult(bytes)
    } catch let catchedError {
        debugPrint("Failed to serialize flutter result \(catchedError)")
    }
}

func dataSourcesSuccess(flutterResult: FlutterResult, dataSources: [RookDataSource]) {
    do {
        let dataSourcesProtoListWrapper = DataSourcesProtoListWrapper.with {
            $0.dataSources = dataSources.map { it in it.toProto() }
        }
        
        let bytes = try ResultDataSourcesProto.with {
            $0.dataSourcesProtoListWrapper = dataSourcesProtoListWrapper
        }.serializedData()
        
        flutterResult(bytes)
    } catch let catchedError {
        debugPrint("Failed to serialize flutter result \(catchedError)")
    }

}

func dataSourcesError(flutterResult: FlutterResult, error: Error) {
    do {
        let pluginExceptionProto = PluginExceptionProto.with {
            $0.id = error.getPluginExceptionId()
            $0.code = error.getPluginExceptionCode()
            $0.message = error.getPluginExceptionMessage()
        }
        
        let bytes = try ResultDataSourcesProto.with {
            $0.pluginExceptionProto = pluginExceptionProto
        }.serializedData()
        
        flutterResult(bytes)
    } catch let catchedError {
        debugPrint("Failed to serialize flutter result \(catchedError)")
    }
}
