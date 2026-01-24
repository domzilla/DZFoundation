// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "DZFoundation",
    platforms: [
        .macOS(.v14),
        .iOS(.v17),
    ],
    products: [
        .library(
            name: "DZFoundation",
            type: .dynamic,
            targets: ["DZFoundation"]
        ),
    ],
    targets: [
        .target(
            name: "DZFoundation"
        ),
        .testTarget(
            name: "DZFoundationTests",
            dependencies: ["DZFoundation"]
        ),
    ]
)
