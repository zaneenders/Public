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
        //.package(name: "_WebsiteBuilder", path: "../_WebsiteBuilder")
        ///*
        .package(
            url: "https://github.com/zaneenders/_WebsiteBuilder.git",
            from: "0.1.1")
        //*/
    ],
    targets: [
        .target(
            name: "Public",
            dependencies: [
                .product(name: "_WebsiteBuilder", package: "_WebsiteBuilder")
            ])
    ]
)
