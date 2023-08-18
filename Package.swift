// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TamaraSDK",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "TamaraSDK",
            targets: ["TamaraSDK"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Moya/Moya.git", from: "15.0.3")
    ],
    targets: [
        .target(
            name: "TamaraSDK",
            dependencies: [
                .product(
                    name: "Moya",
                    package: "Moya")],
            path: "TamaraSDK/TamaraSDK"
        ),
    ]
)
