// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ObjectsFactory",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "ObjectsFactory", targets: ["ObjectsFactory"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "ObjectsFactory",
            dependencies: ["ObjectsFactoryObjC"]
        ),
        .target(
            name: "ObjectsFactoryObjC",
            dependencies: []
        ),
        .testTarget(
            name: "ObjectsFactoryTests",
            dependencies: ["ObjectsFactory"]
        ),
    ]
)
