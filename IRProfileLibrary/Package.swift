// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "IRProfileLibrary",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v18)
    ],
    products: [
        .library(
            name: "IRProfileLibrary",
            targets: ["IRProfileLibrary"]),
    ],
    dependencies: [
        .package(name: "IRProfileInterface", path: "../IRProfileInterface")
    ],
    targets: [
        .target(
            name: "IRProfileLibrary",
            dependencies: [
                "IRProfileInterface"
            ]
        ),

    ]
)
