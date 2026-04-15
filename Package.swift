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
            url: "https://github.com/tapayadot/accept-ios/releases/download/1.0.0/AcceptSDK.xcframework.zip",
            checksum: "7953883c48f5d4cfd4ad3a7de3f972fcd2dabce59f28196f8a13affa13a149db"
        )
    ]
)
