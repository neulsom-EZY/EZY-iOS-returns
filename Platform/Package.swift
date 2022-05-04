// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Platform",
    platforms: [.iOS(.v12)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Base",
            targets: ["Base"]),
        .library(
            name: "UIUtil",
            targets: ["UIUtil"]),
        .library(
            name: "EZYUI",
            targets: ["EZYUI"]),
        .library(
            name: "SnapKitExt",
            targets: ["SnapKitExt"]),
//        .library(
//            name: "RxUtil",
//            targets: ["RxUtil"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift", .exactItem("6.5.0")),
        .package(url: "https://github.com/AliSoftware/Reusable", .exactItem("4.1.2")),
        .package(url: "https://github.com/SnapKit/SnapKit", .exactItem("5.6.0"))
//        .package(url: "https://github.com/RxSwiftCommunity/RxFlow", .exactItem("2.13.0"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Base",
            dependencies: [
                "RxSwift"
            ]),
        .target(
            name: "UIUtil",
            dependencies: []),
        .target(
            name: "EZYUI",
            dependencies: [
                "UIUtil",
            ]),
        .target(
            name: "SnapKitExt",
            dependencies: [
                "SnapKit",
            ]),
//        .target(
//            name: "RxUtil",
//            dependencies: [
//                "RxSwift",
//            ]),
    ]
)
