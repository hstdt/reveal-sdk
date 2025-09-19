// swift-tools-version:5.10
import PackageDescription

let package = Package(
    name: "RevealSDK",
    platforms: [
        .macOS(.v14), 
        .iOS(.v13), 
        .tvOS(.v13)
    ],
    products: [
        .library(name: "RevealSDK", targets: ["RevealSDKFramework"])
    ],
    targets: [
        .binaryTarget(
            name: "RevealSDKFramework",
            url: "https://download.revealapp.com/RevealServer-55.zip",
            checksum: "6e1aa7239afd045eda7f315eb0e57c1e23af7002cb88dc20940f2831ccf13c1d"
        )
    ]
)
