// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "Public",
    products: [
        .library(
            name: "Public",
            targets: ["Public"])
    ],
    dependencies: [
        .package(name: "_WebsiteBuilder", path: "../_WebsiteBuilder")
    ],
    targets: [
        .target(
            name: "Public",
            dependencies: ["_WebsiteBuilder"])
    ]
)
