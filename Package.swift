// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "user-objects",
    platforms: [
       .macOS(.v12)
    ],
    products: [
        .library(name: "UserObjects", targets: ["UserObjects"]),
    ],
    dependencies: [
       .package(url: "https://github.com/feathercms/feather-objects", .branch("main")),
    ],
    targets: [
        .target(name: "UserObjects", dependencies: [
            .product(name: "FeatherObjects", package: "feather-objects"),
        ]),
        .testTarget(name: "UserObjectsTests", dependencies: [
            .target(name: "UserObjects")
        ]),
    ]
)
