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
                    url: "https://github.com/T3chSeek0/NeoSDK/blob/main/Sources/NeoNetworking.xcframework.zip",
                    checksum: "e6033781a5a8f36c4bbcb51b37ec06bf3809f94923b93c7144d084a2dd204809"
                ),
        .binaryTarget(
                    name: "NeoLifestyle",
                    url: "https://github.com/T3chSeek0/NeoSDK/blob/main/Sources/NeoLifestyle.xcframework.zip",
                    checksum: "4957298817f513264963c0084fce2c7c339982e7dc5a33a204790deaf6c3dd6b"
                ),
    ]
)

