// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

//let package = Package(
//    name: "DeepSwiftSeek",
//    products: [
//        // Products define the executables and libraries a package produces, making them visible to other packages.
//        .library(
//            name: "DeepSwiftSeek",
//            targets: ["DeepSwiftSeek"]),
//    ],
//    targets: [
//        // Targets are the basic building blocks of a package, defining a module or a test suite.
//        // Targets can depend on other targets in this package and products from dependencies.
//        .target(
//            name: "DeepSwiftSeek"),
//        .testTarget(
//            name: "DeepSwiftSeekTests",
//            dependencies: ["DeepSwiftSeek"]
//        ),
//    ]
//)

// swift-tools-version: 5.5
import PackageDescription

let package = Package(
    name: "DeepSwiftSeek",
    platforms: [
        .macOS(.v12) // ✅ Set macOS 12 or later
    ],
    dependencies: [
        .package(url: "https://github.com/awaismubeen/DeepSwiftSeek", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "DeepSwiftSeek",
            dependencies: ["DeepSwiftSeek"]
        )
    ]
)
