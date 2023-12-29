// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "SettingsView",
    platforms: [.iOS(.v17)],
    products: [
        .library(name: "SettingsView", targets: ["SettingsView"])
    ],
    dependencies: [
        .package(url: "https://github.com/finnvoor/UpdateAvailableButton.git", branch: "main")
    ],
    targets: [
        .target(
            name: "SettingsView",
            dependencies: [.product(name: "UpdateAvailableButton", package: "UpdateAvailableButton")],
            resources: [.process("Resources/")]
        )
    ]
)
