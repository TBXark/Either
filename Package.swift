// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "Either",
    products: [
        .executable(name: "Generate", targets: ["Generate"]),
        .library(name: "Either", targets: ["Either"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(name: "Generate", dependencies: []),
        .target(name: "Either", dependencies: []),
        .testTarget( name: "EitherTests", dependencies: ["Either"]),
    ]
)
