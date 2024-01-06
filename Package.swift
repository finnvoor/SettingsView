// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "SettingsView",
    platforms: [.iOS(.v17)],
    products: [
        .library(name: "SettingsView", targets: ["SettingsView"])
    ],
    dependencies: [
        .package(url: "https://github.com/finnvoor/UpdateAvailableButton.git", branch: "main"),
        .package(url: "git@github.com:gonzalezreal/swift-markdown-ui.git", from: "2.0.0")
    ],
    targets: [
        .target(
            name: "SettingsView",
            dependencies: [
                .product(name: "UpdateAvailableButton", package: "UpdateAvailableButton"),
                .product(name: "MarkdownUI", package: "swift-markdown-ui")
            ],
            resources: [.process("Resources/")]
        )
    ]
)
