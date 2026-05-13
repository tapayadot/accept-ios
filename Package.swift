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
            url: "https://github.com/tapayadot/accept-ios/releases/download/1.2.2/AcceptSDK.xcframework.zip",
            checksum: "cb16241363e305a70c666c2cd9bbd7fd933fdc0c1f22c2cd19bf3f8d054a0c08"
        )
    ]
)
