// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "Compute",
    platforms: [
        .iOS(.v13),
        .macOS(.v11),
        .tvOS(.v13),
        .watchOS(.v6)
    ],
    products: [
        .library(name: "Compute", targets: ["Compute"])
    ],
    dependencies: [
        .package(url: "https://github.com/vmanot/Swallow.git", .branch("master"))
    ],
    targets: [
        .target(
            name: "Compute",
            dependencies: [
                "Swallow"
            ],
            path: "Sources"
        )
    ]
)
