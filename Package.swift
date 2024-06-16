// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "Public",
    platforms: [
        .macOS("14.0"), .iOS("16.0"), .watchOS("9.0"), .tvOS("16.0"),
        .visionOS("1.0"),
    ],
    products: [
        .library(name: "Public", targets: ["Public"])
    ],
    dependencies: [
        // .package(name: "Scribe", path: "../Scribe")
        .package(
            url: "https://github.com/zaneenders/scribe.git",
            branch: "main")
    ],
    targets: [
        .target(
            name: "Public",
            dependencies: [
                .product(name: "Scribe", package: "Scribe")
            ]),
        .executableTarget(
            name: "ZaneEnders",
            dependencies: [
                "Public",
                .product(name: "Scribe", package: "Scribe"),
            ],
            swiftSettings: [
                .enableUpcomingFeature("BareSlashRegexLiterals"),
                .enableUpcomingFeature("ConciseMagicFile"),
                .enableUpcomingFeature("ExistentialAny"),
                .enableUpcomingFeature("ForwardTrailingClosures"),
                .enableUpcomingFeature("ImplicitOpenExistentials"),
                .enableUpcomingFeature("StrictConcurrency"),
                .unsafeFlags([
                    "-warn-concurrency", "-enable-actor-data-race-checks",
                ]),
            ]),
    ]
)
