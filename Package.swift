// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "IRProfile",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v18)
    ],
    products: [
        .library(
            name: "IRProfile",
            targets: ["IRProfile"]),
    ],
    dependencies: [
        
    ],
    targets: [
        .target(
            name: "IRProfile",
            dependencies: [
                
            ],
            path: "IRProfile"
        ),

    ]
)
