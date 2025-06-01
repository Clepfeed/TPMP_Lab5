// swift-tools-version:5.8
import PackageDescription

let package = Package(
    name: "DictionaryConsoleApp",
    products: [
        .executable(name: "DictionaryConsoleApp", targets: ["DictionaryConsoleApp"]),
    ],
    targets: [
        .executableTarget(
            name: "DictionaryConsoleApp",
            dependencies: ["DictionaryLib"]
        ),
        .target(
            name: "DictionaryLib"
        )
    ]
)

