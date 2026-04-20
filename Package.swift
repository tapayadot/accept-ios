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
            url: "https://github.com/tapayadot/accept-ios/releases/download/1.1.1/AcceptSDK.xcframework.zip",
            checksum: "63488d14f3fef8be228fdba3bb44a3c044bef2752105f3c651449d85d901c6a6"
        )
    ]
)
