// swift-tools-version: 5.9

import PackageDescription

// TODO move blog post into here

let package = Package(
    name: "Public",
    products: [
        .library(
            name: "Public",
            targets: ["Public", "Tags"])
    ],
    dependencies: [
        .package(name: "_WebsiteBuilder", path: "../_WebsiteBuilder"),
        .package(name: "ScribeSystem", path: "../ScribeSystem"),
        /*
        .package(
            url: "https://github.com/zaneenders/_WebsiteBuilder.git",
            from: "0.1.1"),
        .package(
            url: "git@github.com:zaneenders/ScribeSystem.git",
            from: "0.0.2")
        */
    ],
    targets: [
        .target(
            name: "Public",
            dependencies: [
                .product(name: "_WebsiteBuilder", package: "_WebsiteBuilder"),
                .product(name: "ScribeSystem", package: "ScribeSystem"),
            ]),
        // Move this to _WebsiteBuilder?
        .target(
            name: "Tags",
            dependencies: [
                .product(name: "_WebsiteBuilder", package: "_WebsiteBuilder")
            ]),
        //.target(name: "ZaneEnders")
    ]
)
