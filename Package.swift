import PackageDescription

let package = Package(
    name: "vapor-sample",
    dependencies: [
        .Package(url: "https://github.com/vapor/vapor", majorVersion: 1),
    ]
)
