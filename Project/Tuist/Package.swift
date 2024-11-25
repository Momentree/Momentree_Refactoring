// swift-tools-version: 5.9
@preconcurrency import PackageDescription

#if TUIST
@preconcurrency import ProjectDescription

let packageSettings = PackageSettings(
    productTypes: [
        "ComposableArchitecture": .framework,
        "TCACoordinator": .framework
    ]
)
#endif

let package = Package(
    name: "Momentree",
    dependencies: [
        .package(
            url: "https://github.com/pointfreeco/swift-composable-architecture.git",
            branch: "1.16.1"  // branch 사용 시
        ),
        .package(
            url: "https://github.com/johnpatrickmorgan/TCACoordinators.git",
            branch: "0.10.1"
        )
    ]
)
