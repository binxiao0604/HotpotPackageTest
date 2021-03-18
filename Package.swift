// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "HotpotPackageTest",
    platforms: [
        .macOS("10.15"),
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "HotpotPackageTest",
            targets: ["HotpotPackageTest"]),
    ],
    dependencies: [
//        .package(url: "https://github.com/binxiao0604/HotpotPackage.git", .branch("master"))
        .package(name:"HopotPackage",url: "https://gitee.com/guaizaizaiguai/HotpotPackage.git", .branch("master"))
//        .package(path: "/Users/zaizai/HopotPackage")
    ],
    targets: [
        .target(
            name: "HotpotPackageTest",
            dependencies: ["HopotPackage"]
        ),
        
        .testTarget(
            name: "HotpotPackageTestTests",
            dependencies: ["HotpotPackageTest"]
        ),
    ]
)
