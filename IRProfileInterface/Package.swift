// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "IRProfileInterface",
    defaultLocalization: "en",
    platforms: [.iOS(.v18)],
    products: [
        .library(
            name: "IRProfileInterface",
            targets: ["IRProfileInterface"]),
    ],
    dependencies: [
        
    ],
    targets: [
        .target(
            name: "IRProfileInterface",
            dependencies: [
                
            ]
        ),
    ]
)
