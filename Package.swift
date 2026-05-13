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
            url: "https://github.com/tapayadot/accept-ios/releases/download/1.2.1/AcceptSDK.xcframework.zip",
            checksum: "2887fac3b887efe5c23fc38cd1f2daf50c61a5322d5657cc0043391b1a7adab0"
        )
    ]
)
