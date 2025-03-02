// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "journaltroveApp",
    platforms: [
        .iOS(.v15),
        .macOS(.v12)
    ],
    products: [
        .library(
            name: "Core",
            targets: ["Core"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Core",
            dependencies: []),
        .testTarget(
            name: "CoreTests",
            dependencies: ["Core"]),
    ]
) 