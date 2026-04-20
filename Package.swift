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
            url: "https://github.com/tapayadot/accept-ios/releases/download/1.1.2/AcceptSDK.xcframework.zip",
            checksum: "e547d97722c9dbe1cc99075f8a28baa393839d77a403974b91e604cb6e2d3e72"
        )
    ]
)
