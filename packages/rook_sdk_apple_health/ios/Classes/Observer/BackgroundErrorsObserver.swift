//
//  ErrorsObserver.swift
//  integration_test
//
//  Created by Daniel Nolasco on 03/10/24.
//

import Flutter
import Foundation
import RookSDK

class BackgroundErrorsObserver: NSObject, FlutterStreamHandler {
    private var eventSink: FlutterEventSink?

    func onListen(withArguments arguments: Any?, eventSink events: @escaping FlutterEventSink) -> FlutterError? {
        if eventSink != nil {
            return nil
        }
        
        eventSink = events

        NotificationCenter.default.addObserver(
            self,
            selector: #selector(backgroundErrorReceiver),
            name: NSNotification.Name(EventNames.errorBackGround),
            object: nil
        )

        return nil
    }
    
    @objc private func backgroundErrorReceiver(_ notification: Notification) {
        DispatchQueue.main.async {
            self.handleErrorBackground(notification)
        }
    }

    func handleErrorBackground(_ notification: Notification) {
        if let data: [AnyHashable: Any] = notification.userInfo {
            let nullableError: Error? = data["Error"] as? Error

            guard let error: Error = nullableError else {
                return
            }

            let pluginExceptionProto = PluginExceptionProto.with {
                $0.id = error.getPluginExceptionId()
                $0.code = error.getPluginExceptionCode()
                $0.message = error.getPluginExceptionMessage()
            }

            let nullableBytes = try? ResultDataSourcesProto.with {
                $0.pluginExceptionProto = pluginExceptionProto
            }.serializedData()

            guard let bytes: Data = nullableBytes else {
                return
            }

            eventSink?(bytes)
        }
    }

    func onCancel(withArguments arguments: Any?) -> FlutterError? {
        NotificationCenter.default.removeObserver(self)
        eventSink = nil
        return nil
    }

    static let EVENT_CHANNEL_NAME = "io.tryrook.errors.background"
}
