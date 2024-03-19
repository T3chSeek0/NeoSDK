// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NeoSDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(name: "NeoNetworking", targets: ["NeoNetworking"]),
        .library(name: "NeoLifestyle", targets: ["NeoLifestyle"]),
    ],
    targets: [
        .binaryTarget(
            name: "NeoNetworking",
            path: "./Sources/NeoNetworking.xcframework"
        ),
        .binaryTarget(
            name: "NeoLifestyle",
            path: "./Sources/NeoLifestyle.xcframework"
        ),
    ]
)

