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
            url: "https://download.revealapp.com/RevealServer-52.zip",
            checksum: "7b8610ffd55e5b861a2a1495b5e7d3fbef6b9a9c9f46824decf7db93854dbce9"
        )
    ]
)
