// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Leetcode",
    products: [
        .library(name: "Leetcode", targets: ["Leetcode"]),
    ],
    dependencies: [
        .package(url: "https://github.com/mikhaildudarev/algo.git", branch: "master")
    ],
    targets: [
        .target(
            name: "Leetcode",
            dependencies: [
                .product(name: "Algo", package: "algo")
            ]
        ),
        .testTarget(
            name: "LeetcodeTests",
            dependencies: [
                "Leetcode"
            ]
        ),
    ]
)
