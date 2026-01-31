// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "SwiftBGFX",
    products: [
        .library(name: "SwiftBGFX", type: .static, targets: ["SwiftBGFX"])
    ],
    dependencies: [
        .package(url: "https://github.com/SwiftGFX/SwiftMath", from: "3.3.1"),
    ],
    targets: [
        .target(
            name: "SwiftBGFX",
            dependencies: [
                .product(name: "SwiftMath"),
                .target(name: "Cbgfx")
            ]),
        .target(name: "Cbgfx")
    ]
)
