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
            url: "https://download.revealapp.com/RevealServer-53.zip",
            checksum: "89600f91ed4d6b430b6cd40114c5fd59594610c38cdd147c7880018ee5a8dcfc"
        )
    ]
)
