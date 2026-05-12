// swift-tools-version: 6.2
import PackageDescription

let package = Package(
    name: "AcceptSDK",
    platforms: [
        .iOS(.v26)
    ],
    products: [
        .library(
            name: "AcceptSDK",
            targets: ["AcceptSDK"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "AcceptSDK",
            url: "https://github.com/tapayadot/accept-ios/releases/download/1.2.0/AcceptSDK.xcframework.zip",
            checksum: "6879d891b74afcf9a683eff2f66138ad9b5f035887c9fe52d5bfa5f5cf15a14d"
        )
    ]
)
