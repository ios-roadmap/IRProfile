// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "IRProfile",
    platforms: [.iOS(.v18)],
    products: [
        .library(
            name: "IRProfile",
            targets: ["IRProfile"]
        ),
    ],
    targets: [
        .target(
            name: "IRProfile",
            dependencies: []
        )
    ]
)

