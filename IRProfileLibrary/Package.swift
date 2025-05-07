// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "IRProfileLibrary",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v18),
        .macOS(.v15),
        .tvOS(.v18),
        .watchOS(.v11),
        .visionOS(.v2)
    ],
    products: [
        .library(
            name: "IRProfileLibrary",
            targets: ["IRProfileLibrary"]),
    ],
    dependencies: [
        .package(name: "IRCore", path: "../../../Packages/IRCore"),
        
        .package(name: "IRProfileInterface", path: "../IRProfileInterface"),
        .package(name: "IRSettingsInterface", path: "../../IRSettings/IRSettingsInterface"),
        
        
        .package(name: "IRSettings", path: "../../IRSettings"),
    ],
    targets: [
        .target(
            name: "IRProfileLibrary",
            dependencies: [
                "IRCore",
                
                "IRProfileInterface",
                "IRSettingsInterface",
                
                "IRSettings",
            ]
        ),
    ]
)
