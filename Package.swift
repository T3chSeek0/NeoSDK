// swift-tools-version: 5.9
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
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.8.1")),
    ],
    targets: [
        .binaryTarget(
                    name: "NeoNetworking",
                    url: "https://github.com/T3chSeek0/NeoSDK/blob/main/NeoNetworking.xcframework.zip",
                    checksum: "09aa253669b011c40d341b57fe5e61359eb3ab95fcb77b608120f01cbe502c1e"
                ),
        .binaryTarget(
                    name: "NeoLifestyle",
                    url: "https://github.com/T3chSeek0/NeoSDK/blob/main/NeoLifestyle.xcframework.zip",
                    checksum: "ee626e16a43b327c1499b3711d4e3469e2935c9b8eb99afbdcfdd6325007d0f0"
                ),
    ]
)

