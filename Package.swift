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
            url: "https://github.com/tapayadot/accept-ios/releases/download/1.1.0/AcceptSDK.xcframework.zip",
            checksum: "48076b703099e791516f5561cd881b2b3d923efd38e002875e6b941e875ab32c"
        )
    ]
)
