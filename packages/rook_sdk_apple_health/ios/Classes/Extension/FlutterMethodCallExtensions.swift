//
//  FlutterMethodCallExtensions.swift
//  integration_test
//
//  Created by Daniel Nolasco on 04/09/23.
//

import Foundation
import Flutter

extension FlutterMethodCall {
    
    func getBoolArgAt(_ index: Int) -> Bool {
        let args = self.arguments as? [Any]
        let value = args?[index] as? Bool
        
        return value!
    }
    
    func getDataArgAt(_ index: Int) -> FlutterStandardTypedData {
        let args = self.arguments as? [Any]
        let value = args?[index] as? FlutterStandardTypedData
        
        return value!
    }
    
    func getStringArgAt(_ index: Int) -> String {
        let args = self.arguments as? [Any]
        let value = args?[index] as? String
        
        return value!
    }
    
    func getInt64ArgAt(_ index: Int) -> Int64 {
        let args = self.arguments as? [Any]
        let value = args?[index] as? Int64
        
        return value!
    }
}
