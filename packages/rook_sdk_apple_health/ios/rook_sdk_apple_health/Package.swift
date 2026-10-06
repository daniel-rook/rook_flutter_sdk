// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "rook_sdk_apple_health",
    platforms: [
        .iOS("13.0")
    ],
    products: [
        .library(name: "rook-sdk-apple-health", targets: ["rook_sdk_apple_health"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework"),
        .package(url: "https://github.com/RookeriesDevelopment/rook-ios-sdk", exact: "4.2.0"),
        .package(url: "https://github.com/apple/swift-protobuf", exact: "1.28.2")
    ],
    targets: [
        .target(
            name: "rook_sdk_apple_health",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework"),
                .product(name: "RookSDK", package: "rook-ios-sdk"),
                .product(name: "SwiftProtobuf", package: "swift-protobuf")
            ]
        )
    ]
)
