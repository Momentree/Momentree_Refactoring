// swift-tools-version: 5.9
@preconcurrency import PackageDescription

#if TUIST
@preconcurrency import ProjectDescription

let packageSettings = PackageSettings(
  productTypes: [:]
)
#endif

let package = Package(
  name: "Momentree",
  dependencies: [
//    .package(
//        url: "https://github.com/pointfreeco/swift-composable-architecture.git",
//        branch: "1.16.1"
//    ),
//    .package(
//        url: "https://github.com/johnpatrickmorgan/TCACoordinators.git",
//        branch: "0.10.1"
//    ),
    .package(url: "https://github.com/pointfreeco/swift-composable-architecture.git", exact: "1.8.0"),
    .package(url: "https://github.com/johnpatrickmorgan/TCACoordinators.git", exact: "0.10.1")
  ]
)

// TCACoordinators에서는 swift-composable-architecture을 1.8.0을 사용
// 또한 현재
